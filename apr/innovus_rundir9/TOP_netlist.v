* SPICE NETLIST
***************************************

.SUBCKT efuse in out
.ENDS
***************************************
.SUBCKT malformed_opnpcres_rf POS NEG
.ENDS
***************************************
.SUBCKT malformed_reopnpcres_rf POS NEG
.ENDS
***************************************
.SUBCKT malformed_reopnarnpcres_rf POS NEG
.ENDS
***************************************
.SUBCKT malformed_npcres_rf POS NEG
.ENDS
***************************************
.SUBCKT memristor nt nb
.ENDS
***************************************
.SUBCKT tdndsx sx nd
.ENDS
***************************************
.SUBCKT tdpdnw pd nw
.ENDS
***************************************
.SUBCKT tdndsx_nolvs sx nd
.ENDS
***************************************
.SUBCKT tdpdnw_nolvs pd nw
.ENDS
***************************************
.SUBCKT egtdndsx sx nd
.ENDS
***************************************
.SUBCKT egtdpdnw pd nw
.ENDS
***************************************
.SUBCKT egtdndsx_nolvs sx nd
.ENDS
***************************************
.SUBCKT egtdpdnw_nolvs pd nw
.ENDS
***************************************
.SUBCKT zgtdndsx sx nd
.ENDS
***************************************
.SUBCKT zgtdpdnw pd nw
.ENDS
***************************************
.SUBCKT zgtdndsx_nolvs sx nd
.ENDS
***************************************
.SUBCKT zgtdpdnw_nolvs pd nw
.ENDS
***************************************
.SUBCKT esdscr pd nb pb nd
.ENDS
***************************************
.SUBCKT esdrcscr pd nb pb nd
.ENDS
***************************************
.SUBCKT esdlpnp c e
.ENDS
***************************************
.SUBCKT esdlnpn c b e tw
.ENDS
***************************************
.SUBCKT esddiodesoi pd nd sx
.ENDS
***************************************
.SUBCKT schky anode cathode
.ENDS
***************************************
.SUBCKT schky_mmw anode cathode sx
.ENDS
***************************************
.SUBCKT ncap g sd sx
.ENDS
***************************************
.SUBCKT ncap_rf GATE NW BULK
.ENDS
***************************************
.SUBCKT ncapsoi_mmw g sd nw ps
.ENDS
***************************************
.SUBCKT zgncap g sd sx
.ENDS
***************************************
.SUBCKT zgfncap g sd sx
.ENDS
***************************************
.SUBCKT zgfncapinpw g sd pw
.ENDS
***************************************
.SUBCKT zgfncapbf g sd sx
.ENDS
***************************************
.SUBCKT egncap g sd sx
.ENDS
***************************************
.SUBCKT egncap_rf GATE NW BULK
.ENDS
***************************************
.SUBCKT pcap g sd sx
.ENDS
***************************************
.SUBCKT pcap_rf GATE PW DNW BULK
.ENDS
***************************************
.SUBCKT egpcap g sd sx
.ENDS
***************************************
.SUBCKT egpcap_rf GATE PW DNW BULK
.ENDS
***************************************
.SUBCKT apmom p n
.ENDS
***************************************
.SUBCKT apmom1v8 p n
.ENDS
***************************************
.SUBCKT apmom3v3 p n
.ENDS
***************************************
.SUBCKT apmom4v p n
.ENDS
***************************************
.SUBCKT apmom5v p n
.ENDS
***************************************
.SUBCKT mom7v p n
.ENDS
***************************************
.SUBCKT apmom_rf p n b
.ENDS
***************************************
.SUBCKT apmom1v8_rf p n b
.ENDS
***************************************
.SUBCKT apmom4v_rf p n b
.ENDS
***************************************
.SUBCKT apmom3v3_rf p n b
.ENDS
***************************************
.SUBCKT apmom5v_rf p n b
.ENDS
***************************************
.SUBCKT mom7v_rf p n b
.ENDS
***************************************
.SUBCKT apmom_mmw p n b
.ENDS
***************************************
.SUBCKT apmom1v8_mmw p n b
.ENDS
***************************************
.SUBCKT apmom4v_mmw p n b
.ENDS
***************************************
.SUBCKT apmom3v3_mmw p n b
.ENDS
***************************************
.SUBCKT apmom5v_mmw p n b
.ENDS
***************************************
.SUBCKT mom7v_mmw p n b
.ENDS
***************************************
.SUBCKT invalid_mom7v_rf invalid_pin
.ENDS
***************************************
.SUBCKT invalid_mom7v_mmw invalid_pin
.ENDS
***************************************
.SUBCKT esdnsh d g s b
.ENDS
***************************************
.SUBCKT esdnsh_stk d g1 g2 s b
.ENDS
***************************************
.SUBCKT nfet_rf d g s b
.ENDS
***************************************
.SUBCKT hvtnfet_rf d g s b
.ENDS
***************************************
.SUBCKT lvtnfet_rf d g s b
.ENDS
***************************************
.SUBCKT slvtnfet_rf d g s b
.ENDS
***************************************
.SUBCKT eglvtnfet_rf d g s b
.ENDS
***************************************
.SUBCKT egslvtnfet_rf d g s b
.ENDS
***************************************
.SUBCKT eguslvtnfet_rf d g s b
.ENDS
***************************************
.SUBCKT egulvtnfet_rf d g s b
.ENDS
***************************************
.SUBCKT egvslvtnfet_rf d g s b
.ENDS
***************************************
.SUBCKT egvlvtnfet_rf d g s b
.ENDS
***************************************
.SUBCKT pfet_rf d g s b
.ENDS
***************************************
.SUBCKT hvtpfet_rf d g s b
.ENDS
***************************************
.SUBCKT lvtpfet_rf d g s b
.ENDS
***************************************
.SUBCKT slvtpfet_rf d g s b
.ENDS
***************************************
.SUBCKT eglvtpfet_rf d g s b
.ENDS
***************************************
.SUBCKT egslvtpfet_rf d g s b
.ENDS
***************************************
.SUBCKT eguslvtpfet_rf d g s b
.ENDS
***************************************
.SUBCKT egulvtpfet_rf d g s b
.ENDS
***************************************
.SUBCKT egvslvtpfet_rf d g s b
.ENDS
***************************************
.SUBCKT egvlvtpfet_rf d g s b
.ENDS
***************************************
.SUBCKT elvtxpfet_rf d g s b
.ENDS
***************************************
.SUBCKT lvtnfet_rf_5t d g s b x
.ENDS
***************************************
.SUBCKT slvtnfet_rf_5t d g s b x
.ENDS
***************************************
.SUBCKT egslvtnfet_rf_5t d g s b x
.ENDS
***************************************
.SUBCKT eguslvtnfet_rf_5t d g s b x
.ENDS
***************************************
.SUBCKT egvslvtnfet_rf_5t d g s b x
.ENDS
***************************************
.SUBCKT pfet_rf_5t d g s b x
.ENDS
***************************************
.SUBCKT hvtpfet_rf_5t d g s b x
.ENDS
***************************************
.SUBCKT eglvtpfet_rf_5t d g s b x
.ENDS
***************************************
.SUBCKT egulvtpfet_rf_5t d g s b x
.ENDS
***************************************
.SUBCKT egvlvtpfet_rf_5t d g s b x
.ENDS
***************************************
.SUBCKT hvtnfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT eglvtnfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT egulvtnfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT egvlvtnfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT nfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT lvtpfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT slvtpfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT elvtxpfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT egslvtpfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT eguslvtpfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT egvslvtpfet_rf_6t d g s b n x
.ENDS
***************************************
.SUBCKT bfmoatnfet_mmw_6t d g s b x pw
.ENDS
***************************************
.SUBCKT slvtnfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT lvtnfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT egslvtnfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT egvslvtnfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT eguslvtnfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT pfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT hvtpfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT eglvtpfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT egvlvtpfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT egulvtpfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT slvtpfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT lvtpfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT egslvtpfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT egvslvtpfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT eguslvtpfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT elvtxpfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT nfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT hvtnfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT eglvtnfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT egvlvtnfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT egulvtnfet_mmw_6t d g s b n x
.ENDS
***************************************
.SUBCKT slvtnfet_bbp_5t d g s b x
.ENDS
***************************************
.SUBCKT enbfmoatnfet_mmw_6t d g s b x nw
.ENDS
***************************************
.SUBCKT enegbfmoatnfet_mmw_6t d g s b x nw
.ENDS
***************************************
.SUBCKT enegubfmoatnfet_mmw_6t d g s b x nw
.ENDS
***************************************
.SUBCKT enegvbfmoatnfet_mmw_6t d g s b x nw
.ENDS
***************************************
.SUBCKT slvtnfet_mmw_mrep_5t d g s b x
.ENDS
***************************************
.SUBCKT edslvtnfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT edpwslvtnfet_mmw_5t d g s b x
.ENDS
***************************************
.SUBCKT slvtnfet_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT egslvtnfet_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT egvslvtnfet_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT eguslvtnfet_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT slvtnfet_rf_5t_tc d g s b x t dt q
.ENDS
***************************************
.SUBCKT egslvtnfet_rf_5t_tc d g s b x t dt q
.ENDS
***************************************
.SUBCKT egvslvtnfet_rf_5t_tc d g s b x t dt q
.ENDS
***************************************
.SUBCKT eguslvtnfet_rf_5t_tc d g s b x t dt q
.ENDS
***************************************
.SUBCKT slvtnfet_mmw_5t_tc d g s b x t dt q
.ENDS
***************************************
.SUBCKT egslvtnfet_mmw_5t_tc d g s b x t dt q
.ENDS
***************************************
.SUBCKT egvslvtnfet_mmw_5t_tc d g s b x t dt q
.ENDS
***************************************
.SUBCKT eguslvtnfet_mmw_5t_tc d g s b x t dt q
.ENDS
***************************************
.SUBCKT enbfmoatnfet_mmw_6t_tc d g s b x nw t dt q
.ENDS
***************************************
.SUBCKT enegbfmoatnfet_mmw_6t_tc d g s b x nw t dt q
.ENDS
***************************************
.SUBCKT enegubfmoatnfet_mmw_6t_tc d g s b x nw t dt q
.ENDS
***************************************
.SUBCKT enegvbfmoatnfet_mmw_6t_tc d g s b x nw t dt q
.ENDS
***************************************
.SUBCKT slvtpfet_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT egslvtpfet_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT egvslvtpfet_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT eguslvtpfet_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT slvtpfet_rf_6t_tc d g s b n x t dt q
.ENDS
***************************************
.SUBCKT egslvtpfet_rf_6t_tc d g s b n x t dt q
.ENDS
***************************************
.SUBCKT egvslvtpfet_rf_6t_tc d g s b n x t dt q
.ENDS
***************************************
.SUBCKT eguslvtpfet_rf_6t_tc d g s b n x t dt q
.ENDS
***************************************
.SUBCKT slvtpfet_mmw_6t_tc d g s b n x t dt q
.ENDS
***************************************
.SUBCKT egslvtpfet_mmw_6t_tc d g s b n x t dt q
.ENDS
***************************************
.SUBCKT egvslvtpfet_mmw_6t_tc d g s b n x t dt q
.ENDS
***************************************
.SUBCKT eguslvtpfet_mmw_6t_tc d g s b n x t dt q
.ENDS
***************************************
.SUBCKT edslvtnfet_mmw_5t_tc d g s b x t dt q
.ENDS
***************************************
.SUBCKT edpwslvtnfet_mmw_5t_tc d g s b x t dt q
.ENDS
***************************************
.SUBCKT zgxslvtnfet_fgbg d g s b w
.ENDS
***************************************
.SUBCKT zgxslvtpfet_fgbg d g s b w
.ENDS
***************************************
.SUBCKT ldnfet3p3_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT ldnfet5p0_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT ldnfet6p5_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT btbldnfet3p3_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT btbldnfet5p0_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT btbldnfet6p5_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT ldpfet3p3_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT ldpfet5p0_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT ldpfet6p5_rf_tc d g s b t dt q
.ENDS
***************************************
.SUBCKT malformed_composite_dpnp_6t_device invalidpin_1 invalidpin_2
.ENDS
***************************************
.SUBCKT dpnp_6t d g s b tw sx
.ENDS
***************************************
.SUBCKT cpwg p1 p2 shield
.ENDS
***************************************
.SUBCKT cpw p1 p2 shield
.ENDS
***************************************
.SUBCKT msl p1 p2 shield
.ENDS
***************************************
.SUBCKT coupledcpwg p1 p2 p3 p4 shield
.ENDS
***************************************
.SUBCKT coupledcpw p1 p2 p3 p4 shield
.ENDS
***************************************
.SUBCKT coupledmsl p1 p2 p3 p4 shield
.ENDS
***************************************
.SUBCKT cpwg_noshield_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT cpwg_45L_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT cpwg_90L_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT cpwg_45bend_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT cpwg_90bend_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT cpwg_tee_mmw p1 p2 p3 shield
.ENDS
***************************************
.SUBCKT scpwg_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT cpw_45L_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT cpw_90L_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT cpw_45bend_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT cpw_90bend_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT cpw_tee_mmw p1 p2 p3 shield
.ENDS
***************************************
.SUBCKT coupledcpwg_noshield_mmw p1 p2 p3 p4 shield
.ENDS
***************************************
.SUBCKT coupledscpwg_mmw p1 p2 p3 p4 shield
.ENDS
***************************************
.SUBCKT cpw_Y_mmw p1 p2 p3 shield
.ENDS
***************************************
.SUBCKT stub_open_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT stub_short_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT msl_step_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT stub_radial_mmw p1 p2 shield
.ENDS
***************************************
.SUBCKT symindp p1 p2 ct gnd
.ENDS
***************************************
.SUBCKT indp p1 p2 gnd
.ENDS
***************************************
.SUBCKT symct_mmw p1 p2 ct gnd
.ENDS
***************************************
.SUBCKT symindp_mmw p1 p2 gnd
.ENDS
***************************************
.SUBCKT indp_mmw p1 p2 gnd
.ENDS
***************************************
.SUBCKT tcoil3_mmw c4 endtap ct ref
.ENDS
***************************************
.SUBCKT pkind_mmw out in ref
.ENDS
***************************************
.SUBCKT int_xformer p1 p2 s1 s2 sub
.ENDS
***************************************
.SUBCKT int_balun p1 p2 s1 s2 ct sub
.ENDS
***************************************
.SUBCKT int_xformer_mmw p1 p2 s1 s2 sub
.ENDS
***************************************
.SUBCKT int_balun_mmw p1 p2 s1 s2 ct sub
.ENDS
***************************************
.SUBCKT stk_xformer p1 p2 s1 s2 sub
.ENDS
***************************************
.SUBCKT stk_balun p1 p2 s1 s2 ct sub
.ENDS
***************************************
.SUBCKT stk_xformer_mmw p1 p2 s1 s2 sub
.ENDS
***************************************
.SUBCKT stk_balun_mmw p1 p2 s1 s2 ct sub
.ENDS
***************************************
.SUBCKT bxnfet d g s b
.ENDS
***************************************
.SUBCKT bxpfet d g s b
.ENDS
***************************************
.SUBCKT UDB116SVT24_CAPR9_1 VSS VDD VNW_P 6
** N=14 EP=4 IP=0 FDC=3
X0 VSS VDD tdndsx area=2.5296e-14 perim=6.56e-07 m=1 $X=7400 $Y=2740 $D=38
M1 VSS 7 VSS 6 nfet_auxpc2 $X=1020 $Y=500 $D=537
M2 VDD 8 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3200 $D=643
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL2 VSS VDD VNW_P
** N=10 EP=3 IP=0 FDC=2
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 8 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VDD 9 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3500 $D=643
.ENDS
***************************************
.SUBCKT UDB116SVT24_CAPB_1
** N=7 EP=0 IP=0 FDC=0
*.CALIBRE ISOLATED NETS: VDD VNW_P
.ENDS
***************************************
.SUBCKT ICV_1
** N=6 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT ICV_2
** N=6 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT ICV_3
** N=6 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT UDB116SVT24_TAPSS VSS
** N=16 EP=1 IP=0 FDC=2
*.CALIBRE ISOLATED NETS: VDD
M0 VSS 6 VSS VSS nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VSS 12 VSS VSS nfet_auxpc2 $X=9140 $Y=500 $D=537
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL1
** N=8 EP=0 IP=0 FDC=0
*.CALIBRE ISOLATED NETS: VSS VDD VPW_N VNW_P
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL3 VSS VDD VNW_P
** N=12 EP=3 IP=0 FDC=4
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 8 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VSS 10 VSS VNW_P nfet_auxpc2 $X=2180 $Y=500 $D=537
M2 VDD 9 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3500 $D=643
M3 VDD 11 VDD VNW_P pfet_auxpc2 $X=2180 $Y=3500 $D=643
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL12 VSS VDD VNW_P
** N=30 EP=3 IP=0 FDC=22
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 8 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VSS 10 VSS VNW_P nfet_auxpc2 $X=2180 $Y=500 $D=537
M2 VSS 12 VSS VNW_P nfet_auxpc2 $X=3340 $Y=500 $D=537
M3 VSS 14 VSS VNW_P nfet_auxpc2 $X=4500 $Y=500 $D=537
M4 VSS 16 VSS VNW_P nfet_auxpc2 $X=5660 $Y=500 $D=537
M5 VSS 18 VSS VNW_P nfet_auxpc2 $X=6820 $Y=500 $D=537
M6 VSS 20 VSS VNW_P nfet_auxpc2 $X=7980 $Y=500 $D=537
M7 VSS 22 VSS VNW_P nfet_auxpc2 $X=9140 $Y=500 $D=537
M8 VSS 24 VSS VNW_P nfet_auxpc2 $X=10300 $Y=500 $D=537
M9 VSS 26 VSS VNW_P nfet_auxpc2 $X=11460 $Y=500 $D=537
M10 VSS 28 VSS VNW_P nfet_auxpc2 $X=12620 $Y=500 $D=537
M11 VDD 11 VDD VNW_P pfet_auxpc2 $X=2180 $Y=3750 $D=643
M12 VDD 13 VDD VNW_P pfet_auxpc2 $X=3340 $Y=3750 $D=643
M13 VDD 15 VDD VNW_P pfet_auxpc2 $X=4500 $Y=3750 $D=643
M14 VDD 17 VDD VNW_P pfet_auxpc2 $X=5660 $Y=3750 $D=643
M15 VDD 19 VDD VNW_P pfet_auxpc2 $X=6820 $Y=3750 $D=643
M16 VDD 21 VDD VNW_P pfet_auxpc2 $X=7980 $Y=3750 $D=643
M17 VDD 23 VDD VNW_P pfet_auxpc2 $X=9140 $Y=3750 $D=643
M18 VDD 25 VDD VNW_P pfet_auxpc2 $X=10300 $Y=3750 $D=643
M19 VDD 27 VDD VNW_P pfet_auxpc2 $X=11460 $Y=3750 $D=643
M20 VDD 9 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3200 $D=644
M21 VDD 29 VDD VNW_P pfet_auxpc2 $X=12620 $Y=3750 $D=644
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL6 VSS VDD VNW_P
** N=18 EP=3 IP=0 FDC=10
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 8 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VSS 10 VSS VNW_P nfet_auxpc2 $X=2180 $Y=500 $D=537
M2 VSS 12 VSS VNW_P nfet_auxpc2 $X=3340 $Y=500 $D=537
M3 VSS 14 VSS VNW_P nfet_auxpc2 $X=4500 $Y=500 $D=537
M4 VSS 16 VSS VNW_P nfet_auxpc2 $X=5660 $Y=500 $D=537
M5 VDD 11 VDD VNW_P pfet_auxpc2 $X=2180 $Y=3850 $D=643
M6 VDD 13 VDD VNW_P pfet_auxpc2 $X=3340 $Y=3850 $D=643
M7 VDD 15 VDD VNW_P pfet_auxpc2 $X=4500 $Y=3850 $D=643
M8 VDD 9 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3200 $D=644
M9 VDD 17 VDD VNW_P pfet_auxpc2 $X=5660 $Y=3850 $D=644
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL16 VSS VDD VNW_P
** N=38 EP=3 IP=0 FDC=30
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 8 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VSS 10 VSS VNW_P nfet_auxpc2 $X=2180 $Y=500 $D=537
M2 VSS 12 VSS VNW_P nfet_auxpc2 $X=3340 $Y=500 $D=537
M3 VSS 14 VSS VNW_P nfet_auxpc2 $X=4500 $Y=500 $D=537
M4 VSS 16 VSS VNW_P nfet_auxpc2 $X=5660 $Y=500 $D=537
M5 VSS 18 VSS VNW_P nfet_auxpc2 $X=6820 $Y=500 $D=537
M6 VSS 20 VSS VNW_P nfet_auxpc2 $X=7980 $Y=500 $D=537
M7 VSS 22 VSS VNW_P nfet_auxpc2 $X=9140 $Y=500 $D=537
M8 VSS 24 VSS VNW_P nfet_auxpc2 $X=10300 $Y=500 $D=537
M9 VSS 26 VSS VNW_P nfet_auxpc2 $X=11460 $Y=500 $D=537
M10 VSS 28 VSS VNW_P nfet_auxpc2 $X=12620 $Y=500 $D=537
M11 VSS 30 VSS VNW_P nfet_auxpc2 $X=13780 $Y=500 $D=537
M12 VSS 32 VSS VNW_P nfet_auxpc2 $X=14940 $Y=500 $D=537
M13 VSS 34 VSS VNW_P nfet_auxpc2 $X=16100 $Y=500 $D=537
M14 VSS 36 VSS VNW_P nfet_auxpc2 $X=17260 $Y=500 $D=537
M15 VDD 11 VDD VNW_P pfet_auxpc2 $X=2180 $Y=3700 $D=643
M16 VDD 13 VDD VNW_P pfet_auxpc2 $X=3340 $Y=3700 $D=643
M17 VDD 15 VDD VNW_P pfet_auxpc2 $X=4500 $Y=3700 $D=643
M18 VDD 17 VDD VNW_P pfet_auxpc2 $X=5660 $Y=3700 $D=643
M19 VDD 19 VDD VNW_P pfet_auxpc2 $X=6820 $Y=3700 $D=643
M20 VDD 21 VDD VNW_P pfet_auxpc2 $X=7980 $Y=3700 $D=643
M21 VDD 23 VDD VNW_P pfet_auxpc2 $X=9140 $Y=3700 $D=643
M22 VDD 25 VDD VNW_P pfet_auxpc2 $X=10300 $Y=3700 $D=643
M23 VDD 27 VDD VNW_P pfet_auxpc2 $X=11460 $Y=3700 $D=643
M24 VDD 29 VDD VNW_P pfet_auxpc2 $X=12620 $Y=3700 $D=643
M25 VDD 31 VDD VNW_P pfet_auxpc2 $X=13780 $Y=3700 $D=643
M26 VDD 33 VDD VNW_P pfet_auxpc2 $X=14940 $Y=3700 $D=643
M27 VDD 35 VDD VNW_P pfet_auxpc2 $X=16100 $Y=3700 $D=643
M28 VDD 9 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3200 $D=644
M29 VDD 37 VDD VNW_P pfet_auxpc2 $X=17260 $Y=3700 $D=644
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL8 VSS VDD VNW_P
** N=22 EP=3 IP=0 FDC=14
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 8 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VSS 10 VSS VNW_P nfet_auxpc2 $X=2180 $Y=500 $D=537
M2 VSS 12 VSS VNW_P nfet_auxpc2 $X=3340 $Y=500 $D=537
M3 VSS 14 VSS VNW_P nfet_auxpc2 $X=4500 $Y=500 $D=537
M4 VSS 16 VSS VNW_P nfet_auxpc2 $X=5660 $Y=500 $D=537
M5 VSS 18 VSS VNW_P nfet_auxpc2 $X=6820 $Y=500 $D=537
M6 VSS 20 VSS VNW_P nfet_auxpc2 $X=7980 $Y=500 $D=537
M7 VDD 11 VDD VNW_P pfet_auxpc2 $X=2180 $Y=3800 $D=643
M8 VDD 13 VDD VNW_P pfet_auxpc2 $X=3340 $Y=3800 $D=643
M9 VDD 15 VDD VNW_P pfet_auxpc2 $X=4500 $Y=3800 $D=643
M10 VDD 17 VDD VNW_P pfet_auxpc2 $X=5660 $Y=3800 $D=643
M11 VDD 19 VDD VNW_P pfet_auxpc2 $X=6820 $Y=3800 $D=643
M12 VDD 9 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3200 $D=644
M13 VDD 21 VDD VNW_P pfet_auxpc2 $X=7980 $Y=3800 $D=644
.ENDS
***************************************
.SUBCKT ICV_4
** N=6 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT ICV_5
** N=6 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL32 VSS VDD VNW_P
** N=70 EP=3 IP=0 FDC=62
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 8 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VSS 10 VSS VNW_P nfet_auxpc2 $X=2180 $Y=500 $D=537
M2 VSS 12 VSS VNW_P nfet_auxpc2 $X=3340 $Y=500 $D=537
M3 VSS 14 VSS VNW_P nfet_auxpc2 $X=4500 $Y=500 $D=537
M4 VSS 16 VSS VNW_P nfet_auxpc2 $X=5660 $Y=500 $D=537
M5 VSS 18 VSS VNW_P nfet_auxpc2 $X=6820 $Y=500 $D=537
M6 VSS 20 VSS VNW_P nfet_auxpc2 $X=7980 $Y=500 $D=537
M7 VSS 22 VSS VNW_P nfet_auxpc2 $X=9140 $Y=500 $D=537
M8 VSS 24 VSS VNW_P nfet_auxpc2 $X=10300 $Y=500 $D=537
M9 VSS 26 VSS VNW_P nfet_auxpc2 $X=11460 $Y=500 $D=537
M10 VSS 28 VSS VNW_P nfet_auxpc2 $X=12620 $Y=500 $D=537
M11 VSS 30 VSS VNW_P nfet_auxpc2 $X=13780 $Y=500 $D=537
M12 VSS 32 VSS VNW_P nfet_auxpc2 $X=14940 $Y=500 $D=537
M13 VSS 34 VSS VNW_P nfet_auxpc2 $X=16100 $Y=500 $D=537
M14 VSS 36 VSS VNW_P nfet_auxpc2 $X=17260 $Y=500 $D=537
M15 VSS 38 VSS VNW_P nfet_auxpc2 $X=18420 $Y=500 $D=537
M16 VSS 40 VSS VNW_P nfet_auxpc2 $X=19580 $Y=500 $D=537
M17 VSS 42 VSS VNW_P nfet_auxpc2 $X=20740 $Y=500 $D=537
M18 VSS 44 VSS VNW_P nfet_auxpc2 $X=21900 $Y=500 $D=537
M19 VSS 46 VSS VNW_P nfet_auxpc2 $X=23060 $Y=500 $D=537
M20 VSS 48 VSS VNW_P nfet_auxpc2 $X=24220 $Y=500 $D=537
M21 VSS 50 VSS VNW_P nfet_auxpc2 $X=25380 $Y=500 $D=537
M22 VSS 52 VSS VNW_P nfet_auxpc2 $X=26540 $Y=500 $D=537
M23 VSS 54 VSS VNW_P nfet_auxpc2 $X=27700 $Y=500 $D=537
M24 VSS 56 VSS VNW_P nfet_auxpc2 $X=28860 $Y=500 $D=537
M25 VSS 58 VSS VNW_P nfet_auxpc2 $X=30020 $Y=500 $D=537
M26 VSS 60 VSS VNW_P nfet_auxpc2 $X=31180 $Y=500 $D=537
M27 VSS 62 VSS VNW_P nfet_auxpc2 $X=32340 $Y=500 $D=537
M28 VSS 64 VSS VNW_P nfet_auxpc2 $X=33500 $Y=500 $D=537
M29 VSS 66 VSS VNW_P nfet_auxpc2 $X=34660 $Y=500 $D=537
M30 VSS 68 VSS VNW_P nfet_auxpc2 $X=35820 $Y=500 $D=537
M31 VDD 11 VDD VNW_P pfet_auxpc2 $X=2180 $Y=3660 $D=643
M32 VDD 13 VDD VNW_P pfet_auxpc2 $X=3340 $Y=3660 $D=643
M33 VDD 15 VDD VNW_P pfet_auxpc2 $X=4500 $Y=3660 $D=643
M34 VDD 17 VDD VNW_P pfet_auxpc2 $X=5660 $Y=3660 $D=643
M35 VDD 19 VDD VNW_P pfet_auxpc2 $X=6820 $Y=3660 $D=643
M36 VDD 21 VDD VNW_P pfet_auxpc2 $X=7980 $Y=3660 $D=643
M37 VDD 23 VDD VNW_P pfet_auxpc2 $X=9140 $Y=3660 $D=643
M38 VDD 25 VDD VNW_P pfet_auxpc2 $X=10300 $Y=3660 $D=643
M39 VDD 27 VDD VNW_P pfet_auxpc2 $X=11460 $Y=3660 $D=643
M40 VDD 29 VDD VNW_P pfet_auxpc2 $X=12620 $Y=3660 $D=643
M41 VDD 31 VDD VNW_P pfet_auxpc2 $X=13780 $Y=3660 $D=643
M42 VDD 33 VDD VNW_P pfet_auxpc2 $X=14940 $Y=3660 $D=643
M43 VDD 35 VDD VNW_P pfet_auxpc2 $X=16100 $Y=3660 $D=643
M44 VDD 37 VDD VNW_P pfet_auxpc2 $X=17260 $Y=3660 $D=643
M45 VDD 39 VDD VNW_P pfet_auxpc2 $X=18420 $Y=3660 $D=643
M46 VDD 41 VDD VNW_P pfet_auxpc2 $X=19580 $Y=3660 $D=643
M47 VDD 43 VDD VNW_P pfet_auxpc2 $X=20740 $Y=3660 $D=643
M48 VDD 45 VDD VNW_P pfet_auxpc2 $X=21900 $Y=3660 $D=643
M49 VDD 47 VDD VNW_P pfet_auxpc2 $X=23060 $Y=3660 $D=643
M50 VDD 49 VDD VNW_P pfet_auxpc2 $X=24220 $Y=3660 $D=643
M51 VDD 51 VDD VNW_P pfet_auxpc2 $X=25380 $Y=3660 $D=643
M52 VDD 53 VDD VNW_P pfet_auxpc2 $X=26540 $Y=3660 $D=643
M53 VDD 55 VDD VNW_P pfet_auxpc2 $X=27700 $Y=3660 $D=643
M54 VDD 57 VDD VNW_P pfet_auxpc2 $X=28860 $Y=3660 $D=643
M55 VDD 59 VDD VNW_P pfet_auxpc2 $X=30020 $Y=3660 $D=643
M56 VDD 61 VDD VNW_P pfet_auxpc2 $X=31180 $Y=3660 $D=643
M57 VDD 63 VDD VNW_P pfet_auxpc2 $X=32340 $Y=3660 $D=643
M58 VDD 65 VDD VNW_P pfet_auxpc2 $X=33500 $Y=3660 $D=643
M59 VDD 67 VDD VNW_P pfet_auxpc2 $X=34660 $Y=3660 $D=643
M60 VDD 9 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3200 $D=644
M61 VDD 69 VDD VNW_P pfet_auxpc2 $X=35820 $Y=3660 $D=644
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL_ECT_5 VDD 3 4 5 6 7 9 14
** N=20 EP=8 IP=0 FDC=5
*.CALIBRE ISOLATED NETS: VSS
M0 6 9 5 14 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M1 7 9 6 14 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M2 4 9 3 14 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3200 $D=641
M3 5 9 4 14 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3200 $D=641
M4 VDD VDD 5 14 pfet_cnrx $X=4500 $Y=3200 $D=645
.ENDS
***************************************
.SUBCKT UDB116SVT24_DCAP_ECOCT_16 VSS VDD VNW_P
** N=24 EP=3 IP=112 FDC=47
*.CALIBRE ISOLATED NETS: VPW_N
M0 18 VDD VDD VNW_P pfet_cnrx $X=5660 $Y=3200 $D=645
M1 19 VDD VDD VNW_P pfet_cnrx $X=11460 $Y=3200 $D=645
M2 20 VDD VDD VNW_P pfet_cnrx $X=17260 $Y=3200 $D=645
M3 21 VDD VDD VNW_P pfet_cnrx $X=23060 $Y=3200 $D=645
M4 22 VDD VDD VNW_P pfet_cnrx $X=28860 $Y=3200 $D=645
M5 23 VDD VDD VNW_P pfet_cnrx $X=34660 $Y=3200 $D=645
M6 24 VDD VDD VNW_P pfet_cnrx $X=40460 $Y=3200 $D=645
X7 VDD VSS VSS VSS VSS VSS 10 VNW_P UDB116SVT24_FILL_ECT_5 $T=0 0 0 0 $X=-580 $Y=-300
X8 VDD VSS VSS VSS VSS VSS 10 VNW_P UDB116SVT24_FILL_ECT_5 $T=5800 0 0 0 $X=5220 $Y=-300
X9 VDD VSS VSS VSS 9 VSS 10 VNW_P UDB116SVT24_FILL_ECT_5 $T=11600 0 0 0 $X=11020 $Y=-300
X10 VDD VSS VSS VSS 9 VSS 10 VNW_P UDB116SVT24_FILL_ECT_5 $T=17400 0 0 0 $X=16820 $Y=-300
X11 VDD VDD 10 VDD VDD VDD 9 VNW_P UDB116SVT24_FILL_ECT_5 $T=23200 0 0 0 $X=22620 $Y=-300
X12 VDD VDD 10 VDD VDD VDD 9 VNW_P UDB116SVT24_FILL_ECT_5 $T=29000 0 0 0 $X=28420 $Y=-300
X13 VDD VDD VDD VDD VDD VDD 9 VNW_P UDB116SVT24_FILL_ECT_5 $T=34800 0 0 0 $X=34220 $Y=-300
X14 VDD VDD VDD VDD VDD VDD 9 VNW_P UDB116SVT24_FILL_ECT_5 $T=40600 0 0 0 $X=40020 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL64 VSS VDD VNW_P
** N=134 EP=3 IP=0 FDC=126
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 8 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VSS 10 VSS VNW_P nfet_auxpc2 $X=2180 $Y=500 $D=537
M2 VSS 12 VSS VNW_P nfet_auxpc2 $X=3340 $Y=500 $D=537
M3 VSS 14 VSS VNW_P nfet_auxpc2 $X=4500 $Y=500 $D=537
M4 VSS 16 VSS VNW_P nfet_auxpc2 $X=5660 $Y=500 $D=537
M5 VSS 18 VSS VNW_P nfet_auxpc2 $X=6820 $Y=500 $D=537
M6 VSS 20 VSS VNW_P nfet_auxpc2 $X=7980 $Y=500 $D=537
M7 VSS 22 VSS VNW_P nfet_auxpc2 $X=9140 $Y=500 $D=537
M8 VSS 24 VSS VNW_P nfet_auxpc2 $X=10300 $Y=500 $D=537
M9 VSS 26 VSS VNW_P nfet_auxpc2 $X=11460 $Y=500 $D=537
M10 VSS 28 VSS VNW_P nfet_auxpc2 $X=12620 $Y=500 $D=537
M11 VSS 30 VSS VNW_P nfet_auxpc2 $X=13780 $Y=500 $D=537
M12 VSS 32 VSS VNW_P nfet_auxpc2 $X=14940 $Y=500 $D=537
M13 VSS 34 VSS VNW_P nfet_auxpc2 $X=16100 $Y=500 $D=537
M14 VSS 36 VSS VNW_P nfet_auxpc2 $X=17260 $Y=500 $D=537
M15 VSS 38 VSS VNW_P nfet_auxpc2 $X=18420 $Y=500 $D=537
M16 VSS 40 VSS VNW_P nfet_auxpc2 $X=19580 $Y=500 $D=537
M17 VSS 42 VSS VNW_P nfet_auxpc2 $X=20740 $Y=500 $D=537
M18 VSS 44 VSS VNW_P nfet_auxpc2 $X=21900 $Y=500 $D=537
M19 VSS 46 VSS VNW_P nfet_auxpc2 $X=23060 $Y=500 $D=537
M20 VSS 48 VSS VNW_P nfet_auxpc2 $X=24220 $Y=500 $D=537
M21 VSS 50 VSS VNW_P nfet_auxpc2 $X=25380 $Y=500 $D=537
M22 VSS 52 VSS VNW_P nfet_auxpc2 $X=26540 $Y=500 $D=537
M23 VSS 54 VSS VNW_P nfet_auxpc2 $X=27700 $Y=500 $D=537
M24 VSS 56 VSS VNW_P nfet_auxpc2 $X=28860 $Y=500 $D=537
M25 VSS 58 VSS VNW_P nfet_auxpc2 $X=30020 $Y=500 $D=537
M26 VSS 60 VSS VNW_P nfet_auxpc2 $X=31180 $Y=500 $D=537
M27 VSS 62 VSS VNW_P nfet_auxpc2 $X=32340 $Y=500 $D=537
M28 VSS 64 VSS VNW_P nfet_auxpc2 $X=33500 $Y=500 $D=537
M29 VSS 66 VSS VNW_P nfet_auxpc2 $X=34660 $Y=500 $D=537
M30 VSS 68 VSS VNW_P nfet_auxpc2 $X=35820 $Y=500 $D=537
M31 VSS 70 VSS VNW_P nfet_auxpc2 $X=36980 $Y=500 $D=537
M32 VSS 72 VSS VNW_P nfet_auxpc2 $X=38140 $Y=500 $D=537
M33 VSS 74 VSS VNW_P nfet_auxpc2 $X=39300 $Y=500 $D=537
M34 VSS 76 VSS VNW_P nfet_auxpc2 $X=40460 $Y=500 $D=537
M35 VSS 78 VSS VNW_P nfet_auxpc2 $X=41620 $Y=500 $D=537
M36 VSS 80 VSS VNW_P nfet_auxpc2 $X=42780 $Y=500 $D=537
M37 VSS 82 VSS VNW_P nfet_auxpc2 $X=43940 $Y=500 $D=537
M38 VSS 84 VSS VNW_P nfet_auxpc2 $X=45100 $Y=500 $D=537
M39 VSS 86 VSS VNW_P nfet_auxpc2 $X=46260 $Y=500 $D=537
M40 VSS 88 VSS VNW_P nfet_auxpc2 $X=47420 $Y=500 $D=537
M41 VSS 90 VSS VNW_P nfet_auxpc2 $X=48580 $Y=500 $D=537
M42 VSS 92 VSS VNW_P nfet_auxpc2 $X=49740 $Y=500 $D=537
M43 VSS 94 VSS VNW_P nfet_auxpc2 $X=50900 $Y=500 $D=537
M44 VSS 96 VSS VNW_P nfet_auxpc2 $X=52060 $Y=500 $D=537
M45 VSS 98 VSS VNW_P nfet_auxpc2 $X=53220 $Y=500 $D=537
M46 VSS 100 VSS VNW_P nfet_auxpc2 $X=54380 $Y=500 $D=537
M47 VSS 102 VSS VNW_P nfet_auxpc2 $X=55540 $Y=500 $D=537
M48 VSS 104 VSS VNW_P nfet_auxpc2 $X=56700 $Y=500 $D=537
M49 VSS 106 VSS VNW_P nfet_auxpc2 $X=57860 $Y=500 $D=537
M50 VSS 108 VSS VNW_P nfet_auxpc2 $X=59020 $Y=500 $D=537
M51 VSS 110 VSS VNW_P nfet_auxpc2 $X=60180 $Y=500 $D=537
M52 VSS 112 VSS VNW_P nfet_auxpc2 $X=61340 $Y=500 $D=537
M53 VSS 114 VSS VNW_P nfet_auxpc2 $X=62500 $Y=500 $D=537
M54 VSS 116 VSS VNW_P nfet_auxpc2 $X=63660 $Y=500 $D=537
M55 VSS 118 VSS VNW_P nfet_auxpc2 $X=64820 $Y=500 $D=537
M56 VSS 120 VSS VNW_P nfet_auxpc2 $X=65980 $Y=500 $D=537
M57 VSS 122 VSS VNW_P nfet_auxpc2 $X=67140 $Y=500 $D=537
M58 VSS 124 VSS VNW_P nfet_auxpc2 $X=68300 $Y=500 $D=537
M59 VSS 126 VSS VNW_P nfet_auxpc2 $X=69460 $Y=500 $D=537
M60 VSS 128 VSS VNW_P nfet_auxpc2 $X=70620 $Y=500 $D=537
M61 VSS 130 VSS VNW_P nfet_auxpc2 $X=71780 $Y=500 $D=537
M62 VSS 132 VSS VNW_P nfet_auxpc2 $X=72940 $Y=500 $D=537
M63 VDD 9 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3200 $D=643
M64 VDD 13 VDD VNW_P pfet_auxpc2 $X=3340 $Y=3660 $D=643
M65 VDD 15 VDD VNW_P pfet_auxpc2 $X=4500 $Y=3660 $D=643
M66 VDD 17 VDD VNW_P pfet_auxpc2 $X=5660 $Y=3660 $D=643
M67 VDD 19 VDD VNW_P pfet_auxpc2 $X=6820 $Y=3660 $D=643
M68 VDD 21 VDD VNW_P pfet_auxpc2 $X=7980 $Y=3660 $D=643
M69 VDD 23 VDD VNW_P pfet_auxpc2 $X=9140 $Y=3660 $D=643
M70 VDD 25 VDD VNW_P pfet_auxpc2 $X=10300 $Y=3660 $D=643
M71 VDD 27 VDD VNW_P pfet_auxpc2 $X=11460 $Y=3660 $D=643
M72 VDD 29 VDD VNW_P pfet_auxpc2 $X=12620 $Y=3660 $D=643
M73 VDD 31 VDD VNW_P pfet_auxpc2 $X=13780 $Y=3660 $D=643
M74 VDD 33 VDD VNW_P pfet_auxpc2 $X=14940 $Y=3660 $D=643
M75 VDD 35 VDD VNW_P pfet_auxpc2 $X=16100 $Y=3660 $D=643
M76 VDD 37 VDD VNW_P pfet_auxpc2 $X=17260 $Y=3660 $D=643
M77 VDD 39 VDD VNW_P pfet_auxpc2 $X=18420 $Y=3660 $D=643
M78 VDD 41 VDD VNW_P pfet_auxpc2 $X=19580 $Y=3660 $D=643
M79 VDD 43 VDD VNW_P pfet_auxpc2 $X=20740 $Y=3660 $D=643
M80 VDD 45 VDD VNW_P pfet_auxpc2 $X=21900 $Y=3660 $D=643
M81 VDD 47 VDD VNW_P pfet_auxpc2 $X=23060 $Y=3660 $D=643
M82 VDD 49 VDD VNW_P pfet_auxpc2 $X=24220 $Y=3660 $D=643
M83 VDD 51 VDD VNW_P pfet_auxpc2 $X=25380 $Y=3660 $D=643
M84 VDD 53 VDD VNW_P pfet_auxpc2 $X=26540 $Y=3660 $D=643
M85 VDD 55 VDD VNW_P pfet_auxpc2 $X=27700 $Y=3660 $D=643
M86 VDD 57 VDD VNW_P pfet_auxpc2 $X=28860 $Y=3660 $D=643
M87 VDD 59 VDD VNW_P pfet_auxpc2 $X=30020 $Y=3660 $D=643
M88 VDD 61 VDD VNW_P pfet_auxpc2 $X=31180 $Y=3660 $D=643
M89 VDD 63 VDD VNW_P pfet_auxpc2 $X=32340 $Y=3660 $D=643
M90 VDD 65 VDD VNW_P pfet_auxpc2 $X=33500 $Y=3660 $D=643
M91 VDD 67 VDD VNW_P pfet_auxpc2 $X=34660 $Y=3660 $D=643
M92 VDD 69 VDD VNW_P pfet_auxpc2 $X=35820 $Y=3660 $D=643
M93 VDD 71 VDD VNW_P pfet_auxpc2 $X=36980 $Y=3660 $D=643
M94 VDD 73 VDD VNW_P pfet_auxpc2 $X=38140 $Y=3660 $D=643
M95 VDD 75 VDD VNW_P pfet_auxpc2 $X=39300 $Y=3660 $D=643
M96 VDD 77 VDD VNW_P pfet_auxpc2 $X=40460 $Y=3660 $D=643
M97 VDD 79 VDD VNW_P pfet_auxpc2 $X=41620 $Y=3660 $D=643
M98 VDD 81 VDD VNW_P pfet_auxpc2 $X=42780 $Y=3660 $D=643
M99 VDD 83 VDD VNW_P pfet_auxpc2 $X=43940 $Y=3660 $D=643
M100 VDD 85 VDD VNW_P pfet_auxpc2 $X=45100 $Y=3660 $D=643
M101 VDD 87 VDD VNW_P pfet_auxpc2 $X=46260 $Y=3660 $D=643
M102 VDD 89 VDD VNW_P pfet_auxpc2 $X=47420 $Y=3660 $D=643
M103 VDD 91 VDD VNW_P pfet_auxpc2 $X=48580 $Y=3660 $D=643
M104 VDD 93 VDD VNW_P pfet_auxpc2 $X=49740 $Y=3660 $D=643
M105 VDD 95 VDD VNW_P pfet_auxpc2 $X=50900 $Y=3660 $D=643
M106 VDD 97 VDD VNW_P pfet_auxpc2 $X=52060 $Y=3660 $D=643
M107 VDD 99 VDD VNW_P pfet_auxpc2 $X=53220 $Y=3660 $D=643
M108 VDD 101 VDD VNW_P pfet_auxpc2 $X=54380 $Y=3660 $D=643
M109 VDD 103 VDD VNW_P pfet_auxpc2 $X=55540 $Y=3660 $D=643
M110 VDD 105 VDD VNW_P pfet_auxpc2 $X=56700 $Y=3660 $D=643
M111 VDD 107 VDD VNW_P pfet_auxpc2 $X=57860 $Y=3660 $D=643
M112 VDD 109 VDD VNW_P pfet_auxpc2 $X=59020 $Y=3660 $D=643
M113 VDD 111 VDD VNW_P pfet_auxpc2 $X=60180 $Y=3660 $D=643
M114 VDD 113 VDD VNW_P pfet_auxpc2 $X=61340 $Y=3660 $D=643
M115 VDD 115 VDD VNW_P pfet_auxpc2 $X=62500 $Y=3660 $D=643
M116 VDD 117 VDD VNW_P pfet_auxpc2 $X=63660 $Y=3660 $D=643
M117 VDD 119 VDD VNW_P pfet_auxpc2 $X=64820 $Y=3660 $D=643
M118 VDD 121 VDD VNW_P pfet_auxpc2 $X=65980 $Y=3660 $D=643
M119 VDD 123 VDD VNW_P pfet_auxpc2 $X=67140 $Y=3660 $D=643
M120 VDD 125 VDD VNW_P pfet_auxpc2 $X=68300 $Y=3660 $D=643
M121 VDD 127 VDD VNW_P pfet_auxpc2 $X=69460 $Y=3660 $D=643
M122 VDD 129 VDD VNW_P pfet_auxpc2 $X=70620 $Y=3660 $D=643
M123 VDD 133 VDD VNW_P pfet_auxpc2 $X=72940 $Y=3200 $D=643
M124 VDD 11 VDD VNW_P pfet_auxpc2 $X=2180 $Y=3200 $D=644
M125 VDD 131 VDD VNW_P pfet_auxpc2 $X=71780 $Y=3660 $D=644
.ENDS
***************************************
.SUBCKT UDB116SVT24_CAPL9_1 VSS VDD VNW_P 6
** N=14 EP=4 IP=0 FDC=3
X0 VSS VDD tdndsx area=2.5296e-14 perim=6.56e-07 m=1 $X=1000 $Y=2740 $D=38
M1 VSS 11 VSS 6 nfet_auxpc2 $X=9140 $Y=500 $D=537
M2 VDD 12 VDD VNW_P pfet_auxpc2 $X=9140 $Y=3200 $D=643
.ENDS
***************************************
.SUBCKT ICV_6 1 2
*.CALIBRE ICV_CELL 2
** N=145 EP=2 IP=679 FDC=4101
X0 1 2 tdndsx area=3.468e-14 perim=7.48e-07 m=1 $X=40440 $Y=580500 $D=38
X1 1 2 tdndsx area=3.468e-14 perim=7.48e-07 m=1 $X=586240 $Y=580500 $D=38
M2 2 2 2 1 pfet_cnrx $X=49740 $Y=556200 $D=645
M3 2 2 2 1 pfet_cnrx $X=49740 $Y=567000 $D=645
M4 2 2 2 1 pfet_cnrx $X=60180 $Y=558900 $D=645
M5 2 2 2 1 pfet_cnrx $X=60180 $Y=569700 $D=645
M6 2 2 2 1 pfet_cnrx $X=60180 $Y=577800 $D=645
M7 113 2 2 1 pfet_cnrx $X=69460 $Y=558900 $D=645
M8 2 2 2 1 pfet_cnrx $X=115860 $Y=558900 $D=645
M9 2 2 2 1 pfet_cnrx $X=123980 $Y=556200 $D=645
M10 2 2 2 1 pfet_cnrx $X=123980 $Y=567000 $D=645
M11 2 2 2 1 pfet_cnrx $X=129780 $Y=558900 $D=645
M12 114 2 2 1 pfet_cnrx $X=130940 $Y=558900 $D=645
M13 2 2 2 1 pfet_cnrx $X=134420 $Y=569700 $D=645
M14 2 2 2 1 pfet_cnrx $X=134420 $Y=577800 $D=645
M15 2 2 2 1 pfet_cnrx $X=177340 $Y=558900 $D=645
M16 115 2 2 1 pfet_cnrx $X=191260 $Y=558900 $D=645
M17 2 2 2 1 pfet_cnrx $X=198220 $Y=556200 $D=645
M18 2 2 2 1 pfet_cnrx $X=198220 $Y=567000 $D=645
M19 2 2 2 1 pfet_cnrx $X=208660 $Y=569700 $D=645
M20 2 2 2 1 pfet_cnrx $X=208660 $Y=577800 $D=645
M21 2 2 2 1 pfet_cnrx $X=227220 $Y=577800 $D=645
M22 2 2 2 1 pfet_cnrx $X=237660 $Y=558900 $D=645
M23 2 2 2 1 pfet_cnrx $X=249260 $Y=556200 $D=645
M24 2 2 2 1 pfet_cnrx $X=249260 $Y=567000 $D=645
M25 2 2 2 1 pfet_cnrx $X=249260 $Y=577800 $D=645
M26 2 2 2 1 pfet_cnrx $X=251580 $Y=558900 $D=645
M27 116 2 2 1 pfet_cnrx $X=252740 $Y=558900 $D=645
M28 2 2 2 1 pfet_cnrx $X=282900 $Y=569700 $D=645
M29 2 2 2 1 pfet_cnrx $X=299140 $Y=558900 $D=645
M30 2 2 2 1 pfet_cnrx $X=313060 $Y=558900 $D=645
M31 117 2 2 1 pfet_cnrx $X=314220 $Y=558900 $D=645
M32 2 2 2 1 pfet_cnrx $X=323500 $Y=556200 $D=645
M33 2 2 2 1 pfet_cnrx $X=323500 $Y=567000 $D=645
M34 2 2 2 1 pfet_cnrx $X=323500 $Y=577800 $D=645
M35 2 2 2 1 pfet_cnrx $X=357140 $Y=569700 $D=645
M36 2 2 2 1 pfet_cnrx $X=360620 $Y=558900 $D=645
M37 118 2 2 1 pfet_cnrx $X=374540 $Y=558900 $D=645
M38 2 2 2 1 pfet_cnrx $X=397740 $Y=556200 $D=645
M39 2 2 2 1 pfet_cnrx $X=397740 $Y=567000 $D=645
M40 2 2 2 1 pfet_cnrx $X=397740 $Y=577800 $D=645
M41 2 2 2 1 pfet_cnrx $X=420940 $Y=558900 $D=645
M42 2 2 2 1 pfet_cnrx $X=431380 $Y=569700 $D=645
M43 2 2 2 1 pfet_cnrx $X=434860 $Y=556200 $D=645
M44 119 2 2 1 pfet_cnrx $X=436020 $Y=556200 $D=645
M45 2 2 2 1 pfet_cnrx $X=448780 $Y=558900 $D=645
M46 2 2 2 1 pfet_cnrx $X=448780 $Y=569700 $D=645
M47 2 2 2 1 pfet_cnrx $X=448780 $Y=577800 $D=645
M48 2 2 2 1 pfet_cnrx $X=471980 $Y=567000 $D=645
M49 2 2 2 1 pfet_cnrx $X=482420 $Y=556200 $D=645
M50 2 2 2 1 pfet_cnrx $X=485900 $Y=558900 $D=645
M51 2 2 2 1 pfet_cnrx $X=523020 $Y=569700 $D=645
M52 2 2 2 1 pfet_cnrx $X=523020 $Y=577800 $D=645
M53 2 2 2 1 pfet_cnrx $X=543900 $Y=558900 $D=645
M54 2 2 2 1 pfet_cnrx $X=546220 $Y=567000 $D=645
M55 2 2 2 1 pfet_cnrx $X=556660 $Y=556200 $D=645
M56 2 2 2 1 pfet_cnrx $X=560140 $Y=569700 $D=645
M57 2 2 2 1 pfet_cnrx $X=560140 $Y=577800 $D=645
M58 2 2 2 1 pfet_cnrx $X=562460 $Y=558900 $D=645
M59 2 2 2 1 pfet_cnrx $X=567100 $Y=577800 $D=645
M60 2 2 2 1 pfet_cnrx $X=578700 $Y=556200 $D=645
M61 2 2 2 1 pfet_cnrx $X=578700 $Y=567000 $D=645
M62 2 2 2 1 pfet_cnrx $X=578700 $Y=569700 $D=645
M63 2 2 2 1 pfet_cnrx $X=578700 $Y=577800 $D=645
M64 2 2 2 1 pfet_cnrx $X=49740 $Y=558900 $D=646
M65 2 2 2 1 pfet_cnrx $X=49740 $Y=569700 $D=646
M66 2 2 2 1 pfet_cnrx $X=49740 $Y=578200 $D=646
M67 2 2 2 1 pfet_cnrx $X=235340 $Y=556500 $D=646
M68 2 2 2 1 pfet_cnrx $X=235340 $Y=567300 $D=646
M69 2 2 2 1 pfet_cnrx $X=236500 $Y=578100 $D=646
M70 2 2 2 1 pfet_cnrx $X=238820 $Y=556600 $D=646
M71 2 2 2 1 pfet_cnrx $X=238820 $Y=567400 $D=646
M72 2 2 2 1 pfet_cnrx $X=238820 $Y=578200 $D=646
M73 2 2 2 1 pfet_cnrx $X=434860 $Y=558900 $D=646
M74 2 2 2 1 pfet_cnrx $X=434860 $Y=578100 $D=646
M75 2 2 2 1 pfet_cnrx $X=438340 $Y=558900 $D=646
M76 2 2 2 1 pfet_cnrx $X=438340 $Y=569700 $D=646
M77 2 2 2 1 pfet_cnrx $X=438340 $Y=578200 $D=646
M78 2 2 2 1 pfet_cnrx $X=495180 $Y=558900 $D=646
M79 120 2 2 1 pfet_cnrx $X=497500 $Y=558900 $D=646
M80 2 2 2 1 pfet_cnrx $X=564780 $Y=567300 $D=646
M81 2 2 2 1 pfet_cnrx $X=565940 $Y=556500 $D=646
M82 2 2 2 1 pfet_cnrx $X=568260 $Y=556600 $D=646
M83 2 2 2 1 pfet_cnrx $X=568260 $Y=567400 $D=646
M84 2 2 2 1 pfet_cnrx $X=568260 $Y=578200 $D=646
M85 2 2 2 1 pfet_cnrx $X=576380 $Y=558900 $D=646
M86 2 2 2 1 pfet_cnrx $X=578700 $Y=558900 $D=646
X87 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 553000 0 0 $X=578260 $Y=552700
X88 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 563800 1 0 $X=578260 $Y=558100
X89 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 563800 0 0 $X=578260 $Y=563500
X90 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 574600 1 0 $X=578260 $Y=568900
X91 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 574600 0 0 $X=578260 $Y=574300
X92 1 2 1 UDB116SVT24_FILL2 $T=236640 574600 0 0 $X=236060 $Y=574300
X93 1 2 1 UDB116SVT24_FILL2 $T=495320 563800 1 0 $X=494740 $Y=558100
X94 1 2 1 UDB116SVT24_FILL2 $T=566080 553000 0 0 $X=565500 $Y=552700
X95 1 2 1 UDB116SVT24_FILL2 $T=576520 563800 1 0 $X=575940 $Y=558100
X97 1 UDB116SVT24_TAPSS $T=49880 563800 1 0 $X=49300 $Y=558100
X98 1 UDB116SVT24_TAPSS $T=49880 574600 1 0 $X=49300 $Y=568900
X99 1 UDB116SVT24_TAPSS $T=49880 574600 0 0 $X=49300 $Y=574300
X100 1 UDB116SVT24_TAPSS $T=238960 553000 0 0 $X=238380 $Y=552700
X101 1 UDB116SVT24_TAPSS $T=238960 563800 0 0 $X=238380 $Y=563500
X102 1 UDB116SVT24_TAPSS $T=238960 574600 0 0 $X=238380 $Y=574300
X103 1 UDB116SVT24_TAPSS $T=438480 563800 1 0 $X=437900 $Y=558100
X104 1 UDB116SVT24_TAPSS $T=438480 574600 1 0 $X=437900 $Y=568900
X105 1 UDB116SVT24_TAPSS $T=438480 574600 0 0 $X=437900 $Y=574300
X106 1 UDB116SVT24_TAPSS $T=568400 553000 0 0 $X=567820 $Y=552700
X107 1 UDB116SVT24_TAPSS $T=568400 563800 0 0 $X=567820 $Y=563500
X108 1 UDB116SVT24_TAPSS $T=568400 574600 0 0 $X=567820 $Y=574300
X114 1 2 1 UDB116SVT24_FILL3 $T=235480 553000 0 0 $X=234900 $Y=552700
X115 1 2 1 UDB116SVT24_FILL3 $T=235480 563800 0 0 $X=234900 $Y=563500
X116 1 2 1 UDB116SVT24_FILL3 $T=435000 563800 1 0 $X=434420 $Y=558100
X117 1 2 1 UDB116SVT24_FILL3 $T=435000 574600 0 0 $X=434420 $Y=574300
X118 1 2 1 UDB116SVT24_FILL3 $T=564920 563800 0 0 $X=564340 $Y=563500
X119 1 2 1 UDB116SVT24_FILL12 $T=116000 563800 1 0 $X=115420 $Y=558100
X120 1 2 1 UDB116SVT24_FILL12 $T=177480 563800 1 0 $X=176900 $Y=558100
X121 1 2 1 UDB116SVT24_FILL12 $T=237800 563800 1 0 $X=237220 $Y=558100
X122 1 2 1 UDB116SVT24_FILL12 $T=299280 563800 1 0 $X=298700 $Y=558100
X123 1 2 1 UDB116SVT24_FILL12 $T=360760 563800 1 0 $X=360180 $Y=558100
X124 1 2 1 UDB116SVT24_FILL12 $T=421080 563800 1 0 $X=420500 $Y=558100
X125 1 2 1 UDB116SVT24_FILL12 $T=562600 563800 1 0 $X=562020 $Y=558100
X126 1 2 1 UDB116SVT24_FILL6 $T=431520 574600 1 0 $X=430940 $Y=568900
X127 1 2 1 UDB116SVT24_FILL6 $T=560280 574600 0 0 $X=559700 $Y=574300
X128 1 2 1 UDB116SVT24_FILL16 $T=208800 574600 0 0 $X=208220 $Y=574300
X129 1 2 1 UDB116SVT24_FILL16 $T=544040 563800 1 0 $X=543460 $Y=558100
X130 1 2 1 UDB116SVT24_FILL16 $T=546360 563800 0 0 $X=545780 $Y=563500
X131 1 2 1 UDB116SVT24_FILL16 $T=560280 574600 1 0 $X=559700 $Y=568900
X132 1 2 1 UDB116SVT24_FILL8 $T=60320 563800 1 0 $X=59740 $Y=558100
X133 1 2 1 UDB116SVT24_FILL8 $T=227360 574600 0 0 $X=226780 $Y=574300
X134 1 2 1 UDB116SVT24_FILL8 $T=486040 563800 1 0 $X=485460 $Y=558100
X135 1 2 1 UDB116SVT24_FILL8 $T=556800 553000 0 0 $X=556220 $Y=552700
X150 1 2 1 UDB116SVT24_FILL32 $T=198360 553000 0 0 $X=197780 $Y=552700
X151 1 2 1 UDB116SVT24_FILL32 $T=198360 563800 0 0 $X=197780 $Y=563500
X152 1 2 1 UDB116SVT24_FILL32 $T=397880 553000 0 0 $X=397300 $Y=552700
X153 1 2 1 UDB116SVT24_FILL32 $T=397880 574600 0 0 $X=397300 $Y=574300
X154 1 2 1 UDB116SVT24_FILL32 $T=448920 563800 1 0 $X=448340 $Y=558100
X155 1 2 1 UDB116SVT24_FILL32 $T=523160 574600 1 0 $X=522580 $Y=568900
X156 1 2 1 UDB116SVT24_FILL32 $T=523160 574600 0 0 $X=522580 $Y=574300
X157 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=69600 563800 1 0 $X=69020 $Y=558100
X158 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=131080 563800 1 0 $X=130500 $Y=558100
X159 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=191400 563800 1 0 $X=190820 $Y=558100
X160 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=252880 563800 1 0 $X=252300 $Y=558100
X161 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=314360 563800 1 0 $X=313780 $Y=558100
X162 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=374680 563800 1 0 $X=374100 $Y=558100
X163 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=436160 553000 0 0 $X=435580 $Y=552700
X164 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=497640 563800 1 0 $X=497060 $Y=558100
X165 1 2 1 UDB116SVT24_FILL64 $T=49880 553000 0 0 $X=49300 $Y=552700
X166 1 2 1 UDB116SVT24_FILL64 $T=49880 563800 0 0 $X=49300 $Y=563500
X167 1 2 1 UDB116SVT24_FILL64 $T=60320 574600 1 0 $X=59740 $Y=568900
X168 1 2 1 UDB116SVT24_FILL64 $T=60320 574600 0 0 $X=59740 $Y=574300
X169 1 2 1 UDB116SVT24_FILL64 $T=124120 553000 0 0 $X=123540 $Y=552700
X170 1 2 1 UDB116SVT24_FILL64 $T=124120 563800 0 0 $X=123540 $Y=563500
X171 1 2 1 UDB116SVT24_FILL64 $T=134560 574600 1 0 $X=133980 $Y=568900
X172 1 2 1 UDB116SVT24_FILL64 $T=134560 574600 0 0 $X=133980 $Y=574300
X173 1 2 1 UDB116SVT24_FILL64 $T=208800 574600 1 0 $X=208220 $Y=568900
X174 1 2 1 UDB116SVT24_FILL64 $T=249400 553000 0 0 $X=248820 $Y=552700
X175 1 2 1 UDB116SVT24_FILL64 $T=249400 563800 0 0 $X=248820 $Y=563500
X176 1 2 1 UDB116SVT24_FILL64 $T=249400 574600 0 0 $X=248820 $Y=574300
X177 1 2 1 UDB116SVT24_FILL64 $T=283040 574600 1 0 $X=282460 $Y=568900
X178 1 2 1 UDB116SVT24_FILL64 $T=323640 553000 0 0 $X=323060 $Y=552700
X179 1 2 1 UDB116SVT24_FILL64 $T=323640 563800 0 0 $X=323060 $Y=563500
X180 1 2 1 UDB116SVT24_FILL64 $T=323640 574600 0 0 $X=323060 $Y=574300
X181 1 2 1 UDB116SVT24_FILL64 $T=357280 574600 1 0 $X=356700 $Y=568900
X182 1 2 1 UDB116SVT24_FILL64 $T=397880 563800 0 0 $X=397300 $Y=563500
X183 1 2 1 UDB116SVT24_FILL64 $T=448920 574600 1 0 $X=448340 $Y=568900
X184 1 2 1 UDB116SVT24_FILL64 $T=448920 574600 0 0 $X=448340 $Y=574300
X185 1 2 1 UDB116SVT24_FILL64 $T=472120 563800 0 0 $X=471540 $Y=563500
X186 1 2 1 UDB116SVT24_FILL64 $T=482560 553000 0 0 $X=481980 $Y=552700
X187 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 553000 0 0 $X=39440 $Y=552700
X188 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 563800 1 0 $X=39440 $Y=558100
X189 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 563800 0 0 $X=39440 $Y=563500
X190 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 574600 1 0 $X=39440 $Y=568900
X191 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 574600 0 0 $X=39440 $Y=574300
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL5 VSS VDD VNW_P
** N=16 EP=3 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 8 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VSS 10 VSS VNW_P nfet_auxpc2 $X=2180 $Y=500 $D=537
M2 VSS 12 VSS VNW_P nfet_auxpc2 $X=3340 $Y=500 $D=537
M3 VSS 14 VSS VNW_P nfet_auxpc2 $X=4500 $Y=500 $D=537
M4 VDD 11 VDD VNW_P pfet_auxpc2 $X=2180 $Y=3850 $D=643
M5 VDD 13 VDD VNW_P pfet_auxpc2 $X=3340 $Y=3850 $D=643
M6 VDD 9 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3200 $D=644
M7 VDD 15 VDD VNW_P pfet_auxpc2 $X=4500 $Y=3850 $D=644
.ENDS
***************************************
.SUBCKT ICV_7 1 2
** N=6 EP=2 IP=14 FDC=253
M0 2 2 2 1 pfet_cnrx $X=74100 $Y=3200 $D=645
X1 1 2 1 UDB116SVT24_FILL64 $T=0 0 0 0 $X=-580 $Y=-300
X2 1 2 1 UDB116SVT24_FILL64 $T=74240 0 0 0 $X=73660 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_DCAP_ECOCT_12 VSS VDD VNW_P
** N=20 EP=3 IP=84 FDC=35
*.CALIBRE ISOLATED NETS: VPW_N
M0 16 VDD VDD VNW_P pfet_cnrx $X=5660 $Y=3200 $D=645
M1 17 VDD VDD VNW_P pfet_cnrx $X=11460 $Y=3200 $D=645
M2 18 VDD VDD VNW_P pfet_cnrx $X=17260 $Y=3200 $D=645
M3 19 VDD VDD VNW_P pfet_cnrx $X=23060 $Y=3200 $D=645
M4 20 VDD VDD VNW_P pfet_cnrx $X=28860 $Y=3200 $D=645
X5 VDD VSS VSS VSS VSS VSS 10 VNW_P UDB116SVT24_FILL_ECT_5 $T=0 0 0 0 $X=-580 $Y=-300
X6 VDD VSS VSS VSS VSS 9 10 VNW_P UDB116SVT24_FILL_ECT_5 $T=5800 0 0 0 $X=5220 $Y=-300
X7 VDD VSS VSS VSS 9 VSS 10 VNW_P UDB116SVT24_FILL_ECT_5 $T=11600 0 0 0 $X=11020 $Y=-300
X8 VDD VDD 10 VDD VDD VDD 9 VNW_P UDB116SVT24_FILL_ECT_5 $T=17400 0 0 0 $X=16820 $Y=-300
X9 VDD 10 VDD VDD VDD VDD 9 VNW_P UDB116SVT24_FILL_ECT_5 $T=23200 0 0 0 $X=22620 $Y=-300
X10 VDD VDD VDD VDD VDD VDD 9 VNW_P UDB116SVT24_FILL_ECT_5 $T=29000 0 0 0 $X=28420 $Y=-300
.ENDS
***************************************
.SUBCKT ICV_8 1 2
*.CALIBRE ICV_CELL 10
** N=252 EP=2 IP=1251 FDC=12734
M0 1 1 1 2 pfet_cnrx $X=49740 $Y=480600 $D=645
M1 1 1 1 2 pfet_cnrx $X=49740 $Y=491400 $D=645
M2 1 1 1 2 pfet_cnrx $X=49740 $Y=502200 $D=645
M3 1 1 1 2 pfet_cnrx $X=49740 $Y=513000 $D=645
M4 1 1 1 2 pfet_cnrx $X=49740 $Y=523800 $D=645
M5 1 1 1 2 pfet_cnrx $X=49740 $Y=534600 $D=645
M6 1 1 1 2 pfet_cnrx $X=49740 $Y=545400 $D=645
M7 1 1 1 2 pfet_cnrx $X=60180 $Y=472500 $D=645
M8 1 1 1 2 pfet_cnrx $X=60180 $Y=483300 $D=645
M9 1 1 1 2 pfet_cnrx $X=60180 $Y=494100 $D=645
M10 1 1 1 2 pfet_cnrx $X=60180 $Y=504900 $D=645
M11 1 1 1 2 pfet_cnrx $X=60180 $Y=515700 $D=645
M12 1 1 1 2 pfet_cnrx $X=60180 $Y=526500 $D=645
M13 1 1 1 2 pfet_cnrx $X=60180 $Y=537300 $D=645
M14 1 1 1 2 pfet_cnrx $X=60180 $Y=548100 $D=645
M15 188 1 1 2 pfet_cnrx $X=69460 $Y=494100 $D=645
M16 1 1 1 2 pfet_cnrx $X=86860 $Y=523800 $D=645
M17 1 1 1 2 pfet_cnrx $X=115860 $Y=494100 $D=645
M18 1 1 1 2 pfet_cnrx $X=129780 $Y=494100 $D=645
M19 189 1 1 2 pfet_cnrx $X=130940 $Y=494100 $D=645
M20 1 1 1 2 pfet_cnrx $X=142540 $Y=523800 $D=645
M21 1 1 1 2 pfet_cnrx $X=177340 $Y=494100 $D=645
M22 190 1 1 2 pfet_cnrx $X=191260 $Y=494100 $D=645
M23 1 1 1 2 pfet_cnrx $X=198220 $Y=480600 $D=645
M24 1 1 1 2 pfet_cnrx $X=198220 $Y=491400 $D=645
M25 1 1 1 2 pfet_cnrx $X=198220 $Y=502200 $D=645
M26 1 1 1 2 pfet_cnrx $X=198220 $Y=513000 $D=645
M27 1 1 1 2 pfet_cnrx $X=198220 $Y=534600 $D=645
M28 1 1 1 2 pfet_cnrx $X=198220 $Y=545400 $D=645
M29 1 1 1 2 pfet_cnrx $X=208660 $Y=472500 $D=645
M30 1 1 1 2 pfet_cnrx $X=208660 $Y=483300 $D=645
M31 1 1 1 2 pfet_cnrx $X=208660 $Y=504900 $D=645
M32 1 1 1 2 pfet_cnrx $X=208660 $Y=515700 $D=645
M33 1 1 1 2 pfet_cnrx $X=208660 $Y=526500 $D=645
M34 1 1 1 2 pfet_cnrx $X=208660 $Y=537300 $D=645
M35 1 1 1 2 pfet_cnrx $X=208660 $Y=548100 $D=645
M36 1 1 1 2 pfet_cnrx $X=216780 $Y=523800 $D=645
M37 1 1 1 2 pfet_cnrx $X=237660 $Y=494100 $D=645
M38 1 1 1 2 pfet_cnrx $X=245780 $Y=472500 $D=645
M39 191 1 1 2 pfet_cnrx $X=249260 $Y=480600 $D=645
M40 1 1 1 2 pfet_cnrx $X=249260 $Y=491400 $D=645
M41 1 1 1 2 pfet_cnrx $X=249260 $Y=502200 $D=645
M42 1 1 1 2 pfet_cnrx $X=249260 $Y=513000 $D=645
M43 192 1 1 2 pfet_cnrx $X=249260 $Y=523800 $D=645
M44 1 1 1 2 pfet_cnrx $X=249260 $Y=534600 $D=645
M45 1 1 1 2 pfet_cnrx $X=249260 $Y=545400 $D=645
M46 1 1 1 2 pfet_cnrx $X=251580 $Y=494100 $D=645
M47 193 1 1 2 pfet_cnrx $X=252740 $Y=472500 $D=645
M48 194 1 1 2 pfet_cnrx $X=252740 $Y=494100 $D=645
M49 1 1 1 2 pfet_cnrx $X=284060 $Y=480600 $D=645
M50 1 1 1 2 pfet_cnrx $X=284060 $Y=523800 $D=645
M51 1 1 1 2 pfet_cnrx $X=299140 $Y=472500 $D=645
M52 1 1 1 2 pfet_cnrx $X=299140 $Y=494100 $D=645
M53 1 1 1 2 pfet_cnrx $X=313060 $Y=494100 $D=645
M54 195 1 1 2 pfet_cnrx $X=314220 $Y=494100 $D=645
M55 1 1 1 2 pfet_cnrx $X=357140 $Y=483300 $D=645
M56 1 1 1 2 pfet_cnrx $X=357140 $Y=504900 $D=645
M57 1 1 1 2 pfet_cnrx $X=357140 $Y=515700 $D=645
M58 1 1 1 2 pfet_cnrx $X=357140 $Y=526500 $D=645
M59 1 1 1 2 pfet_cnrx $X=357140 $Y=537300 $D=645
M60 1 1 1 2 pfet_cnrx $X=357140 $Y=548100 $D=645
M61 1 1 1 2 pfet_cnrx $X=358300 $Y=523800 $D=645
M62 1 1 1 2 pfet_cnrx $X=360620 $Y=494100 $D=645
M63 1 1 1 2 pfet_cnrx $X=373380 $Y=472500 $D=645
M64 196 1 1 2 pfet_cnrx $X=374540 $Y=494100 $D=645
M65 1 1 1 2 pfet_cnrx $X=376860 $Y=523800 $D=645
M66 197 1 1 2 pfet_cnrx $X=382660 $Y=523800 $D=645
M67 1 1 1 2 pfet_cnrx $X=397740 $Y=491400 $D=645
M68 1 1 1 2 pfet_cnrx $X=397740 $Y=502200 $D=645
M69 1 1 1 2 pfet_cnrx $X=397740 $Y=513000 $D=645
M70 1 1 1 2 pfet_cnrx $X=397740 $Y=534600 $D=645
M71 1 1 1 2 pfet_cnrx $X=397740 $Y=545400 $D=645
M72 1 1 1 2 pfet_cnrx $X=410500 $Y=472500 $D=645
M73 1 1 1 2 pfet_cnrx $X=417460 $Y=523800 $D=645
M74 1 1 1 2 pfet_cnrx $X=420940 $Y=494100 $D=645
M75 1 1 1 2 pfet_cnrx $X=429060 $Y=472500 $D=645
M76 1 1 1 2 pfet_cnrx $X=431380 $Y=483300 $D=645
M77 1 1 1 2 pfet_cnrx $X=431380 $Y=504900 $D=645
M78 1 1 1 2 pfet_cnrx $X=431380 $Y=515700 $D=645
M79 1 1 1 2 pfet_cnrx $X=431380 $Y=526500 $D=645
M80 1 1 1 2 pfet_cnrx $X=431380 $Y=537300 $D=645
M81 1 1 1 2 pfet_cnrx $X=431380 $Y=548100 $D=645
M82 1 1 1 2 pfet_cnrx $X=432540 $Y=480600 $D=645
M83 1 1 1 2 pfet_cnrx $X=434860 $Y=491400 $D=645
M84 198 1 1 2 pfet_cnrx $X=436020 $Y=491400 $D=645
M85 1 1 1 2 pfet_cnrx $X=448780 $Y=472500 $D=645
M86 1 1 1 2 pfet_cnrx $X=448780 $Y=483300 $D=645
M87 1 1 1 2 pfet_cnrx $X=448780 $Y=494100 $D=645
M88 1 1 1 2 pfet_cnrx $X=448780 $Y=504900 $D=645
M89 1 1 1 2 pfet_cnrx $X=448780 $Y=515700 $D=645
M90 1 1 1 2 pfet_cnrx $X=448780 $Y=526500 $D=645
M91 1 1 1 2 pfet_cnrx $X=448780 $Y=537300 $D=645
M92 1 1 1 2 pfet_cnrx $X=448780 $Y=548100 $D=645
M93 1 1 1 2 pfet_cnrx $X=482420 $Y=491400 $D=645
M94 1 1 1 2 pfet_cnrx $X=485900 $Y=494100 $D=645
M95 1 1 1 2 pfet_cnrx $X=506780 $Y=480600 $D=645
M96 1 1 1 2 pfet_cnrx $X=523020 $Y=472500 $D=645
M97 1 1 1 2 pfet_cnrx $X=523020 $Y=483300 $D=645
M98 1 1 1 2 pfet_cnrx $X=523020 $Y=504900 $D=645
M99 1 1 1 2 pfet_cnrx $X=523020 $Y=515700 $D=645
M100 1 1 1 2 pfet_cnrx $X=523020 $Y=526500 $D=645
M101 1 1 1 2 pfet_cnrx $X=523020 $Y=537300 $D=645
M102 1 1 1 2 pfet_cnrx $X=523020 $Y=548100 $D=645
M103 199 1 1 2 pfet_cnrx $X=532300 $Y=483300 $D=645
M104 200 1 1 2 pfet_cnrx $X=532300 $Y=548100 $D=645
M105 1 1 1 2 pfet_cnrx $X=543900 $Y=480600 $D=645
M106 1 1 1 2 pfet_cnrx $X=543900 $Y=494100 $D=645
M107 1 1 1 2 pfet_cnrx $X=546220 $Y=502200 $D=645
M108 1 1 1 2 pfet_cnrx $X=546220 $Y=513000 $D=645
M109 1 1 1 2 pfet_cnrx $X=546220 $Y=534600 $D=645
M110 1 1 1 2 pfet_cnrx $X=546220 $Y=545400 $D=645
M111 1 1 1 2 pfet_cnrx $X=556660 $Y=491400 $D=645
M112 1 1 1 2 pfet_cnrx $X=560140 $Y=472500 $D=645
M113 1 1 1 2 pfet_cnrx $X=560140 $Y=504900 $D=645
M114 1 1 1 2 pfet_cnrx $X=560140 $Y=515700 $D=645
M115 1 1 1 2 pfet_cnrx $X=560140 $Y=526500 $D=645
M116 1 1 1 2 pfet_cnrx $X=560140 $Y=537300 $D=645
M117 1 1 1 2 pfet_cnrx $X=562460 $Y=480600 $D=645
M118 1 1 1 2 pfet_cnrx $X=562460 $Y=494100 $D=645
M119 1 1 1 2 pfet_cnrx $X=578700 $Y=472500 $D=645
M120 1 1 1 2 pfet_cnrx $X=578700 $Y=480600 $D=645
M121 1 1 1 2 pfet_cnrx $X=578700 $Y=483300 $D=645
M122 1 1 1 2 pfet_cnrx $X=578700 $Y=491400 $D=645
M123 1 1 1 2 pfet_cnrx $X=578700 $Y=502200 $D=645
M124 1 1 1 2 pfet_cnrx $X=578700 $Y=504900 $D=645
M125 1 1 1 2 pfet_cnrx $X=578700 $Y=513000 $D=645
M126 1 1 1 2 pfet_cnrx $X=578700 $Y=515700 $D=645
M127 1 1 1 2 pfet_cnrx $X=578700 $Y=523800 $D=645
M128 1 1 1 2 pfet_cnrx $X=578700 $Y=526500 $D=645
M129 1 1 1 2 pfet_cnrx $X=578700 $Y=534600 $D=645
M130 1 1 1 2 pfet_cnrx $X=578700 $Y=537300 $D=645
M131 1 1 1 2 pfet_cnrx $X=578700 $Y=545400 $D=645
M132 1 1 1 2 pfet_cnrx $X=578700 $Y=548100 $D=645
M133 1 1 1 2 pfet_cnrx $X=49740 $Y=472500 $D=646
M134 1 1 1 2 pfet_cnrx $X=49740 $Y=483300 $D=646
M135 1 1 1 2 pfet_cnrx $X=49740 $Y=494100 $D=646
M136 1 1 1 2 pfet_cnrx $X=49740 $Y=504900 $D=646
M137 1 1 1 2 pfet_cnrx $X=49740 $Y=515700 $D=646
M138 1 1 1 2 pfet_cnrx $X=49740 $Y=526500 $D=646
M139 1 1 1 2 pfet_cnrx $X=49740 $Y=537300 $D=646
M140 1 1 1 2 pfet_cnrx $X=49740 $Y=548100 $D=646
M141 1 1 1 2 pfet_cnrx $X=105420 $Y=524100 $D=646
M142 202 1 1 2 pfet_cnrx $X=107740 $Y=524100 $D=646
M143 1 1 1 2 pfet_cnrx $X=235340 $Y=480900 $D=646
M144 1 1 1 2 pfet_cnrx $X=235340 $Y=491700 $D=646
M145 1 1 1 2 pfet_cnrx $X=235340 $Y=502500 $D=646
M146 1 1 1 2 pfet_cnrx $X=235340 $Y=513300 $D=646
M147 1 1 1 2 pfet_cnrx $X=235340 $Y=524100 $D=646
M148 1 1 1 2 pfet_cnrx $X=235340 $Y=534900 $D=646
M149 1 1 1 2 pfet_cnrx $X=235340 $Y=545700 $D=646
M150 1 1 1 2 pfet_cnrx $X=238820 $Y=481000 $D=646
M151 1 1 1 2 pfet_cnrx $X=238820 $Y=491800 $D=646
M152 1 1 1 2 pfet_cnrx $X=238820 $Y=502600 $D=646
M153 1 1 1 2 pfet_cnrx $X=238820 $Y=513400 $D=646
M154 1 1 1 2 pfet_cnrx $X=238820 $Y=524200 $D=646
M155 1 1 1 2 pfet_cnrx $X=238820 $Y=535000 $D=646
M156 1 1 1 2 pfet_cnrx $X=238820 $Y=545800 $D=646
M157 1 1 1 2 pfet_cnrx $X=434860 $Y=494100 $D=646
M158 1 1 1 2 pfet_cnrx $X=438340 $Y=472500 $D=646
M159 1 1 1 2 pfet_cnrx $X=438340 $Y=483300 $D=646
M160 1 1 1 2 pfet_cnrx $X=438340 $Y=494100 $D=646
M161 1 1 1 2 pfet_cnrx $X=438340 $Y=504900 $D=646
M162 1 1 1 2 pfet_cnrx $X=438340 $Y=515700 $D=646
M163 1 1 1 2 pfet_cnrx $X=438340 $Y=526500 $D=646
M164 1 1 1 2 pfet_cnrx $X=438340 $Y=537300 $D=646
M165 1 1 1 2 pfet_cnrx $X=438340 $Y=548100 $D=646
M166 1 1 1 2 pfet_cnrx $X=495180 $Y=494100 $D=646
M167 201 1 1 2 pfet_cnrx $X=497500 $Y=494100 $D=646
M168 1 1 1 2 pfet_cnrx $X=564780 $Y=502500 $D=646
M169 1 1 1 2 pfet_cnrx $X=564780 $Y=513300 $D=646
M170 1 1 1 2 pfet_cnrx $X=564780 $Y=534900 $D=646
M171 1 1 1 2 pfet_cnrx $X=564780 $Y=545700 $D=646
M172 1 1 1 2 pfet_cnrx $X=565940 $Y=491700 $D=646
M173 1 1 1 2 pfet_cnrx $X=565940 $Y=524100 $D=646
M174 1 1 1 2 pfet_cnrx $X=568260 $Y=481000 $D=646
M175 1 1 1 2 pfet_cnrx $X=568260 $Y=491800 $D=646
M176 1 1 1 2 pfet_cnrx $X=568260 $Y=502600 $D=646
M177 1 1 1 2 pfet_cnrx $X=568260 $Y=513400 $D=646
M178 1 1 1 2 pfet_cnrx $X=568260 $Y=524200 $D=646
M179 1 1 1 2 pfet_cnrx $X=568260 $Y=535000 $D=646
M180 1 1 1 2 pfet_cnrx $X=568260 $Y=545800 $D=646
M181 1 1 1 2 pfet_cnrx $X=576380 $Y=494100 $D=646
M182 1 1 1 2 pfet_cnrx $X=578700 $Y=494100 $D=646
X183 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 477400 1 0 $X=578260 $Y=471700
X184 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 477400 0 0 $X=578260 $Y=477100
X185 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 488200 1 0 $X=578260 $Y=482500
X186 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 488200 0 0 $X=578260 $Y=487900
X187 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 499000 1 0 $X=578260 $Y=493300
X188 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 499000 0 0 $X=578260 $Y=498700
X189 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 509800 1 0 $X=578260 $Y=504100
X190 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 509800 0 0 $X=578260 $Y=509500
X191 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 520600 1 0 $X=578260 $Y=514900
X192 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 520600 0 0 $X=578260 $Y=520300
X193 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 531400 1 0 $X=578260 $Y=525700
X194 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 531400 0 0 $X=578260 $Y=531100
X195 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 542200 1 0 $X=578260 $Y=536500
X196 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 542200 0 0 $X=578260 $Y=541900
X197 2 1 2 2 UDB116SVT24_CAPR9_1 $T=578840 553000 1 0 $X=578260 $Y=547300
X198 2 1 2 UDB116SVT24_FILL2 $T=105560 520600 0 0 $X=104980 $Y=520300
X199 2 1 2 UDB116SVT24_FILL2 $T=495320 499000 1 0 $X=494740 $Y=493300
X200 2 1 2 UDB116SVT24_FILL2 $T=566080 488200 0 0 $X=565500 $Y=487900
X201 2 1 2 UDB116SVT24_FILL2 $T=566080 520600 0 0 $X=565500 $Y=520300
X202 2 1 2 UDB116SVT24_FILL2 $T=576520 499000 1 0 $X=575940 $Y=493300
X203 2 UDB116SVT24_TAPSS $T=49880 477400 1 0 $X=49300 $Y=471700
X204 2 UDB116SVT24_TAPSS $T=49880 488200 1 0 $X=49300 $Y=482500
X205 2 UDB116SVT24_TAPSS $T=49880 499000 1 0 $X=49300 $Y=493300
X206 2 UDB116SVT24_TAPSS $T=49880 509800 1 0 $X=49300 $Y=504100
X207 2 UDB116SVT24_TAPSS $T=49880 520600 1 0 $X=49300 $Y=514900
X208 2 UDB116SVT24_TAPSS $T=49880 531400 1 0 $X=49300 $Y=525700
X209 2 UDB116SVT24_TAPSS $T=49880 542200 1 0 $X=49300 $Y=536500
X210 2 UDB116SVT24_TAPSS $T=49880 553000 1 0 $X=49300 $Y=547300
X211 2 UDB116SVT24_TAPSS $T=238960 477400 0 0 $X=238380 $Y=477100
X212 2 UDB116SVT24_TAPSS $T=238960 488200 0 0 $X=238380 $Y=487900
X213 2 UDB116SVT24_TAPSS $T=238960 499000 0 0 $X=238380 $Y=498700
X214 2 UDB116SVT24_TAPSS $T=238960 509800 0 0 $X=238380 $Y=509500
X215 2 UDB116SVT24_TAPSS $T=238960 520600 0 0 $X=238380 $Y=520300
X216 2 UDB116SVT24_TAPSS $T=238960 531400 0 0 $X=238380 $Y=531100
X217 2 UDB116SVT24_TAPSS $T=238960 542200 0 0 $X=238380 $Y=541900
X218 2 UDB116SVT24_TAPSS $T=438480 477400 1 0 $X=437900 $Y=471700
X219 2 UDB116SVT24_TAPSS $T=438480 488200 1 0 $X=437900 $Y=482500
X220 2 UDB116SVT24_TAPSS $T=438480 499000 1 0 $X=437900 $Y=493300
X221 2 UDB116SVT24_TAPSS $T=438480 509800 1 0 $X=437900 $Y=504100
X222 2 UDB116SVT24_TAPSS $T=438480 520600 1 0 $X=437900 $Y=514900
X223 2 UDB116SVT24_TAPSS $T=438480 531400 1 0 $X=437900 $Y=525700
X224 2 UDB116SVT24_TAPSS $T=438480 542200 1 0 $X=437900 $Y=536500
X225 2 UDB116SVT24_TAPSS $T=438480 553000 1 0 $X=437900 $Y=547300
X226 2 UDB116SVT24_TAPSS $T=568400 477400 0 0 $X=567820 $Y=477100
X227 2 UDB116SVT24_TAPSS $T=568400 488200 0 0 $X=567820 $Y=487900
X228 2 UDB116SVT24_TAPSS $T=568400 499000 0 0 $X=567820 $Y=498700
X229 2 UDB116SVT24_TAPSS $T=568400 509800 0 0 $X=567820 $Y=509500
X230 2 UDB116SVT24_TAPSS $T=568400 520600 0 0 $X=567820 $Y=520300
X231 2 UDB116SVT24_TAPSS $T=568400 531400 0 0 $X=567820 $Y=531100
X232 2 UDB116SVT24_TAPSS $T=568400 542200 0 0 $X=567820 $Y=541900
X237 2 1 2 UDB116SVT24_FILL3 $T=235480 477400 0 0 $X=234900 $Y=477100
X238 2 1 2 UDB116SVT24_FILL3 $T=235480 488200 0 0 $X=234900 $Y=487900
X239 2 1 2 UDB116SVT24_FILL3 $T=235480 499000 0 0 $X=234900 $Y=498700
X240 2 1 2 UDB116SVT24_FILL3 $T=235480 509800 0 0 $X=234900 $Y=509500
X241 2 1 2 UDB116SVT24_FILL3 $T=235480 520600 0 0 $X=234900 $Y=520300
X242 2 1 2 UDB116SVT24_FILL3 $T=235480 531400 0 0 $X=234900 $Y=531100
X243 2 1 2 UDB116SVT24_FILL3 $T=235480 542200 0 0 $X=234900 $Y=541900
X244 2 1 2 UDB116SVT24_FILL3 $T=435000 499000 1 0 $X=434420 $Y=493300
X245 2 1 2 UDB116SVT24_FILL3 $T=564920 499000 0 0 $X=564340 $Y=498700
X246 2 1 2 UDB116SVT24_FILL3 $T=564920 509800 0 0 $X=564340 $Y=509500
X247 2 1 2 UDB116SVT24_FILL3 $T=564920 531400 0 0 $X=564340 $Y=531100
X248 2 1 2 UDB116SVT24_FILL3 $T=564920 542200 0 0 $X=564340 $Y=541900
X249 2 1 2 UDB116SVT24_FILL12 $T=116000 499000 1 0 $X=115420 $Y=493300
X250 2 1 2 UDB116SVT24_FILL12 $T=177480 499000 1 0 $X=176900 $Y=493300
X251 2 1 2 UDB116SVT24_FILL12 $T=237800 499000 1 0 $X=237220 $Y=493300
X252 2 1 2 UDB116SVT24_FILL12 $T=299280 499000 1 0 $X=298700 $Y=493300
X253 2 1 2 UDB116SVT24_FILL12 $T=360760 499000 1 0 $X=360180 $Y=493300
X254 2 1 2 UDB116SVT24_FILL12 $T=421080 499000 1 0 $X=420500 $Y=493300
X255 2 1 2 UDB116SVT24_FILL12 $T=562600 499000 1 0 $X=562020 $Y=493300
X256 2 1 2 UDB116SVT24_FILL6 $T=245920 477400 1 0 $X=245340 $Y=471700
X257 2 1 2 UDB116SVT24_FILL6 $T=431520 488200 1 0 $X=430940 $Y=482500
X258 2 1 2 UDB116SVT24_FILL6 $T=431520 509800 1 0 $X=430940 $Y=504100
X259 2 1 2 UDB116SVT24_FILL6 $T=431520 520600 1 0 $X=430940 $Y=514900
X260 2 1 2 UDB116SVT24_FILL6 $T=431520 531400 1 0 $X=430940 $Y=525700
X261 2 1 2 UDB116SVT24_FILL6 $T=431520 542200 1 0 $X=430940 $Y=536500
X262 2 1 2 UDB116SVT24_FILL6 $T=431520 553000 1 0 $X=430940 $Y=547300
X263 2 1 2 UDB116SVT24_FILL16 $T=87000 520600 0 0 $X=86420 $Y=520300
X264 2 1 2 UDB116SVT24_FILL16 $T=216920 520600 0 0 $X=216340 $Y=520300
X265 2 1 2 UDB116SVT24_FILL16 $T=358440 520600 0 0 $X=357860 $Y=520300
X266 2 1 2 UDB116SVT24_FILL16 $T=410640 477400 1 0 $X=410060 $Y=471700
X267 2 1 2 UDB116SVT24_FILL16 $T=544040 477400 0 0 $X=543460 $Y=477100
X268 2 1 2 UDB116SVT24_FILL16 $T=544040 499000 1 0 $X=543460 $Y=493300
X269 2 1 2 UDB116SVT24_FILL16 $T=546360 499000 0 0 $X=545780 $Y=498700
X270 2 1 2 UDB116SVT24_FILL16 $T=546360 509800 0 0 $X=545780 $Y=509500
X271 2 1 2 UDB116SVT24_FILL16 $T=546360 531400 0 0 $X=545780 $Y=531100
X272 2 1 2 UDB116SVT24_FILL16 $T=546360 542200 0 0 $X=545780 $Y=541900
X273 2 1 2 UDB116SVT24_FILL16 $T=560280 477400 1 0 $X=559700 $Y=471700
X274 2 1 2 UDB116SVT24_FILL16 $T=560280 509800 1 0 $X=559700 $Y=504100
X275 2 1 2 UDB116SVT24_FILL16 $T=560280 520600 1 0 $X=559700 $Y=514900
X276 2 1 2 UDB116SVT24_FILL16 $T=560280 531400 1 0 $X=559700 $Y=525700
X277 2 1 2 UDB116SVT24_FILL16 $T=560280 542200 1 0 $X=559700 $Y=536500
X278 2 1 2 UDB116SVT24_FILL8 $T=60320 499000 1 0 $X=59740 $Y=493300
X279 2 1 2 UDB116SVT24_FILL8 $T=429200 477400 1 0 $X=428620 $Y=471700
X280 2 1 2 UDB116SVT24_FILL8 $T=486040 499000 1 0 $X=485460 $Y=493300
X281 2 1 2 UDB116SVT24_FILL8 $T=523160 488200 1 0 $X=522580 $Y=482500
X282 2 1 2 UDB116SVT24_FILL8 $T=523160 553000 1 0 $X=522580 $Y=547300
X283 2 1 2 UDB116SVT24_FILL8 $T=556800 488200 0 0 $X=556220 $Y=487900
X284 2 1 2 UDB116SVT24_FILL32 $T=49880 520600 0 0 $X=49300 $Y=520300
X285 2 1 2 UDB116SVT24_FILL32 $T=198360 477400 0 0 $X=197780 $Y=477100
X286 2 1 2 UDB116SVT24_FILL32 $T=198360 488200 0 0 $X=197780 $Y=487900
X287 2 1 2 UDB116SVT24_FILL32 $T=198360 499000 0 0 $X=197780 $Y=498700
X288 2 1 2 UDB116SVT24_FILL32 $T=198360 509800 0 0 $X=197780 $Y=509500
X289 2 1 2 UDB116SVT24_FILL32 $T=198360 531400 0 0 $X=197780 $Y=531100
X290 2 1 2 UDB116SVT24_FILL32 $T=198360 542200 0 0 $X=197780 $Y=541900
X291 2 1 2 UDB116SVT24_FILL32 $T=208800 477400 1 0 $X=208220 $Y=471700
X292 2 1 2 UDB116SVT24_FILL32 $T=373520 477400 1 0 $X=372940 $Y=471700
X293 2 1 2 UDB116SVT24_FILL32 $T=397880 488200 0 0 $X=397300 $Y=487900
X294 2 1 2 UDB116SVT24_FILL32 $T=448920 499000 1 0 $X=448340 $Y=493300
X295 2 1 2 UDB116SVT24_FILL32 $T=506920 477400 0 0 $X=506340 $Y=477100
X296 2 1 2 UDB116SVT24_FILL32 $T=523160 477400 1 0 $X=522580 $Y=471700
X297 2 1 2 UDB116SVT24_FILL32 $T=523160 509800 1 0 $X=522580 $Y=504100
X298 2 1 2 UDB116SVT24_FILL32 $T=523160 520600 1 0 $X=522580 $Y=514900
X299 2 1 2 UDB116SVT24_FILL32 $T=523160 531400 1 0 $X=522580 $Y=525700
X300 2 1 2 UDB116SVT24_FILL32 $T=523160 542200 1 0 $X=522580 $Y=536500
X301 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=69600 499000 1 0 $X=69020 $Y=493300
X302 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=131080 499000 1 0 $X=130500 $Y=493300
X303 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=191400 499000 1 0 $X=190820 $Y=493300
X304 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=252880 477400 1 0 $X=252300 $Y=471700
X305 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=252880 499000 1 0 $X=252300 $Y=493300
X306 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=314360 499000 1 0 $X=313780 $Y=493300
X307 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=374680 499000 1 0 $X=374100 $Y=493300
X308 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=436160 488200 0 0 $X=435580 $Y=487900
X309 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=497640 499000 1 0 $X=497060 $Y=493300
X310 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=532440 488200 1 0 $X=531860 $Y=482500
X311 2 1 2 UDB116SVT24_DCAP_ECOCT_16 $T=532440 553000 1 0 $X=531860 $Y=547300
X312 2 1 2 UDB116SVT24_FILL64 $T=142680 520600 0 0 $X=142100 $Y=520300
X313 2 1 2 UDB116SVT24_FILL64 $T=284200 520600 0 0 $X=283620 $Y=520300
X314 2 1 2 UDB116SVT24_FILL64 $T=299280 477400 1 0 $X=298700 $Y=471700
X315 2 1 2 UDB116SVT24_FILL64 $T=357280 488200 1 0 $X=356700 $Y=482500
X316 2 1 2 UDB116SVT24_FILL64 $T=357280 509800 1 0 $X=356700 $Y=504100
X317 2 1 2 UDB116SVT24_FILL64 $T=357280 520600 1 0 $X=356700 $Y=514900
X318 2 1 2 UDB116SVT24_FILL64 $T=357280 531400 1 0 $X=356700 $Y=525700
X319 2 1 2 UDB116SVT24_FILL64 $T=357280 542200 1 0 $X=356700 $Y=536500
X320 2 1 2 UDB116SVT24_FILL64 $T=357280 553000 1 0 $X=356700 $Y=547300
X321 2 1 2 UDB116SVT24_FILL64 $T=432680 477400 0 0 $X=432100 $Y=477100
X322 2 1 2 UDB116SVT24_FILL64 $T=448920 477400 1 0 $X=448340 $Y=471700
X323 2 1 2 UDB116SVT24_FILL64 $T=448920 488200 1 0 $X=448340 $Y=482500
X324 2 1 2 UDB116SVT24_FILL64 $T=448920 509800 1 0 $X=448340 $Y=504100
X325 2 1 2 UDB116SVT24_FILL64 $T=448920 520600 1 0 $X=448340 $Y=514900
X326 2 1 2 UDB116SVT24_FILL64 $T=448920 531400 1 0 $X=448340 $Y=525700
X327 2 1 2 UDB116SVT24_FILL64 $T=448920 542200 1 0 $X=448340 $Y=536500
X328 2 1 2 UDB116SVT24_FILL64 $T=448920 553000 1 0 $X=448340 $Y=547300
X329 2 1 2 UDB116SVT24_FILL64 $T=482560 488200 0 0 $X=481980 $Y=487900
X330 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 477400 1 0 $X=39440 $Y=471700
X331 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 477400 0 0 $X=39440 $Y=477100
X332 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 488200 1 0 $X=39440 $Y=482500
X333 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 488200 0 0 $X=39440 $Y=487900
X334 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 499000 1 0 $X=39440 $Y=493300
X335 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 499000 0 0 $X=39440 $Y=498700
X336 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 509800 1 0 $X=39440 $Y=504100
X337 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 509800 0 0 $X=39440 $Y=509500
X338 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 520600 1 0 $X=39440 $Y=514900
X339 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 520600 0 0 $X=39440 $Y=520300
X340 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 531400 1 0 $X=39440 $Y=525700
X341 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 531400 0 0 $X=39440 $Y=531100
X342 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 542200 1 0 $X=39440 $Y=536500
X343 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 542200 0 0 $X=39440 $Y=541900
X344 2 1 2 2 UDB116SVT24_CAPL9_1 $T=39440 553000 1 0 $X=39440 $Y=547300
X345 2 1 2 UDB116SVT24_FILL5 $T=377000 520600 0 0 $X=376420 $Y=520300
X346 2 1 2 UDB116SVT24_FILL5 $T=562600 477400 0 0 $X=562020 $Y=477100
X347 2 1 ICV_7 $T=49880 477400 0 0 $X=49300 $Y=477100
X348 2 1 ICV_7 $T=49880 488200 0 0 $X=49300 $Y=487900
X349 2 1 ICV_7 $T=49880 499000 0 0 $X=49300 $Y=498700
X350 2 1 ICV_7 $T=49880 509800 0 0 $X=49300 $Y=509500
X351 2 1 ICV_7 $T=49880 531400 0 0 $X=49300 $Y=531100
X352 2 1 ICV_7 $T=49880 542200 0 0 $X=49300 $Y=541900
X353 2 1 ICV_7 $T=60320 477400 1 0 $X=59740 $Y=471700
X354 2 1 ICV_7 $T=60320 488200 1 0 $X=59740 $Y=482500
X355 2 1 ICV_7 $T=60320 509800 1 0 $X=59740 $Y=504100
X356 2 1 ICV_7 $T=60320 520600 1 0 $X=59740 $Y=514900
X357 2 1 ICV_7 $T=60320 531400 1 0 $X=59740 $Y=525700
X358 2 1 ICV_7 $T=60320 542200 1 0 $X=59740 $Y=536500
X359 2 1 ICV_7 $T=60320 553000 1 0 $X=59740 $Y=547300
X360 2 1 ICV_7 $T=208800 488200 1 0 $X=208220 $Y=482500
X361 2 1 ICV_7 $T=208800 509800 1 0 $X=208220 $Y=504100
X362 2 1 ICV_7 $T=208800 520600 1 0 $X=208220 $Y=514900
X363 2 1 ICV_7 $T=208800 531400 1 0 $X=208220 $Y=525700
X364 2 1 ICV_7 $T=208800 542200 1 0 $X=208220 $Y=536500
X365 2 1 ICV_7 $T=208800 553000 1 0 $X=208220 $Y=547300
X366 2 1 ICV_7 $T=249400 488200 0 0 $X=248820 $Y=487900
X367 2 1 ICV_7 $T=249400 499000 0 0 $X=248820 $Y=498700
X368 2 1 ICV_7 $T=249400 509800 0 0 $X=248820 $Y=509500
X369 2 1 ICV_7 $T=249400 531400 0 0 $X=248820 $Y=531100
X370 2 1 ICV_7 $T=249400 542200 0 0 $X=248820 $Y=541900
X371 2 1 ICV_7 $T=284200 477400 0 0 $X=283620 $Y=477100
X372 2 1 ICV_7 $T=397880 499000 0 0 $X=397300 $Y=498700
X373 2 1 ICV_7 $T=397880 509800 0 0 $X=397300 $Y=509500
X374 2 1 ICV_7 $T=397880 531400 0 0 $X=397300 $Y=531100
X375 2 1 ICV_7 $T=397880 542200 0 0 $X=397300 $Y=541900
X376 2 1 ICV_7 $T=417600 520600 0 0 $X=417020 $Y=520300
X377 2 1 2 UDB116SVT24_DCAP_ECOCT_12 $T=107880 520600 0 0 $X=107300 $Y=520300
X378 2 1 2 UDB116SVT24_DCAP_ECOCT_12 $T=249400 477400 0 0 $X=248820 $Y=477100
X379 2 1 2 UDB116SVT24_DCAP_ECOCT_12 $T=249400 520600 0 0 $X=248820 $Y=520300
X380 2 1 2 UDB116SVT24_DCAP_ECOCT_12 $T=382800 520600 0 0 $X=382220 $Y=520300
.ENDS
***************************************
.SUBCKT ICV_9 1 2
** N=6 EP=2 IP=14 FDC=189
M0 2 2 2 1 pfet_cnrx $X=74100 $Y=3200 $D=645
X1 1 2 1 UDB116SVT24_FILL32 $T=74240 0 0 0 $X=73660 $Y=-300
X2 1 2 1 UDB116SVT24_FILL64 $T=0 0 0 0 $X=-580 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_NR2_MM_0P75 VDD A2 X A1 VSS VNW_P
** N=12 EP=6 IP=0 FDC=4
*.CALIBRE ISOLATED NETS: VPW_N
M0 X A2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 VSS A1 X VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 11 A2 VDD VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3300 $D=641
M3 X A1 11 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3300 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_AOI21_MM_1 A2 A1 VDD X 5 B VSS VNW_P
** N=14 EP=8 IP=0 FDC=6
*.CALIBRE ISOLATED NETS: VPW_N
M0 13 A2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X A1 13 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 VSS B X VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 VDD A2 5 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3200 $D=641
M4 5 A1 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3200 $D=641
M5 X B 5 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3200 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_FILL4 VSS VDD VNW_P
** N=14 EP=3 IP=0 FDC=6
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 8 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M1 VSS 10 VSS VNW_P nfet_auxpc2 $X=2180 $Y=500 $D=537
M2 VSS 12 VSS VNW_P nfet_auxpc2 $X=3340 $Y=500 $D=537
M3 VDD 11 VDD VNW_P pfet_auxpc2 $X=2180 $Y=3850 $D=643
M4 VDD 9 VDD VNW_P pfet_auxpc2 $X=1020 $Y=3200 $D=644
M5 VDD 13 VDD VNW_P pfet_auxpc2 $X=3340 $Y=3850 $D=644
.ENDS
***************************************
.SUBCKT UDB116SVT24_NR2_0P75 VDD A2 X A1 VSS VNW_P
** N=12 EP=6 IP=0 FDC=4
*.CALIBRE ISOLATED NETS: VPW_N
M0 X A2 VSS VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 VSS A1 X VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 11 A2 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M3 X A1 11 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_AN2_MM_1 A2 A1 VSS VDD X VNW_P
** N=15 EP=6 IP=0 FDC=7
*.CALIBRE ISOLATED NETS: VPW_N
M0 14 A2 VSS VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 11 A1 14 VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X 11 VSS VNW_P nfet L=2.8e-08 W=1.1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M3 11 A2 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3500 $D=641
M4 VDD A1 11 VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3500 $D=641
M5 X 11 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3200 $D=641
M6 VDD 13 VDD VNW_P pfet_auxpc2 $X=3340 $Y=3500 $D=644
.ENDS
***************************************
.SUBCKT UDB116SVT24_ND2_MM_0P75 VSS A2 X A1 VDD VNW_P
** N=12 EP=6 IP=0 FDC=4
*.CALIBRE ISOLATED NETS: VPW_N
M0 11 A2 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X A1 11 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X A2 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3500 $D=641
M3 VDD A1 X VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3500 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_OAI31_1 A3 A2 A1 VSS X B VDD VNW_P
** N=16 EP=8 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 13 A3 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 VSS A2 13 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 13 A1 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 X B 13 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 14 A3 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3200 $D=641
M5 15 A2 14 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3200 $D=641
M6 X A1 15 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3200 $D=641
M7 VDD B X VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3200 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_BUF_L_1 A 2 VDD VSS X VNW_P
** N=13 EP=6 IP=0 FDC=4
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS A 2 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X 2 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M2 VDD A 2 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M3 X 2 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3200 $D=641
.ENDS
***************************************
.SUBCKT ICV_10 1 2 3 4
** N=10 EP=4 IP=17 FDC=7
M0 9 2 2 1 pfet_cnrx $X=2180 $Y=3500 $D=646
X1 1 2 1 UDB116SVT24_FILL2 $T=0 0 0 0 $X=-580 $Y=-300
X2 4 9 2 1 3 1 UDB116SVT24_BUF_L_1 $T=2320 0 0 0 $X=1740 $Y=-300
.ENDS
***************************************
.SUBCKT ICV_11 1 2 3 4
** N=10 EP=4 IP=17 FDC=11
M0 9 2 2 1 pfet_cnrx $X=4500 $Y=3400 $D=646
X1 1 2 1 UDB116SVT24_FILL4 $T=0 0 0 0 $X=-580 $Y=-300
X2 4 9 2 1 3 1 UDB116SVT24_BUF_L_1 $T=4640 0 0 0 $X=4060 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_INV_0P75 VSS VDD A X VNW_P
** N=10 EP=5 IP=0 FDC=2
*.CALIBRE ISOLATED NETS: VPW_N
M0 X A VSS VNW_P nfet L=2.8e-08 W=1.3e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X A VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_OAOI211_0P75 A2 A1 3 B VDD C VSS X VNW_P
** N=18 EP=9 IP=0 FDC=9
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS A2 14 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 14 A1 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X B 14 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 X C VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M4 16 A2 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3500 $D=641
M5 3 A1 16 VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3500 $D=641
M6 VDD B 3 VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3500 $D=641
M7 3 C X VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3400 $D=641
M8 X VDD VDD VNW_P pfet_cnrx $X=4500 $Y=3500 $D=646
.ENDS
***************************************
.SUBCKT UDB116SVT24_OR2_0P75 A1 2 A2 VDD VSS X VNW_P
** N=13 EP=7 IP=0 FDC=6
*.CALIBRE ISOLATED NETS: VPW_N
M0 2 A1 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 VSS A2 2 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X 2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 12 A1 2 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M4 VDD A2 12 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M5 X 2 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_OAI21_0P75 A2 A1 VSS X B VDD VNW_P
** N=14 EP=7 IP=0 FDC=6
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS A2 12 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 12 A1 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X B 12 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 13 A2 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3500 $D=641
M4 X A1 13 VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3500 $D=641
M5 VDD B X VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3500 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_BUF_1 A 2 VSS VDD X VNW_P
** N=11 EP=6 IP=0 FDC=4
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS A 2 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X 2 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 VDD A 2 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3200 $D=641
M3 X 2 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3200 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_AOAI211_0P75 A2 A1 3 B VSS VDD C X VNW_P
** N=17 EP=9 IP=0 FDC=9
*.CALIBRE ISOLATED NETS: VPW_N
M0 16 A2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 14 A1 16 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 VSS B 14 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 X C 14 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M4 VDD A2 3 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M5 3 A1 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M6 X B 3 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M7 X C VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3400 $D=641
M8 VDD VDD X VNW_P pfet_cnrx $X=4500 $Y=3400 $D=645
.ENDS
***************************************
.SUBCKT ICV_12 1 2 3 4
** N=10 EP=4 IP=17 FDC=5
M0 9 2 2 1 pfet_cnrx $X=1020 $Y=3400 $D=646
X2 4 9 2 1 3 1 UDB116SVT24_BUF_L_1 $T=1160 0 0 0 $X=580 $Y=-300
.ENDS
***************************************
.SUBCKT ICV_13 1 2 3 4 5 6
** N=10 EP=6 IP=14 FDC=11
M0 2 2 3 1 pfet_cnrx $X=5660 $Y=3200 $D=645
X1 1 2 3 5 ICV_12 $T=0 0 0 0 $X=-580 $Y=-300
X2 1 2 4 6 ICV_12 $T=5800 0 0 0 $X=5220 $Y=-300
.ENDS
***************************************
.SUBCKT ICV_14 1 2 3 4 5 6
*.CALIBRE ICV_CELL 9
** N=11 EP=6 IP=14 FDC=10
X0 1 2 3 5 ICV_12 $T=0 0 1 0 $X=-580 $Y=-5700
X1 1 2 4 6 ICV_12 $T=0 0 0 0 $X=-580 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_ND2B_0P75 A VSS X B VDD VNW_P
** N=15 EP=6 IP=0 FDC=7
*.CALIBRE ISOLATED NETS: VPW_N
M0 11 A VSS VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 13 11 VSS VNW_P nfet L=2.8e-08 W=1.1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M2 X B 13 VNW_P nfet L=2.8e-08 W=1.1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M3 11 A VDD VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3300 $D=641
M4 X 11 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3500 $D=641
M5 VDD B X VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3500 $D=641
M6 VDD VDD 11 VNW_P pfet_cnrx $X=2180 $Y=3500 $D=646
.ENDS
***************************************
.SUBCKT ICV_15 1 2 3 4
** N=10 EP=4 IP=17 FDC=9
M0 9 2 2 1 pfet_cnrx $X=3340 $Y=3500 $D=646
X1 1 2 1 UDB116SVT24_FILL3 $T=0 0 0 0 $X=-580 $Y=-300
X2 4 9 2 1 3 1 UDB116SVT24_BUF_L_1 $T=3480 0 0 0 $X=2900 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_FDPRBQ_V2_1 D 2 RD Q CK VDD VSS VNW_P
** N=33 EP=8 IP=0 FDC=31
*.CALIBRE ISOLATED NETS: VPW_N
M0 13 D VSS VNW_P nfet L=2.8e-08 W=1.16e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 15 2 13 VNW_P nfet L=2.8e-08 W=1.16e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M2 26 14 15 VNW_P nfet L=2.8e-08 W=1.16e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M3 27 RD 26 VNW_P nfet L=2.8e-08 W=1.16e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M4 VSS 17 27 VNW_P nfet L=2.8e-08 W=1.16e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=500 $D=533
M5 17 15 VSS VNW_P nfet L=2.8e-08 W=1.16e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=7980 $Y=500 $D=533
M6 18 14 17 VNW_P nfet L=2.8e-08 W=1.16e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=10300 $Y=500 $D=533
M7 28 2 18 VNW_P nfet L=2.8e-08 W=1.16e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=11460 $Y=500 $D=533
M8 VSS 20 28 VNW_P nfet L=2.8e-08 W=1.16e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=12620 $Y=500 $D=533
M9 14 2 VSS VNW_P nfet L=2.8e-08 W=1.16e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=13780 $Y=500 $D=533
M10 29 18 20 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=16100 $Y=500 $D=533
M11 VSS RD 29 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=17260 $Y=500 $D=533
M12 Q 20 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=18420 $Y=500 $D=533
M13 2 CK VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=20740 $Y=500 $D=533
M14 30 D VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M15 15 14 30 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M16 16 2 15 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M17 16 RD VDD VNW_P pfet L=2.8e-08 W=1.15e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3750 $D=641
M18 VDD 17 16 VNW_P pfet L=2.8e-08 W=1.15e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=3750 $D=641
M19 17 15 VDD VNW_P pfet L=2.8e-08 W=1.15e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=7980 $Y=3750 $D=641
M20 18 2 17 VNW_P pfet L=2.8e-08 W=1.15e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=9140 $Y=3750 $D=641
M21 19 14 18 VNW_P pfet L=2.8e-08 W=1.15e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=10300 $Y=3750 $D=641
M22 VDD 20 19 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=12620 $Y=3400 $D=641
M23 14 2 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=13780 $Y=3400 $D=641
M24 20 18 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=16100 $Y=3200 $D=641
M25 VDD RD 20 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=17260 $Y=3200 $D=641
M26 Q 20 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=18420 $Y=3200 $D=641
M27 2 CK VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=20740 $Y=3200 $D=641
M28 VDD VDD Q VNW_P pfet_cnrx $X=19580 $Y=3200 $D=645
M29 VDD VDD 16 VNW_P pfet_cnrx $X=4500 $Y=3750 $D=646
M30 VDD VDD 14 VNW_P pfet_cnrx $X=14940 $Y=3400 $D=646
.ENDS
***************************************
.SUBCKT ICV_16 1 2 3 4 5 6 7 8 9 10
** N=17 EP=10 IP=22 FDC=22
M0 1 1 3 2 pfet_cnrx $X=5660 $Y=-4900 $D=645
M1 1 1 4 2 pfet_cnrx $X=5660 $Y=3200 $D=645
X2 2 1 3 4 7 8 ICV_14 $T=0 0 0 0 $X=-580 $Y=-5700
X3 2 1 5 6 9 10 ICV_14 $T=5800 0 0 0 $X=5220 $Y=-5700
.ENDS
***************************************
.SUBCKT UDB116SVT24_AOI22_0P75 B2 B1 VDD A1 X A2 7 VSS VNW_P
** N=16 EP=9 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 14 B2 VSS VNW_P nfet L=2.8e-08 W=1.1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X B1 14 VNW_P nfet L=2.8e-08 W=1.1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 15 A1 X VNW_P nfet L=2.8e-08 W=1.1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 VSS A2 15 VNW_P nfet L=2.8e-08 W=1.1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 VDD B2 7 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3300 $D=641
M5 7 B1 VDD VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3300 $D=641
M6 X A1 7 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3300 $D=641
M7 7 A2 X VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3300 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_OA22_1 A2 A1 B1 B2 VSS VDD X VNW_P
** N=19 EP=8 IP=0 FDC=11
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS A2 14 VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 14 A1 VSS VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 13 B1 14 VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 14 B2 13 VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 X 13 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=500 $D=533
M5 17 A2 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M6 13 A1 17 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M7 18 B1 13 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M8 VDD B2 18 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3400 $D=641
M9 X 13 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=3200 $D=641
M10 VDD 16 VDD VNW_P pfet_auxpc2 $X=5660 $Y=3400 $D=644
.ENDS
***************************************
.SUBCKT UDB116SVT24_TIEDIN_1 X VSS VNW_P
** N=23 EP=3 IP=0 FDC=4
*.CALIBRE ISOLATED NETS: VDD VPW_N
X0 VNW_P X tdndsx area=1.7388e-14 perim=5.28e-07 m=1 $X=4620 $Y=1860 $D=38
X1 VNW_P VSS tdndsx area=1.7388e-14 perim=5.28e-07 m=1 $X=6880 $Y=1860 $D=38
M2 VSS 9 VSS VNW_P nfet_auxpc2 $X=1020 $Y=500 $D=537
M3 VSS 17 VSS VNW_P nfet_auxpc2 $X=11460 $Y=500 $D=537
.ENDS
***************************************
.SUBCKT UDB116SVT24_ND4_0P75 VSS A4 A3 X A2 A1 VDD VNW_P
** N=16 EP=8 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 13 A4 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 14 A3 13 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 15 A2 14 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 X A1 15 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 X A4 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3500 $D=641
M5 VDD A3 X VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3500 $D=641
M6 X A2 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3500 $D=641
M7 VDD A1 X VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3500 $D=641
.ENDS
***************************************
.SUBCKT ICV_17 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
+ 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
+ 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80
+ 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100
+ 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120
+ 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140
+ 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160
+ 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180
+ 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200
+ 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220
+ 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240
+ 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260
+ 261 262 263 264 265 266 267 268 269 270 271 272 273 275 276
*.CALIBRE ICV_CELL 2
** N=1404 EP=275 IP=4346 FDC=11253
M0 290 15 1 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=360620 $Y=400300 $D=533
M1 1157 290 288 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=362940 $Y=400300 $D=533
M2 1158 16 1157 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=364100 $Y=400300 $D=533
M3 1 292 1158 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=365260 $Y=400300 $D=533
M4 300 301 1 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=413980 $Y=391500 $D=533
M5 302 27 301 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=416300 $Y=391500 $D=533
M6 1 26 302 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=417460 $Y=391500 $D=533
M7 302 28 1 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=418620 $Y=391500 $D=533
M8 1 29 302 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=419780 $Y=391500 $D=533
M9 290 15 30 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=360620 $Y=396900 $D=641
M10 288 290 30 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=362940 $Y=396900 $D=641
M11 30 16 288 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=364100 $Y=396900 $D=641
M12 288 292 30 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=365260 $Y=396900 $D=641
M13 300 301 30 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=413980 $Y=394200 $D=641
M14 301 27 30 1 pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=416300 $Y=394500 $D=641
M15 1175 26 301 1 pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=417460 $Y=394500 $D=641
M16 1176 28 1175 1 pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=418620 $Y=394500 $D=641
M17 30 29 1176 1 pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=419780 $Y=394500 $D=641
M18 30 30 30 1 pfet_cnrx $X=49740 $Y=394200 $D=645
M19 30 30 30 1 pfet_cnrx $X=49740 $Y=405000 $D=645
M20 30 30 30 1 pfet_cnrx $X=49740 $Y=415800 $D=645
M21 30 30 30 1 pfet_cnrx $X=49740 $Y=426600 $D=645
M22 30 30 30 1 pfet_cnrx $X=49740 $Y=437400 $D=645
M23 30 30 30 1 pfet_cnrx $X=49740 $Y=448200 $D=645
M24 30 30 30 1 pfet_cnrx $X=49740 $Y=459000 $D=645
M25 30 30 30 1 pfet_cnrx $X=49740 $Y=469800 $D=645
M26 30 30 30 1 pfet_cnrx $X=60180 $Y=396900 $D=645
M27 30 30 30 1 pfet_cnrx $X=60180 $Y=407700 $D=645
M28 30 30 30 1 pfet_cnrx $X=60180 $Y=418500 $D=645
M29 30 30 30 1 pfet_cnrx $X=60180 $Y=429300 $D=645
M30 30 30 30 1 pfet_cnrx $X=60180 $Y=440100 $D=645
M31 30 30 30 1 pfet_cnrx $X=60180 $Y=450900 $D=645
M32 30 30 30 1 pfet_cnrx $X=60180 $Y=461700 $D=645
M33 30 30 30 1 pfet_cnrx $X=63660 $Y=394200 $D=645
M34 1159 30 30 1 pfet_cnrx $X=64820 $Y=394200 $D=645
M35 30 30 30 1 pfet_cnrx $X=68300 $Y=437400 $D=645
M36 1160 30 30 1 pfet_cnrx $X=69460 $Y=437400 $D=645
M37 30 30 30 1 pfet_cnrx $X=86860 $Y=405000 $D=645
M38 30 30 30 1 pfet_cnrx $X=97300 $Y=396900 $D=645
M39 30 30 30 1 pfet_cnrx $X=97300 $Y=407700 $D=645
M40 30 30 30 1 pfet_cnrx $X=97300 $Y=418500 $D=645
M41 30 30 30 1 pfet_cnrx $X=97300 $Y=429300 $D=645
M42 30 30 30 1 pfet_cnrx $X=97300 $Y=450900 $D=645
M43 30 30 30 1 pfet_cnrx $X=104260 $Y=418500 $D=645
M44 30 30 30 1 pfet_cnrx $X=105420 $Y=405000 $D=645
M45 1161 30 30 1 pfet_cnrx $X=105420 $Y=418500 $D=645
M46 1162 30 30 1 pfet_cnrx $X=111220 $Y=429300 $D=645
M47 30 30 32 1 pfet_cnrx $X=115860 $Y=394200 $D=645
M48 30 30 30 1 pfet_cnrx $X=115860 $Y=396900 $D=645
M49 30 30 30 1 pfet_cnrx $X=115860 $Y=407700 $D=645
M50 30 30 30 1 pfet_cnrx $X=115860 $Y=437400 $D=645
M51 30 30 30 1 pfet_cnrx $X=115860 $Y=450900 $D=645
M52 30 30 30 1 pfet_cnrx $X=123980 $Y=415800 $D=645
M53 30 30 30 1 pfet_cnrx $X=123980 $Y=426600 $D=645
M54 30 30 30 1 pfet_cnrx $X=123980 $Y=469800 $D=645
M55 30 30 402 1 pfet_cnrx $X=127460 $Y=394200 $D=645
M56 30 30 43 1 pfet_cnrx $X=128620 $Y=396900 $D=645
M57 30 30 44 1 pfet_cnrx $X=128620 $Y=405000 $D=645
M58 30 30 30 1 pfet_cnrx $X=129780 $Y=450900 $D=645
M59 30 30 30 1 pfet_cnrx $X=130940 $Y=415800 $D=645
M60 1163 30 30 1 pfet_cnrx $X=130940 $Y=450900 $D=645
M61 30 30 30 1 pfet_cnrx $X=134420 $Y=437400 $D=645
M62 30 30 30 1 pfet_cnrx $X=134420 $Y=440100 $D=645
M63 30 30 492 1 pfet_cnrx $X=140220 $Y=396900 $D=645
M64 30 30 142 1 pfet_cnrx $X=140220 $Y=405000 $D=645
M65 30 30 468 1 pfet_cnrx $X=141380 $Y=394200 $D=645
M66 30 30 30 1 pfet_cnrx $X=142540 $Y=426600 $D=645
M67 30 30 131 1 pfet_cnrx $X=144860 $Y=407700 $D=645
M68 30 30 305 1 pfet_cnrx $X=144860 $Y=418500 $D=645
M69 30 30 306 1 pfet_cnrx $X=150660 $Y=405000 $D=645
M70 30 30 99 1 pfet_cnrx $X=151820 $Y=396900 $D=645
M71 30 30 35 1 pfet_cnrx $X=152980 $Y=426600 $D=645
M72 30 30 30 1 pfet_cnrx $X=152980 $Y=440100 $D=645
M73 30 30 132 1 pfet_cnrx $X=155300 $Y=394200 $D=645
M74 30 30 404 1 pfet_cnrx $X=156460 $Y=407700 $D=645
M75 30 30 359 1 pfet_cnrx $X=156460 $Y=415800 $D=645
M76 30 30 307 1 pfet_cnrx $X=156460 $Y=418500 $D=645
M77 30 30 469 1 pfet_cnrx $X=156460 $Y=437400 $D=645
M78 30 30 79 1 pfet_cnrx $X=161100 $Y=394200 $D=645
M79 30 30 30 1 pfet_cnrx $X=161100 $Y=448200 $D=645
M80 30 30 30 1 pfet_cnrx $X=161100 $Y=459000 $D=645
M81 283 30 30 1 pfet_cnrx $X=162260 $Y=394200 $D=645
M82 30 30 406 1 pfet_cnrx $X=162260 $Y=405000 $D=645
M83 30 30 308 1 pfet_cnrx $X=162260 $Y=429300 $D=645
M84 30 30 80 1 pfet_cnrx $X=162260 $Y=437400 $D=645
M85 30 30 343 1 pfet_cnrx $X=162260 $Y=440100 $D=645
M86 30 30 101 1 pfet_cnrx $X=164580 $Y=426600 $D=645
M87 30 30 496 1 pfet_cnrx $X=168060 $Y=407700 $D=645
M88 30 30 495 1 pfet_cnrx $X=168060 $Y=415800 $D=645
M89 30 30 408 1 pfet_cnrx $X=168060 $Y=418500 $D=645
M90 30 30 30 1 pfet_cnrx $X=170380 $Y=448200 $D=645
M91 30 30 57 1 pfet_cnrx $X=171540 $Y=429300 $D=645
M92 30 30 344 1 pfet_cnrx $X=171540 $Y=437400 $D=645
M93 30 30 30 1 pfet_cnrx $X=171540 $Y=440100 $D=645
M94 30 30 30 1 pfet_cnrx $X=171540 $Y=461700 $D=645
M95 30 30 103 1 pfet_cnrx $X=173860 $Y=405000 $D=645
M96 30 30 30 1 pfet_cnrx $X=175020 $Y=459000 $D=645
M97 1164 30 30 1 pfet_cnrx $X=176180 $Y=459000 $D=645
M98 30 30 30 1 pfet_cnrx $X=177340 $Y=450900 $D=645
M99 30 30 498 1 pfet_cnrx $X=179660 $Y=407700 $D=645
M100 30 30 144 1 pfet_cnrx $X=179660 $Y=415800 $D=645
M101 30 30 30 1 pfet_cnrx $X=180820 $Y=394500 $D=645
M102 30 30 324 1 pfet_cnrx $X=180820 $Y=418500 $D=645
M103 1165 30 30 1 pfet_cnrx $X=181980 $Y=459000 $D=645
M104 30 30 502 1 pfet_cnrx $X=183140 $Y=429300 $D=645
M105 30 30 501 1 pfet_cnrx $X=183140 $Y=437400 $D=645
M106 30 30 104 1 pfet_cnrx $X=183140 $Y=440100 $D=645
M107 30 30 134 1 pfet_cnrx $X=184300 $Y=448200 $D=645
M108 30 30 542 1 pfet_cnrx $X=185460 $Y=396900 $D=645
M109 1166 30 30 1 pfet_cnrx $X=187780 $Y=459000 $D=645
M110 30 30 309 1 pfet_cnrx $X=188940 $Y=450900 $D=645
M111 30 30 30 1 pfet_cnrx $X=190100 $Y=461700 $D=645
M112 30 30 505 1 pfet_cnrx $X=191260 $Y=407700 $D=645
M113 30 30 504 1 pfet_cnrx $X=191260 $Y=415800 $D=645
M114 1167 30 30 1 pfet_cnrx $X=191260 $Y=461700 $D=645
M115 30 30 345 1 pfet_cnrx $X=192420 $Y=440100 $D=645
M116 1168 30 30 1 pfet_cnrx $X=193580 $Y=459000 $D=645
M117 30 30 509 1 pfet_cnrx $X=194740 $Y=429300 $D=645
M118 30 30 508 1 pfet_cnrx $X=194740 $Y=437400 $D=645
M119 30 30 37 1 pfet_cnrx $X=194740 $Y=448200 $D=645
M120 30 30 367 1 pfet_cnrx $X=194740 $Y=450900 $D=645
M121 30 30 414 1 pfet_cnrx $X=197060 $Y=396900 $D=645
M122 30 30 326 1 pfet_cnrx $X=197060 $Y=426600 $D=645
M123 30 30 512 1 pfet_cnrx $X=202860 $Y=407700 $D=645
M124 30 30 511 1 pfet_cnrx $X=202860 $Y=415800 $D=645
M125 30 30 346 1 pfet_cnrx $X=204020 $Y=448200 $D=645
M126 30 30 347 1 pfet_cnrx $X=204020 $Y=450900 $D=645
M127 30 30 516 1 pfet_cnrx $X=206340 $Y=429300 $D=645
M128 30 30 515 1 pfet_cnrx $X=206340 $Y=437400 $D=645
M129 30 30 543 1 pfet_cnrx $X=207500 $Y=405000 $D=645
M130 30 30 135 1 pfet_cnrx $X=207500 $Y=459000 $D=645
M131 30 30 30 1 pfet_cnrx $X=209820 $Y=418500 $D=645
M132 30 30 136 1 pfet_cnrx $X=210980 $Y=426600 $D=645
M133 30 30 470 1 pfet_cnrx $X=212140 $Y=440100 $D=645
M134 30 30 520 1 pfet_cnrx $X=214460 $Y=407700 $D=645
M135 30 30 519 1 pfet_cnrx $X=214460 $Y=415800 $D=645
M136 30 30 417 1 pfet_cnrx $X=215620 $Y=448200 $D=645
M137 30 30 108 1 pfet_cnrx $X=215620 $Y=450900 $D=645
M138 30 30 327 1 pfet_cnrx $X=216780 $Y=418500 $D=645
M139 30 30 369 1 pfet_cnrx $X=217940 $Y=440100 $D=645
M140 30 30 420 1 pfet_cnrx $X=219100 $Y=405000 $D=645
M141 30 30 328 1 pfet_cnrx $X=219100 $Y=429300 $D=645
M142 30 30 46 1 pfet_cnrx $X=219100 $Y=437400 $D=645
M143 30 30 422 1 pfet_cnrx $X=219100 $Y=459000 $D=645
M144 30 30 370 1 pfet_cnrx $X=221420 $Y=450900 $D=645
M145 1042 30 30 1 pfet_cnrx $X=222580 $Y=450900 $D=645
M146 30 30 348 1 pfet_cnrx $X=223740 $Y=415800 $D=645
M147 30 30 329 1 pfet_cnrx $X=223740 $Y=426600 $D=645
M148 30 30 372 1 pfet_cnrx $X=224900 $Y=459000 $D=645
M149 30 30 423 1 pfet_cnrx $X=226060 $Y=407700 $D=645
M150 30 30 38 1 pfet_cnrx $X=226060 $Y=448200 $D=645
M151 30 30 58 1 pfet_cnrx $X=227220 $Y=440100 $D=645
M152 30 30 360 1 pfet_cnrx $X=228380 $Y=418500 $D=645
M153 30 30 59 1 pfet_cnrx $X=228380 $Y=429300 $D=645
M154 30 30 30 1 pfet_cnrx $X=228380 $Y=450900 $D=645
M155 30 30 84 1 pfet_cnrx $X=229540 $Y=415800 $D=645
M156 30 30 85 1 pfet_cnrx $X=229540 $Y=426600 $D=645
M157 30 30 545 1 pfet_cnrx $X=230700 $Y=396900 $D=645
M158 30 30 47 1 pfet_cnrx $X=231860 $Y=405000 $D=645
M159 30 30 30 1 pfet_cnrx $X=231860 $Y=459000 $D=645
M160 30 30 30 1 pfet_cnrx $X=233020 $Y=448200 $D=645
M161 30 30 374 1 pfet_cnrx $X=237660 $Y=405000 $D=645
M162 30 30 425 1 pfet_cnrx $X=237660 $Y=407700 $D=645
M163 30 30 30 1 pfet_cnrx $X=237660 $Y=461700 $D=645
M164 30 30 310 1 pfet_cnrx $X=238820 $Y=429300 $D=645
M165 30 30 426 1 pfet_cnrx $X=239980 $Y=418500 $D=645
M166 30 30 49 1 pfet_cnrx $X=239980 $Y=440100 $D=645
M167 30 30 137 1 pfet_cnrx $X=243460 $Y=450900 $D=645
M168 30 30 287 1 pfet_cnrx $X=244620 $Y=429300 $D=645
M169 1043 30 30 1 pfet_cnrx $X=249260 $Y=394200 $D=645
M170 30 30 30 1 pfet_cnrx $X=249260 $Y=415800 $D=645
M171 30 30 62 1 pfet_cnrx $X=249260 $Y=440100 $D=645
M172 30 30 30 1 pfet_cnrx $X=249260 $Y=469800 $D=645
M173 313 30 30 1 pfet_cnrx $X=250420 $Y=440100 $D=645
M174 30 30 311 1 pfet_cnrx $X=251580 $Y=461700 $D=645
M175 30 30 74 1 pfet_cnrx $X=252740 $Y=394200 $D=645
M176 30 30 331 1 pfet_cnrx $X=252740 $Y=418500 $D=645
M177 30 30 40 1 pfet_cnrx $X=253900 $Y=426600 $D=645
M178 30 30 312 1 pfet_cnrx $X=255060 $Y=429300 $D=645
M179 30 30 138 1 pfet_cnrx $X=257380 $Y=437400 $D=645
M180 30 30 472 1 pfet_cnrx $X=257380 $Y=448200 $D=645
M181 30 30 473 1 pfet_cnrx $X=257380 $Y=450900 $D=645
M182 30 30 474 1 pfet_cnrx $X=257380 $Y=459000 $D=645
M183 30 30 87 1 pfet_cnrx $X=258540 $Y=394200 $D=645
M184 30 30 350 1 pfet_cnrx $X=258540 $Y=415800 $D=645
M185 30 30 88 1 pfet_cnrx $X=260860 $Y=429300 $D=645
M186 30 30 41 1 pfet_cnrx $X=260860 $Y=469800 $D=645
M187 30 30 50 1 pfet_cnrx $X=262020 $Y=440100 $D=645
M188 30 30 378 1 pfet_cnrx $X=263180 $Y=437400 $D=645
M189 30 30 430 1 pfet_cnrx $X=263180 $Y=461700 $D=645
M190 30 30 51 1 pfet_cnrx $X=266660 $Y=426600 $D=645
M191 30 30 351 1 pfet_cnrx $X=266660 $Y=459000 $D=645
M192 30 30 153 1 pfet_cnrx $X=267820 $Y=394200 $D=645
M193 30 30 432 1 pfet_cnrx $X=268980 $Y=448200 $D=645
M194 30 30 114 1 pfet_cnrx $X=268980 $Y=450900 $D=645
M195 30 30 63 1 pfet_cnrx $X=270140 $Y=429300 $D=645
M196 30 30 30 1 pfet_cnrx $X=270140 $Y=461700 $D=645
M197 30 30 547 1 pfet_cnrx $X=271300 $Y=407700 $D=645
M198 30 30 332 1 pfet_cnrx $X=271300 $Y=415800 $D=645
M199 30 30 475 1 pfet_cnrx $X=272460 $Y=418500 $D=645
M200 30 30 30 1 pfet_cnrx $X=273620 $Y=469800 $D=645
M201 30 30 476 1 pfet_cnrx $X=275940 $Y=440100 $D=645
M202 30 30 435 1 pfet_cnrx $X=278260 $Y=459000 $D=645
M203 30 30 438 1 pfet_cnrx $X=280580 $Y=450900 $D=645
M204 30 30 64 1 pfet_cnrx $X=281740 $Y=418500 $D=645
M205 30 30 440 1 pfet_cnrx $X=281740 $Y=429300 $D=645
M206 30 30 442 1 pfet_cnrx $X=281740 $Y=461700 $D=645
M207 30 30 522 1 pfet_cnrx $X=282900 $Y=407700 $D=645
M208 30 30 148 1 pfet_cnrx $X=282900 $Y=415800 $D=645
M209 30 30 531 1 pfet_cnrx $X=284060 $Y=396900 $D=645
M210 30 30 381 1 pfet_cnrx $X=284060 $Y=459000 $D=645
M211 30 30 314 1 pfet_cnrx $X=284060 $Y=469800 $D=645
M212 30 30 315 1 pfet_cnrx $X=286380 $Y=440100 $D=645
M213 30 30 382 1 pfet_cnrx $X=286380 $Y=450900 $D=645
M214 30 30 90 1 pfet_cnrx $X=287540 $Y=429300 $D=645
M215 30 30 479 1 pfet_cnrx $X=288700 $Y=437400 $D=645
M216 30 30 139 1 pfet_cnrx $X=288700 $Y=448200 $D=645
M217 30 30 384 1 pfet_cnrx $X=289860 $Y=469800 $D=645
M218 30 30 443 1 pfet_cnrx $X=293340 $Y=418500 $D=645
M219 30 30 149 1 pfet_cnrx $X=294500 $Y=415800 $D=645
M220 30 30 334 1 pfet_cnrx $X=294500 $Y=461700 $D=645
M221 30 30 444 1 pfet_cnrx $X=295660 $Y=396900 $D=645
M222 30 30 480 1 pfet_cnrx $X=295660 $Y=426600 $D=645
M223 30 30 353 1 pfet_cnrx $X=295660 $Y=450900 $D=645
M224 30 30 354 1 pfet_cnrx $X=296820 $Y=429300 $D=645
M225 30 30 118 1 pfet_cnrx $X=297980 $Y=440100 $D=645
M226 30 30 385 1 pfet_cnrx $X=299140 $Y=418500 $D=645
M227 30 30 119 1 pfet_cnrx $X=300300 $Y=448200 $D=645
M228 30 30 52 1 pfet_cnrx $X=301460 $Y=407700 $D=645
M229 30 30 335 1 pfet_cnrx $X=301460 $Y=437400 $D=645
M230 30 30 481 1 pfet_cnrx $X=302620 $Y=459000 $D=645
M231 1045 30 30 1 pfet_cnrx $X=303780 $Y=459000 $D=645
M232 30 30 447 1 pfet_cnrx $X=307260 $Y=396900 $D=645
M233 30 30 336 1 pfet_cnrx $X=307260 $Y=415800 $D=645
M234 30 30 449 1 pfet_cnrx $X=307260 $Y=426600 $D=645
M235 30 30 451 1 pfet_cnrx $X=307260 $Y=450900 $D=645
M236 30 30 482 1 pfet_cnrx $X=308420 $Y=461700 $D=645
M237 30 30 121 1 pfet_cnrx $X=311900 $Y=448200 $D=645
M238 30 30 337 1 pfet_cnrx $X=313060 $Y=405000 $D=645
M239 30 30 387 1 pfet_cnrx $X=313060 $Y=426600 $D=645
M240 30 30 388 1 pfet_cnrx $X=313060 $Y=450900 $D=645
M241 30 30 389 1 pfet_cnrx $X=314220 $Y=461700 $D=645
M242 30 30 483 1 pfet_cnrx $X=315380 $Y=459000 $D=645
M243 30 30 140 1 pfet_cnrx $X=316540 $Y=429300 $D=645
M244 30 30 318 1 pfet_cnrx $X=317700 $Y=415800 $D=645
M245 1047 30 30 1 pfet_cnrx $X=318860 $Y=450900 $D=645
M246 30 30 338 1 pfet_cnrx $X=320020 $Y=437400 $D=645
M247 30 30 339 1 pfet_cnrx $X=322340 $Y=440100 $D=645
M248 30 30 391 1 pfet_cnrx $X=323500 $Y=415800 $D=645
M249 30 30 340 1 pfet_cnrx $X=323500 $Y=418500 $D=645
M250 30 30 319 1 pfet_cnrx $X=323500 $Y=426600 $D=645
M251 30 30 456 1 pfet_cnrx $X=323500 $Y=448200 $D=645
M252 30 30 123 1 pfet_cnrx $X=328140 $Y=429300 $D=645
M253 30 30 320 1 pfet_cnrx $X=333940 $Y=415800 $D=645
M254 30 30 393 1 pfet_cnrx $X=333940 $Y=429300 $D=645
M255 30 30 459 1 pfet_cnrx $X=333940 $Y=440100 $D=645
M256 30 30 553 1 pfet_cnrx $X=337420 $Y=396900 $D=645
M257 30 30 341 1 pfet_cnrx $X=339740 $Y=437400 $D=645
M258 30 30 92 1 pfet_cnrx $X=339740 $Y=440100 $D=645
M259 30 30 554 1 pfet_cnrx $X=340900 $Y=405000 $D=645
M260 30 30 555 1 pfet_cnrx $X=340900 $Y=407700 $D=645
M261 30 30 487 1 pfet_cnrx $X=343220 $Y=418500 $D=645
M262 30 30 141 1 pfet_cnrx $X=343220 $Y=426600 $D=645
M263 30 30 67 1 pfet_cnrx $X=343220 $Y=429300 $D=645
M264 30 30 342 1 pfet_cnrx $X=346700 $Y=415800 $D=645
M265 30 30 321 1 pfet_cnrx $X=347860 $Y=396900 $D=645
M266 30 30 42 1 pfet_cnrx $X=350180 $Y=437400 $D=645
M267 30 30 30 1 pfet_cnrx $X=351340 $Y=461700 $D=645
M268 30 30 356 1 pfet_cnrx $X=352500 $Y=418500 $D=645
M269 30 30 488 1 pfet_cnrx $X=354820 $Y=407700 $D=645
M270 30 30 125 1 pfet_cnrx $X=354820 $Y=426600 $D=645
M271 30 30 54 1 pfet_cnrx $X=355980 $Y=429300 $D=645
M272 30 30 556 1 pfet_cnrx $X=360620 $Y=394200 $D=645
M273 30 30 399 1 pfet_cnrx $X=360620 $Y=407700 $D=645
M274 30 30 489 1 pfet_cnrx $X=360620 $Y=415800 $D=645
M275 30 30 290 1 pfet_cnrx $X=361780 $Y=396900 $D=645
M276 30 30 400 1 pfet_cnrx $X=361780 $Y=429300 $D=645
M277 30 30 461 1 pfet_cnrx $X=364100 $Y=418500 $D=645
M278 30 30 30 1 pfet_cnrx $X=364100 $Y=469800 $D=645
M279 30 30 467 1 pfet_cnrx $X=366420 $Y=407700 $D=645
M280 30 30 129 1 pfet_cnrx $X=366420 $Y=415800 $D=645
M281 30 30 126 1 pfet_cnrx $X=366420 $Y=426600 $D=645
M282 943 30 30 1 pfet_cnrx $X=367580 $Y=405200 $D=645
M283 30 30 30 1 pfet_cnrx $X=368740 $Y=437400 $D=645
M284 30 30 1170 1 pfet_cnrx $X=369900 $Y=448200 $D=645
M285 30 30 30 1 pfet_cnrx $X=369900 $Y=461700 $D=645
M286 30 30 322 1 pfet_cnrx $X=372220 $Y=405000 $D=645
M287 1172 30 30 1 pfet_cnrx $X=374540 $Y=437400 $D=645
M288 30 30 464 1 pfet_cnrx $X=375700 $Y=418500 $D=645
M289 76 30 30 1 pfet_cnrx $X=378020 $Y=394200 $D=645
M290 30 30 30 1 pfet_cnrx $X=378020 $Y=405300 $D=645
M291 1173 30 30 1 pfet_cnrx $X=382660 $Y=418500 $D=645
M292 30 30 30 1 pfet_cnrx $X=387300 $Y=407700 $D=645
M293 30 30 30 1 pfet_cnrx $X=389620 $Y=459000 $D=645
M294 30 30 30 1 pfet_cnrx $X=393100 $Y=396900 $D=645
M295 30 30 56 1 pfet_cnrx $X=394260 $Y=407700 $D=645
M296 30 30 30 1 pfet_cnrx $X=398900 $Y=396900 $D=645
M297 30 30 30 1 pfet_cnrx $X=413980 $Y=440100 $D=645
M298 30 30 30 1 pfet_cnrx $X=417460 $Y=418500 $D=645
M299 30 30 30 1 pfet_cnrx $X=419780 $Y=461700 $D=645
M300 30 30 30 1 pfet_cnrx $X=420940 $Y=415800 $D=645
M301 30 30 30 1 pfet_cnrx $X=420940 $Y=437400 $D=645
M302 30 30 30 1 pfet_cnrx $X=430220 $Y=396900 $D=645
M303 30 30 30 1 pfet_cnrx $X=431380 $Y=407700 $D=645
M304 30 30 30 1 pfet_cnrx $X=432540 $Y=440100 $D=645
M305 30 30 30 1 pfet_cnrx $X=434860 $Y=437400 $D=645
M306 1177 30 30 1 pfet_cnrx $X=436020 $Y=437400 $D=645
M307 30 30 30 1 pfet_cnrx $X=437180 $Y=396900 $D=645
M308 30 30 30 1 pfet_cnrx $X=437180 $Y=450900 $D=645
M309 30 30 30 1 pfet_cnrx $X=438340 $Y=469800 $D=645
M310 30 30 30 1 pfet_cnrx $X=440660 $Y=426600 $D=645
M311 30 30 30 1 pfet_cnrx $X=444140 $Y=448200 $D=645
M312 30 30 30 1 pfet_cnrx $X=448780 $Y=396900 $D=645
M313 30 30 30 1 pfet_cnrx $X=448780 $Y=407700 $D=645
M314 30 30 30 1 pfet_cnrx $X=448780 $Y=418500 $D=645
M315 30 30 30 1 pfet_cnrx $X=448780 $Y=429300 $D=645
M316 30 30 30 1 pfet_cnrx $X=448780 $Y=440100 $D=645
M317 30 30 30 1 pfet_cnrx $X=448780 $Y=450900 $D=645
M318 30 30 30 1 pfet_cnrx $X=448780 $Y=461700 $D=645
M319 30 30 30 1 pfet_cnrx $X=463860 $Y=459000 $D=645
M320 30 30 30 1 pfet_cnrx $X=474300 $Y=405000 $D=645
M321 30 30 30 1 pfet_cnrx $X=482420 $Y=437400 $D=645
M322 30 30 30 1 pfet_cnrx $X=496340 $Y=437400 $D=645
M323 1178 30 30 1 pfet_cnrx $X=497500 $Y=437400 $D=645
M324 30 30 30 1 pfet_cnrx $X=523020 $Y=429300 $D=645
M325 30 30 30 1 pfet_cnrx $X=532300 $Y=394200 $D=645
M326 30 30 30 1 pfet_cnrx $X=532300 $Y=415800 $D=645
M327 1179 30 30 1 pfet_cnrx $X=532300 $Y=429300 $D=645
M328 30 30 30 1 pfet_cnrx $X=538100 $Y=459000 $D=645
M329 30 30 30 1 pfet_cnrx $X=543900 $Y=437400 $D=645
M330 30 30 30 1 pfet_cnrx $X=548540 $Y=405000 $D=645
M331 30 30 30 1 pfet_cnrx $X=549700 $Y=469800 $D=645
M332 30 30 30 1 pfet_cnrx $X=550860 $Y=394200 $D=645
M333 30 30 30 1 pfet_cnrx $X=550860 $Y=415800 $D=645
M334 30 30 30 1 pfet_cnrx $X=552020 $Y=426600 $D=645
M335 30 30 30 1 pfet_cnrx $X=555500 $Y=448200 $D=645
M336 30 30 30 1 pfet_cnrx $X=556660 $Y=459000 $D=645
M337 30 30 30 1 pfet_cnrx $X=560140 $Y=396900 $D=645
M338 30 30 30 1 pfet_cnrx $X=560140 $Y=407700 $D=645
M339 30 30 30 1 pfet_cnrx $X=560140 $Y=418500 $D=645
M340 30 30 30 1 pfet_cnrx $X=560140 $Y=440100 $D=645
M341 30 30 30 1 pfet_cnrx $X=560140 $Y=450900 $D=645
M342 30 30 30 1 pfet_cnrx $X=560140 $Y=461700 $D=645
M343 30 30 30 1 pfet_cnrx $X=562460 $Y=437400 $D=645
M344 30 30 30 1 pfet_cnrx $X=567100 $Y=405000 $D=645
M345 30 30 30 1 pfet_cnrx $X=578700 $Y=394200 $D=645
M346 30 30 30 1 pfet_cnrx $X=578700 $Y=396900 $D=645
M347 30 30 30 1 pfet_cnrx $X=578700 $Y=405000 $D=645
M348 30 30 30 1 pfet_cnrx $X=578700 $Y=407700 $D=645
M349 30 30 30 1 pfet_cnrx $X=578700 $Y=415800 $D=645
M350 30 30 30 1 pfet_cnrx $X=578700 $Y=418500 $D=645
M351 30 30 30 1 pfet_cnrx $X=578700 $Y=426600 $D=645
M352 30 30 30 1 pfet_cnrx $X=578700 $Y=429300 $D=645
M353 30 30 30 1 pfet_cnrx $X=578700 $Y=437400 $D=645
M354 30 30 30 1 pfet_cnrx $X=578700 $Y=440100 $D=645
M355 30 30 30 1 pfet_cnrx $X=578700 $Y=448200 $D=645
M356 30 30 30 1 pfet_cnrx $X=578700 $Y=450900 $D=645
M357 30 30 30 1 pfet_cnrx $X=578700 $Y=459000 $D=645
M358 30 30 30 1 pfet_cnrx $X=578700 $Y=461700 $D=645
M359 30 30 30 1 pfet_cnrx $X=578700 $Y=469800 $D=645
M360 30 30 30 1 pfet_cnrx $X=49740 $Y=396900 $D=646
M361 30 30 30 1 pfet_cnrx $X=49740 $Y=407700 $D=646
M362 30 30 30 1 pfet_cnrx $X=49740 $Y=418500 $D=646
M363 30 30 30 1 pfet_cnrx $X=49740 $Y=429300 $D=646
M364 30 30 30 1 pfet_cnrx $X=49740 $Y=440100 $D=646
M365 30 30 30 1 pfet_cnrx $X=49740 $Y=450900 $D=646
M366 30 30 30 1 pfet_cnrx $X=49740 $Y=461700 $D=646
M367 890 30 30 1 pfet_cnrx $X=111220 $Y=394400 $D=646
M368 30 30 30 1 pfet_cnrx $X=114700 $Y=405300 $D=646
M369 30 30 366 1 pfet_cnrx $X=121660 $Y=396900 $D=646
M370 30 30 323 1 pfet_cnrx $X=121660 $Y=405300 $D=646
M371 892 30 30 1 pfet_cnrx $X=125140 $Y=407700 $D=646
M372 30 30 33 1 pfet_cnrx $X=129780 $Y=407700 $D=646
M373 30 30 77 1 pfet_cnrx $X=133260 $Y=394500 $D=646
M374 30 30 45 1 pfet_cnrx $X=136740 $Y=407700 $D=646
M375 894 30 30 1 pfet_cnrx $X=140220 $Y=418500 $D=646
M376 30 30 97 1 pfet_cnrx $X=142540 $Y=416100 $D=646
M377 895 30 30 1 pfet_cnrx $X=146020 $Y=405200 $D=646
M378 34 30 30 1 pfet_cnrx $X=146020 $Y=416100 $D=646
M379 30 30 78 1 pfet_cnrx $X=147180 $Y=394500 $D=646
M380 898 30 30 1 pfet_cnrx $X=148340 $Y=426800 $D=646
M381 30 30 30 1 pfet_cnrx $X=148340 $Y=437700 $D=646
M382 30 30 897 1 pfet_cnrx $X=150660 $Y=416100 $D=646
M383 900 30 30 1 pfet_cnrx $X=151820 $Y=418500 $D=646
M384 1038 30 30 1 pfet_cnrx $X=152980 $Y=416100 $D=646
M385 902 30 30 1 pfet_cnrx $X=157620 $Y=429300 $D=646
M386 30 30 358 1 pfet_cnrx $X=163420 $Y=396900 $D=646
M387 30 30 1040 1 pfet_cnrx $X=165740 $Y=394500 $D=646
M388 528 30 30 1 pfet_cnrx $X=169220 $Y=394500 $D=646
M389 904 30 30 1 pfet_cnrx $X=170380 $Y=426800 $D=646
M390 30 30 81 1 pfet_cnrx $X=173860 $Y=418500 $D=646
M391 30 30 36 1 pfet_cnrx $X=175020 $Y=426900 $D=646
M392 30 30 82 1 pfet_cnrx $X=176180 $Y=448500 $D=646
M393 30 30 30 1 pfet_cnrx $X=177340 $Y=394500 $D=646
M394 30 30 133 1 pfet_cnrx $X=183140 $Y=426900 $D=646
M395 906 30 30 1 pfet_cnrx $X=184300 $Y=450900 $D=646
M396 30 30 411 1 pfet_cnrx $X=185460 $Y=405200 $D=646
M397 30 30 30 1 pfet_cnrx $X=186620 $Y=394500 $D=646
M398 30 30 30 1 pfet_cnrx $X=187780 $Y=394400 $D=646
M399 30 30 325 1 pfet_cnrx $X=190100 $Y=426900 $D=646
M400 908 30 30 1 pfet_cnrx $X=190100 $Y=448400 $D=646
M401 30 30 413 1 pfet_cnrx $X=192420 $Y=418500 $D=646
M402 30 30 30 1 pfet_cnrx $X=199380 $Y=459300 $D=646
M403 30 30 6 1 pfet_cnrx $X=200540 $Y=418500 $D=646
M404 1041 30 30 1 pfet_cnrx $X=202860 $Y=418500 $D=646
M405 30 30 368 1 pfet_cnrx $X=202860 $Y=426900 $D=646
M406 30 30 107 1 pfet_cnrx $X=204020 $Y=440100 $D=646
M407 30 30 72 1 pfet_cnrx $X=206340 $Y=418500 $D=646
M408 30 30 4 1 pfet_cnrx $X=208660 $Y=396900 $D=646
M409 30 30 544 1 pfet_cnrx $X=209820 $Y=394400 $D=646
M410 30 30 466 1 pfet_cnrx $X=212140 $Y=429300 $D=646
M411 30 30 128 1 pfet_cnrx $X=212140 $Y=437700 $D=646
M412 30 30 83 1 pfet_cnrx $X=216780 $Y=426900 $D=646
M413 910 30 30 1 pfet_cnrx $X=221420 $Y=448400 $D=646
M414 30 30 371 1 pfet_cnrx $X=224900 $Y=405300 $D=646
M415 911 30 30 1 pfet_cnrx $X=226060 $Y=437600 $D=646
M416 30 30 361 1 pfet_cnrx $X=226060 $Y=450900 $D=646
M417 30 30 39 1 pfet_cnrx $X=230700 $Y=437700 $D=646
M418 30 30 546 1 pfet_cnrx $X=231860 $Y=394500 $D=646
M419 30 30 373 1 pfet_cnrx $X=233020 $Y=440100 $D=646
M420 913 30 30 1 pfet_cnrx $X=234180 $Y=429300 $D=646
M421 30 30 48 1 pfet_cnrx $X=235340 $Y=450900 $D=646
M422 30 30 30 1 pfet_cnrx $X=235340 $Y=470100 $D=646
M423 30 30 330 1 pfet_cnrx $X=238820 $Y=394600 $D=646
M424 30 30 30 1 pfet_cnrx $X=238820 $Y=405400 $D=646
M425 30 30 60 1 pfet_cnrx $X=238820 $Y=416200 $D=646
M426 30 30 349 1 pfet_cnrx $X=238820 $Y=427000 $D=646
M427 30 30 471 1 pfet_cnrx $X=238820 $Y=437800 $D=646
M428 30 30 375 1 pfet_cnrx $X=238820 $Y=448600 $D=646
M429 30 30 30 1 pfet_cnrx $X=238820 $Y=459400 $D=646
M430 30 30 30 1 pfet_cnrx $X=238820 $Y=470200 $D=646
M431 30 30 61 1 pfet_cnrx $X=239980 $Y=396900 $D=646
M432 30 30 86 1 pfet_cnrx $X=245780 $Y=418500 $D=646
M433 915 30 30 1 pfet_cnrx $X=246940 $Y=461700 $D=646
M434 30 30 529 1 pfet_cnrx $X=248100 $Y=396900 $D=646
M435 30 30 30 1 pfet_cnrx $X=249260 $Y=405300 $D=646
M436 30 30 428 1 pfet_cnrx $X=249260 $Y=407700 $D=646
M437 917 30 30 1 pfet_cnrx $X=249260 $Y=426800 $D=646
M438 30 30 30 1 pfet_cnrx $X=249260 $Y=437700 $D=646
M439 30 30 30 1 pfet_cnrx $X=249260 $Y=448500 $D=646
M440 30 30 376 1 pfet_cnrx $X=249260 $Y=450900 $D=646
M441 30 30 30 1 pfet_cnrx $X=249260 $Y=459300 $D=646
M442 30 30 30 1 pfet_cnrx $X=250420 $Y=396900 $D=646
M443 919 30 30 1 pfet_cnrx $X=250420 $Y=429300 $D=646
M444 549 30 30 1 pfet_cnrx $X=251580 $Y=405300 $D=646
M445 30 30 922 1 pfet_cnrx $X=255060 $Y=440100 $D=646
M446 923 30 30 1 pfet_cnrx $X=256220 $Y=470000 $D=646
M447 30 30 30 1 pfet_cnrx $X=259700 $Y=394400 $D=646
M448 30 30 377 1 pfet_cnrx $X=259700 $Y=426900 $D=646
M449 30 30 379 1 pfet_cnrx $X=264340 $Y=416100 $D=646
M450 30 30 112 1 pfet_cnrx $X=264340 $Y=418500 $D=646
M451 30 30 380 1 pfet_cnrx $X=267820 $Y=440100 $D=646
M452 30 30 548 1 pfet_cnrx $X=272460 $Y=396900 $D=646
M453 30 30 89 1 pfet_cnrx $X=272460 $Y=426900 $D=646
M454 30 30 352 1 pfet_cnrx $X=272460 $Y=437700 $D=646
M455 30 30 8 1 pfet_cnrx $X=273620 $Y=394400 $D=646
M456 30 30 30 1 pfet_cnrx $X=273620 $Y=405200 $D=646
M457 30 30 30 1 pfet_cnrx $X=275940 $Y=396900 $D=646
M458 5 30 30 1 pfet_cnrx $X=278260 $Y=405200 $D=646
M459 925 30 30 1 pfet_cnrx $X=279420 $Y=470000 $D=646
M460 30 30 30 1 pfet_cnrx $X=280580 $Y=405300 $D=646
M461 30 30 477 1 pfet_cnrx $X=280580 $Y=426900 $D=646
M462 30 30 478 1 pfet_cnrx $X=280580 $Y=437700 $D=646
M463 30 30 115 1 pfet_cnrx $X=280580 $Y=448500 $D=646
M464 30 30 530 1 pfet_cnrx $X=281740 $Y=394500 $D=646
M465 927 30 30 1 pfet_cnrx $X=281740 $Y=440100 $D=646
M466 30 30 30 1 pfet_cnrx $X=284060 $Y=394500 $D=646
M467 30 30 30 1 pfet_cnrx $X=284060 $Y=405300 $D=646
M468 30 30 333 1 pfet_cnrx $X=287540 $Y=426900 $D=646
M469 30 30 383 1 pfet_cnrx $X=287540 $Y=461700 $D=646
M470 929 30 30 1 pfet_cnrx $X=289860 $Y=459200 $D=646
M471 30 30 525 1 pfet_cnrx $X=294500 $Y=407700 $D=646
M472 30 30 362 1 pfet_cnrx $X=294500 $Y=437700 $D=646
M473 30 30 316 1 pfet_cnrx $X=294500 $Y=459300 $D=646
M474 30 30 91 1 pfet_cnrx $X=300300 $Y=416100 $D=646
M475 30 30 386 1 pfet_cnrx $X=300300 $Y=461700 $D=646
M476 30 30 550 1 pfet_cnrx $X=306100 $Y=394500 $D=646
M477 30 30 551 1 pfet_cnrx $X=306100 $Y=405300 $D=646
M478 30 30 65 1 pfet_cnrx $X=307260 $Y=440100 $D=646
M479 30 30 363 1 pfet_cnrx $X=307260 $Y=459300 $D=646
M480 30 30 30 1 pfet_cnrx $X=308420 $Y=394500 $D=646
M481 30 30 66 1 pfet_cnrx $X=308420 $Y=418500 $D=646
M482 30 30 453 1 pfet_cnrx $X=308420 $Y=429300 $D=646
M483 1169 30 30 1 pfet_cnrx $X=308420 $Y=396900 $D=646
M484 30 30 355 1 pfet_cnrx $X=310740 $Y=407700 $D=646
M485 317 30 30 1 pfet_cnrx $X=310740 $Y=440100 $D=646
M486 933 30 30 1 pfet_cnrx $X=313060 $Y=416000 $D=646
M487 30 30 455 1 pfet_cnrx $X=313060 $Y=437700 $D=646
M488 30 30 1169 1 pfet_cnrx $X=314220 $Y=396900 $D=646
M489 30 30 30 1 pfet_cnrx $X=315380 $Y=396900 $D=646
M490 30 30 932 1 pfet_cnrx $X=315380 $Y=440100 $D=646
M491 30 30 484 1 pfet_cnrx $X=316540 $Y=418500 $D=646
M492 30 30 390 1 pfet_cnrx $X=318860 $Y=405200 $D=646
M493 30 30 485 1 pfet_cnrx $X=318860 $Y=407700 $D=646
M494 935 30 30 1 pfet_cnrx $X=318860 $Y=426800 $D=646
M495 30 30 365 1 pfet_cnrx $X=322340 $Y=450900 $D=646
M496 30 30 392 1 pfet_cnrx $X=325820 $Y=437700 $D=646
M497 30 30 30 1 pfet_cnrx $X=325820 $Y=450900 $D=646
M498 937 30 30 1 pfet_cnrx $X=329300 $Y=416000 $D=646
M499 30 30 552 1 pfet_cnrx $X=330460 $Y=394500 $D=646
M500 30 30 53 1 pfet_cnrx $X=332780 $Y=437700 $D=646
M501 30 30 151 1 pfet_cnrx $X=335100 $Y=418500 $D=646
M502 30 30 150 1 pfet_cnrx $X=335100 $Y=426900 $D=646
M503 30 30 486 1 pfet_cnrx $X=338580 $Y=394400 $D=646
M504 30 30 394 1 pfet_cnrx $X=339740 $Y=416100 $D=646
M505 939 30 30 1 pfet_cnrx $X=343220 $Y=396900 $D=646
M506 941 30 30 1 pfet_cnrx $X=345540 $Y=437600 $D=646
M507 30 30 395 1 pfet_cnrx $X=346700 $Y=405300 $D=646
M508 30 30 396 1 pfet_cnrx $X=346700 $Y=407700 $D=646
M509 30 30 93 1 pfet_cnrx $X=349020 $Y=429300 $D=646
M510 30 30 30 1 pfet_cnrx $X=351340 $Y=405300 $D=646
M511 30 30 397 1 pfet_cnrx $X=352500 $Y=416100 $D=646
M512 30 30 398 1 pfet_cnrx $X=353660 $Y=396900 $D=646
M513 540 30 30 1 pfet_cnrx $X=355980 $Y=405200 $D=646
M514 30 30 30 1 pfet_cnrx $X=359460 $Y=396900 $D=646
M515 30 30 1182 1 pfet_cnrx $X=362940 $Y=405300 $D=646
M516 289 30 30 1 pfet_cnrx $X=365260 $Y=405300 $D=646
M517 30 30 401 1 pfet_cnrx $X=366420 $Y=394500 $D=646
M518 30 30 288 1 pfet_cnrx $X=366420 $Y=396900 $D=646
M519 294 30 30 1 pfet_cnrx $X=367580 $Y=396900 $D=646
M520 69 30 30 1 pfet_cnrx $X=368740 $Y=394500 $D=646
M521 30 30 30 1 pfet_cnrx $X=371060 $Y=394500 $D=646
M522 30 30 94 1 pfet_cnrx $X=372220 $Y=416100 $D=646
M523 30 30 30 1 pfet_cnrx $X=373380 $Y=394500 $D=646
M524 30 30 30 1 pfet_cnrx $X=373380 $Y=405300 $D=646
M525 30 30 1171 1 pfet_cnrx $X=374540 $Y=396900 $D=646
M526 1180 30 30 1 pfet_cnrx $X=374540 $Y=416100 $D=646
M527 30 30 30 1 pfet_cnrx $X=375700 $Y=396900 $D=646
M528 30 30 303 1 pfet_cnrx $X=376860 $Y=394300 $D=646
M529 30 30 127 1 pfet_cnrx $X=378020 $Y=407700 $D=646
M530 295 30 30 1 pfet_cnrx $X=379180 $Y=396900 $D=646
M531 30 30 30 1 pfet_cnrx $X=379180 $Y=461700 $D=646
M532 30 30 1048 1 pfet_cnrx $X=381500 $Y=394300 $D=646
M533 30 30 30 1 pfet_cnrx $X=382660 $Y=407700 $D=646
M534 30 30 30 1 pfet_cnrx $X=382660 $Y=461700 $D=646
M535 30 30 1035 1 pfet_cnrx $X=383820 $Y=396900 $D=646
M536 30 30 30 1 pfet_cnrx $X=383820 $Y=407700 $D=646
M537 30 30 55 1 pfet_cnrx $X=384980 $Y=405200 $D=646
M538 30 30 298 1 pfet_cnrx $X=384980 $Y=394500 $D=646
M539 1174 30 30 1 pfet_cnrx $X=384980 $Y=396900 $D=646
M540 297 30 30 1 pfet_cnrx $X=387300 $Y=394500 $D=646
M541 30 30 357 1 pfet_cnrx $X=387300 $Y=405200 $D=646
M542 30 30 30 1 pfet_cnrx $X=391940 $Y=396900 $D=646
M543 30 30 68 1 pfet_cnrx $X=396580 $Y=405300 $D=646
M544 30 30 30 1 pfet_cnrx $X=396580 $Y=394300 $D=646
M545 30 30 30 1 pfet_cnrx $X=397740 $Y=394500 $D=646
M546 30 30 30 1 pfet_cnrx $X=400060 $Y=396900 $D=646
M547 30 30 30 1 pfet_cnrx $X=400060 $Y=405300 $D=646
M548 30 30 22 1 pfet_cnrx $X=403540 $Y=394500 $D=646
M549 30 30 24 1 pfet_cnrx $X=403540 $Y=396900 $D=646
M550 25 30 30 1 pfet_cnrx $X=405860 $Y=394500 $D=646
M551 30 30 30 1 pfet_cnrx $X=408180 $Y=396900 $D=646
M552 30 30 1181 1 pfet_cnrx $X=410500 $Y=394500 $D=646
M553 30 30 31 1 pfet_cnrx $X=411660 $Y=396900 $D=646
M554 30 30 30 1 pfet_cnrx $X=412820 $Y=394500 $D=646
M555 30 30 300 1 pfet_cnrx $X=415140 $Y=394500 $D=646
M556 30 30 30 1 pfet_cnrx $X=420940 $Y=394500 $D=646
M557 30 30 30 1 pfet_cnrx $X=436020 $Y=418500 $D=646
M558 30 30 30 1 pfet_cnrx $X=436020 $Y=429300 $D=646
M559 30 30 30 1 pfet_cnrx $X=438340 $Y=396900 $D=646
M560 30 30 30 1 pfet_cnrx $X=438340 $Y=407700 $D=646
M561 30 30 30 1 pfet_cnrx $X=438340 $Y=418500 $D=646
M562 30 30 30 1 pfet_cnrx $X=438340 $Y=429300 $D=646
M563 30 30 30 1 pfet_cnrx $X=438340 $Y=440100 $D=646
M564 30 30 30 1 pfet_cnrx $X=438340 $Y=450900 $D=646
M565 30 30 30 1 pfet_cnrx $X=438340 $Y=461700 $D=646
M566 30 30 30 1 pfet_cnrx $X=564780 $Y=394500 $D=646
M567 30 30 30 1 pfet_cnrx $X=564780 $Y=416100 $D=646
M568 30 30 30 1 pfet_cnrx $X=564780 $Y=448500 $D=646
M569 30 30 30 1 pfet_cnrx $X=565940 $Y=426900 $D=646
M570 30 30 30 1 pfet_cnrx $X=565940 $Y=459300 $D=646
M571 30 30 30 1 pfet_cnrx $X=568260 $Y=394600 $D=646
M572 30 30 30 1 pfet_cnrx $X=568260 $Y=405400 $D=646
M573 30 30 30 1 pfet_cnrx $X=568260 $Y=416200 $D=646
M574 30 30 30 1 pfet_cnrx $X=568260 $Y=427000 $D=646
M575 30 30 30 1 pfet_cnrx $X=568260 $Y=437800 $D=646
M576 30 30 30 1 pfet_cnrx $X=568260 $Y=448600 $D=646
M577 30 30 30 1 pfet_cnrx $X=568260 $Y=459400 $D=646
M578 30 30 30 1 pfet_cnrx $X=568260 $Y=470200 $D=646
M579 299 30 30 1 pfet_cnrx $X=393100 $Y=394500 $D=646
X580 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 391000 0 0 $X=578260 $Y=390700
X581 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 401800 1 0 $X=578260 $Y=396100
X582 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 401800 0 0 $X=578260 $Y=401500
X583 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 412600 1 0 $X=578260 $Y=406900
X584 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 412600 0 0 $X=578260 $Y=412300
X585 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 423400 1 0 $X=578260 $Y=417700
X586 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 423400 0 0 $X=578260 $Y=423100
X587 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 434200 1 0 $X=578260 $Y=428500
X588 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 434200 0 0 $X=578260 $Y=433900
X589 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 445000 1 0 $X=578260 $Y=439300
X590 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 445000 0 0 $X=578260 $Y=444700
X591 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 455800 1 0 $X=578260 $Y=450100
X592 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 455800 0 0 $X=578260 $Y=455500
X593 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 466600 1 0 $X=578260 $Y=460900
X594 1 30 1 1 UDB116SVT24_CAPR9_1 $T=578840 466600 0 0 $X=578260 $Y=466300
X595 1 30 1 UDB116SVT24_FILL2 $T=150800 412600 0 0 $X=150220 $Y=412300
X596 1 30 1 UDB116SVT24_FILL2 $T=200680 423400 1 0 $X=200100 $Y=417700
X597 1 30 1 UDB116SVT24_FILL2 $T=226200 455800 1 0 $X=225620 $Y=450100
X598 1 30 1 UDB116SVT24_FILL2 $T=248240 401800 1 0 $X=247660 $Y=396100
X599 1 30 1 UDB116SVT24_FILL2 $T=249400 401800 0 0 $X=248820 $Y=401500
X600 1 30 1 UDB116SVT24_FILL2 $T=281880 391000 0 0 $X=281300 $Y=390700
X601 1 30 1 UDB116SVT24_FILL2 $T=306240 391000 0 0 $X=305660 $Y=390700
X602 1 30 1 UDB116SVT24_FILL2 $T=363080 401800 0 0 $X=362500 $Y=401500
X603 1 30 1 UDB116SVT24_FILL2 $T=366560 391000 0 0 $X=365980 $Y=390700
X604 1 30 1 UDB116SVT24_FILL2 $T=371200 391000 0 0 $X=370620 $Y=390700
X605 1 30 1 UDB116SVT24_FILL2 $T=372360 412600 0 0 $X=371780 $Y=412300
X606 1 30 1 UDB116SVT24_FILL2 $T=385120 391000 0 0 $X=384540 $Y=390700
X607 1 30 1 UDB116SVT24_FILL2 $T=403680 391000 0 0 $X=403100 $Y=390700
X608 1 30 1 UDB116SVT24_FILL2 $T=410640 391000 0 0 $X=410060 $Y=390700
X609 1 30 1 UDB116SVT24_FILL2 $T=436160 423400 1 0 $X=435580 $Y=417700
X610 1 30 1 UDB116SVT24_FILL2 $T=436160 434200 1 0 $X=435580 $Y=428500
X611 1 30 1 UDB116SVT24_FILL2 $T=566080 423400 0 0 $X=565500 $Y=423100
X612 1 30 1 UDB116SVT24_FILL2 $T=566080 455800 0 0 $X=565500 $Y=455500
X613 1 UDB116SVT24_TAPSS $T=49880 401800 1 0 $X=49300 $Y=396100
X614 1 UDB116SVT24_TAPSS $T=49880 412600 1 0 $X=49300 $Y=406900
X615 1 UDB116SVT24_TAPSS $T=49880 423400 1 0 $X=49300 $Y=417700
X616 1 UDB116SVT24_TAPSS $T=49880 434200 1 0 $X=49300 $Y=428500
X617 1 UDB116SVT24_TAPSS $T=49880 445000 1 0 $X=49300 $Y=439300
X618 1 UDB116SVT24_TAPSS $T=49880 455800 1 0 $X=49300 $Y=450100
X619 1 UDB116SVT24_TAPSS $T=49880 466600 1 0 $X=49300 $Y=460900
X620 1 UDB116SVT24_TAPSS $T=238960 391000 0 0 $X=238380 $Y=390700
X621 1 UDB116SVT24_TAPSS $T=238960 401800 0 0 $X=238380 $Y=401500
X622 1 UDB116SVT24_TAPSS $T=238960 412600 0 0 $X=238380 $Y=412300
X623 1 UDB116SVT24_TAPSS $T=238960 423400 0 0 $X=238380 $Y=423100
X624 1 UDB116SVT24_TAPSS $T=238960 434200 0 0 $X=238380 $Y=433900
X625 1 UDB116SVT24_TAPSS $T=238960 445000 0 0 $X=238380 $Y=444700
X626 1 UDB116SVT24_TAPSS $T=238960 455800 0 0 $X=238380 $Y=455500
X627 1 UDB116SVT24_TAPSS $T=238960 466600 0 0 $X=238380 $Y=466300
X628 1 UDB116SVT24_TAPSS $T=438480 401800 1 0 $X=437900 $Y=396100
X629 1 UDB116SVT24_TAPSS $T=438480 412600 1 0 $X=437900 $Y=406900
X630 1 UDB116SVT24_TAPSS $T=438480 423400 1 0 $X=437900 $Y=417700
X631 1 UDB116SVT24_TAPSS $T=438480 434200 1 0 $X=437900 $Y=428500
X632 1 UDB116SVT24_TAPSS $T=438480 445000 1 0 $X=437900 $Y=439300
X633 1 UDB116SVT24_TAPSS $T=438480 455800 1 0 $X=437900 $Y=450100
X634 1 UDB116SVT24_TAPSS $T=438480 466600 1 0 $X=437900 $Y=460900
X635 1 UDB116SVT24_TAPSS $T=568400 391000 0 0 $X=567820 $Y=390700
X636 1 UDB116SVT24_TAPSS $T=568400 401800 0 0 $X=567820 $Y=401500
X637 1 UDB116SVT24_TAPSS $T=568400 412600 0 0 $X=567820 $Y=412300
X638 1 UDB116SVT24_TAPSS $T=568400 423400 0 0 $X=567820 $Y=423100
X639 1 UDB116SVT24_TAPSS $T=568400 434200 0 0 $X=567820 $Y=433900
X640 1 UDB116SVT24_TAPSS $T=568400 445000 0 0 $X=567820 $Y=444700
X641 1 UDB116SVT24_TAPSS $T=568400 455800 0 0 $X=567820 $Y=455500
X642 1 UDB116SVT24_TAPSS $T=568400 466600 0 0 $X=567820 $Y=466300
X672 1 30 1 UDB116SVT24_FILL3 $T=142680 412600 0 0 $X=142100 $Y=412300
X673 1 30 1 UDB116SVT24_FILL3 $T=165880 391000 0 0 $X=165300 $Y=390700
X674 1 30 1 UDB116SVT24_FILL3 $T=177480 391000 0 0 $X=176900 $Y=390700
X675 1 30 1 UDB116SVT24_FILL3 $T=206480 423400 1 0 $X=205900 $Y=417700
X676 1 30 1 UDB116SVT24_FILL3 $T=235480 466600 0 0 $X=234900 $Y=466300
X677 1 30 1 UDB116SVT24_FILL3 $T=272600 401800 1 0 $X=272020 $Y=396100
X678 1 30 1 UDB116SVT24_FILL3 $T=280720 401800 0 0 $X=280140 $Y=401500
X679 1 30 1 UDB116SVT24_FILL3 $T=307400 445000 1 0 $X=306820 $Y=439300
X680 1 30 1 UDB116SVT24_FILL3 $T=322480 455800 1 0 $X=321900 $Y=450100
X681 1 30 1 UDB116SVT24_FILL3 $T=379320 466600 1 0 $X=378740 $Y=460900
X682 1 30 1 UDB116SVT24_FILL3 $T=564920 391000 0 0 $X=564340 $Y=390700
X683 1 30 1 UDB116SVT24_FILL3 $T=564920 412600 0 0 $X=564340 $Y=412300
X684 1 30 1 UDB116SVT24_FILL3 $T=564920 445000 0 0 $X=564340 $Y=444700
X685 1 30 1 UDB116SVT24_FILL12 $T=49880 391000 0 0 $X=49300 $Y=390700
X686 1 30 1 UDB116SVT24_FILL12 $T=97440 434200 1 0 $X=96860 $Y=428500
X687 1 30 1 UDB116SVT24_FILL12 $T=116000 455800 1 0 $X=115420 $Y=450100
X688 1 30 1 UDB116SVT24_FILL12 $T=134560 434200 0 0 $X=133980 $Y=433900
X689 1 30 1 UDB116SVT24_FILL12 $T=161240 455800 0 0 $X=160660 $Y=455500
X690 1 30 1 UDB116SVT24_FILL12 $T=421080 434200 0 0 $X=420500 $Y=433900
X691 1 30 1 UDB116SVT24_FILL12 $T=482560 434200 0 0 $X=481980 $Y=433900
X692 1 30 1 UDB116SVT24_FILL12 $T=551000 391000 0 0 $X=550420 $Y=390700
X693 1 30 1 UDB116SVT24_FILL12 $T=551000 412600 0 0 $X=550420 $Y=412300
X694 1 30 1 UDB116SVT24_FILL12 $T=552160 423400 0 0 $X=551580 $Y=423100
X695 1 30 1 UDB116SVT24_FILL6 $T=97440 423400 1 0 $X=96860 $Y=417700
X696 1 30 1 UDB116SVT24_FILL6 $T=124120 412600 0 0 $X=123540 $Y=412300
X697 1 30 1 UDB116SVT24_FILL6 $T=145000 423400 1 0 $X=144420 $Y=417700
X698 1 30 1 UDB116SVT24_FILL6 $T=177480 455800 1 0 $X=176900 $Y=450100
X699 1 30 1 UDB116SVT24_FILL6 $T=219240 434200 0 0 $X=218660 $Y=433900
X700 1 30 1 UDB116SVT24_FILL6 $T=225040 455800 0 0 $X=224460 $Y=455500
X701 1 30 1 UDB116SVT24_FILL6 $T=226200 445000 0 0 $X=225620 $Y=444700
X702 1 30 1 UDB116SVT24_FILL6 $T=232000 455800 0 0 $X=231420 $Y=455500
X703 1 30 1 UDB116SVT24_FILL6 $T=249400 466600 0 0 $X=248820 $Y=466300
X704 1 30 1 UDB116SVT24_FILL6 $T=263320 466600 1 0 $X=262740 $Y=460900
X705 1 30 1 UDB116SVT24_FILL6 $T=375840 423400 1 0 $X=375260 $Y=417700
X706 1 30 1 UDB116SVT24_FILL6 $T=430360 401800 1 0 $X=429780 $Y=396100
X707 1 30 1 UDB116SVT24_FILL6 $T=431520 412600 1 0 $X=430940 $Y=406900
X708 1 30 1 UDB116SVT24_FILL16 $T=49880 434200 0 0 $X=49300 $Y=433900
X709 1 30 1 UDB116SVT24_FILL16 $T=87000 401800 0 0 $X=86420 $Y=401500
X710 1 30 1 UDB116SVT24_FILL16 $T=97440 401800 1 0 $X=96860 $Y=396100
X711 1 30 1 UDB116SVT24_FILL16 $T=97440 412600 1 0 $X=96860 $Y=406900
X712 1 30 1 UDB116SVT24_FILL16 $T=97440 455800 1 0 $X=96860 $Y=450100
X713 1 30 1 UDB116SVT24_FILL16 $T=116000 434200 0 0 $X=115420 $Y=433900
X714 1 30 1 UDB116SVT24_FILL16 $T=124120 423400 0 0 $X=123540 $Y=423100
X715 1 30 1 UDB116SVT24_FILL16 $T=134560 445000 1 0 $X=133980 $Y=439300
X716 1 30 1 UDB116SVT24_FILL16 $T=171680 466600 1 0 $X=171100 $Y=460900
X717 1 30 1 UDB116SVT24_FILL16 $T=350320 434200 0 0 $X=349740 $Y=433900
X718 1 30 1 UDB116SVT24_FILL16 $T=351480 466600 1 0 $X=350900 $Y=460900
X719 1 30 1 UDB116SVT24_FILL16 $T=411800 401800 1 0 $X=411220 $Y=396100
X720 1 30 1 UDB116SVT24_FILL16 $T=414120 445000 1 0 $X=413540 $Y=439300
X721 1 30 1 UDB116SVT24_FILL16 $T=417600 423400 1 0 $X=417020 $Y=417700
X722 1 30 1 UDB116SVT24_FILL16 $T=419920 466600 1 0 $X=419340 $Y=460900
X723 1 30 1 UDB116SVT24_FILL16 $T=532440 391000 0 0 $X=531860 $Y=390700
X724 1 30 1 UDB116SVT24_FILL16 $T=532440 412600 0 0 $X=531860 $Y=412300
X725 1 30 1 UDB116SVT24_FILL16 $T=538240 455800 0 0 $X=537660 $Y=455500
X726 1 30 1 UDB116SVT24_FILL16 $T=544040 434200 0 0 $X=543460 $Y=433900
X727 1 30 1 UDB116SVT24_FILL16 $T=548680 401800 0 0 $X=548100 $Y=401500
X728 1 30 1 UDB116SVT24_FILL16 $T=549840 466600 0 0 $X=549260 $Y=466300
X729 1 30 1 UDB116SVT24_FILL16 $T=560280 401800 1 0 $X=559700 $Y=396100
X730 1 30 1 UDB116SVT24_FILL16 $T=560280 412600 1 0 $X=559700 $Y=406900
X731 1 30 1 UDB116SVT24_FILL16 $T=560280 423400 1 0 $X=559700 $Y=417700
X732 1 30 1 UDB116SVT24_FILL16 $T=560280 445000 1 0 $X=559700 $Y=439300
X733 1 30 1 UDB116SVT24_FILL16 $T=560280 455800 1 0 $X=559700 $Y=450100
X734 1 30 1 UDB116SVT24_FILL16 $T=560280 466600 1 0 $X=559700 $Y=460900
X735 1 30 1 UDB116SVT24_FILL8 $T=105560 401800 0 0 $X=104980 $Y=401500
X736 1 30 1 UDB116SVT24_FILL8 $T=116000 412600 1 0 $X=115420 $Y=406900
X737 1 30 1 UDB116SVT24_FILL8 $T=161240 445000 0 0 $X=160660 $Y=444700
X738 1 30 1 UDB116SVT24_FILL8 $T=162400 445000 1 0 $X=161820 $Y=439300
X739 1 30 1 UDB116SVT24_FILL8 $T=237800 466600 1 0 $X=237220 $Y=460900
X740 1 30 1 UDB116SVT24_FILL8 $T=370040 466600 1 0 $X=369460 $Y=460900
X741 1 30 1 UDB116SVT24_FILL8 $T=523160 434200 1 0 $X=522580 $Y=428500
X742 1 30 1 UDB116SVT24_FILL8 $T=555640 445000 0 0 $X=555060 $Y=444700
X743 1 30 1 UDB116SVT24_FILL8 $T=556800 455800 0 0 $X=556220 $Y=455500
X744 1 30 1 UDB116SVT24_FILL32 $T=49880 401800 0 0 $X=49300 $Y=401500
X745 1 30 1 UDB116SVT24_FILL32 $T=60320 401800 1 0 $X=59740 $Y=396100
X746 1 30 1 UDB116SVT24_FILL32 $T=60320 412600 1 0 $X=59740 $Y=406900
X747 1 30 1 UDB116SVT24_FILL32 $T=60320 423400 1 0 $X=59740 $Y=417700
X748 1 30 1 UDB116SVT24_FILL32 $T=60320 434200 1 0 $X=59740 $Y=428500
X749 1 30 1 UDB116SVT24_FILL32 $T=60320 455800 1 0 $X=59740 $Y=450100
X750 1 30 1 UDB116SVT24_FILL32 $T=314360 466600 1 0 $X=313780 $Y=460900
X751 1 30 1 UDB116SVT24_FILL32 $T=382800 466600 1 0 $X=382220 $Y=460900
X752 1 30 1 UDB116SVT24_FILL32 $T=394400 412600 1 0 $X=393820 $Y=406900
X753 30 1 1 1 1 1 286 1 UDB116SVT24_FILL_ECT_5 $T=176320 455800 0 0 $X=175740 $Y=455500
X754 30 1 1 1 284 1 286 1 UDB116SVT24_FILL_ECT_5 $T=182120 455800 0 0 $X=181540 $Y=455500
X755 30 30 286 30 30 30 284 1 UDB116SVT24_FILL_ECT_5 $T=187920 455800 0 0 $X=187340 $Y=455500
X756 30 30 30 30 30 30 284 1 UDB116SVT24_FILL_ECT_5 $T=193720 455800 0 0 $X=193140 $Y=455500
X757 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=64960 391000 0 0 $X=64380 $Y=390700
X758 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=69600 434200 0 0 $X=69020 $Y=433900
X759 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=111360 434200 1 0 $X=110780 $Y=428500
X760 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=131080 455800 1 0 $X=130500 $Y=450100
X761 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=191400 466600 1 0 $X=190820 $Y=460900
X762 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=370040 445000 1 180 $X=323060 $Y=444700
X763 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=374680 412600 0 0 $X=374100 $Y=412300
X764 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=374680 434200 0 0 $X=374100 $Y=433900
X765 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=436160 434200 0 0 $X=435580 $Y=433900
X766 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=497640 434200 0 0 $X=497060 $Y=433900
X767 1 30 1 UDB116SVT24_DCAP_ECOCT_16 $T=532440 434200 1 0 $X=531860 $Y=428500
X768 1 30 1 UDB116SVT24_FILL64 $T=49880 412600 0 0 $X=49300 $Y=412300
X769 1 30 1 UDB116SVT24_FILL64 $T=49880 423400 0 0 $X=49300 $Y=423100
X770 1 30 1 UDB116SVT24_FILL64 $T=49880 466600 0 0 $X=49300 $Y=466300
X771 1 30 1 UDB116SVT24_FILL64 $T=60320 445000 1 0 $X=59740 $Y=439300
X772 1 30 1 UDB116SVT24_FILL64 $T=290000 466600 0 0 $X=289420 $Y=466300
X773 1 30 1 UDB116SVT24_FILL64 $T=315520 455800 0 0 $X=314940 $Y=455500
X774 1 30 1 UDB116SVT24_FILL64 $T=339880 445000 1 0 $X=339300 $Y=439300
X775 1 30 1 UDB116SVT24_FILL64 $T=361920 434200 1 0 $X=361340 $Y=428500
X776 1 30 1 UDB116SVT24_FILL64 $T=364240 466600 0 0 $X=363660 $Y=466300
X777 1 30 1 UDB116SVT24_FILL64 $T=366560 423400 0 0 $X=365980 $Y=423100
X778 1 30 1 UDB116SVT24_FILL64 $T=370040 445000 0 0 $X=369460 $Y=444700
X779 1 30 1 UDB116SVT24_FILL64 $T=389760 455800 0 0 $X=389180 $Y=455500
X780 1 30 1 UDB116SVT24_FILL64 $T=400200 401800 0 0 $X=399620 $Y=401500
X781 1 30 1 UDB116SVT24_FILL64 $T=448920 434200 1 0 $X=448340 $Y=428500
X782 1 30 1 UDB116SVT24_FILL64 $T=464000 455800 0 0 $X=463420 $Y=455500
X783 1 30 1 UDB116SVT24_FILL64 $T=474440 401800 0 0 $X=473860 $Y=401500
X784 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 391000 0 0 $X=39440 $Y=390700
X785 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 401800 1 0 $X=39440 $Y=396100
X786 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 401800 0 0 $X=39440 $Y=401500
X787 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 412600 1 0 $X=39440 $Y=406900
X788 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 412600 0 0 $X=39440 $Y=412300
X789 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 423400 1 0 $X=39440 $Y=417700
X790 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 423400 0 0 $X=39440 $Y=423100
X791 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 434200 1 0 $X=39440 $Y=428500
X792 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 434200 0 0 $X=39440 $Y=433900
X793 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 445000 1 0 $X=39440 $Y=439300
X794 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 445000 0 0 $X=39440 $Y=444700
X795 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 455800 1 0 $X=39440 $Y=450100
X796 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 455800 0 0 $X=39440 $Y=455500
X797 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 466600 1 0 $X=39440 $Y=460900
X798 1 30 1 1 UDB116SVT24_CAPL9_1 $T=39440 466600 0 0 $X=39440 $Y=466300
X799 1 30 1 UDB116SVT24_FILL5 $T=140360 401800 0 0 $X=139780 $Y=401500
X800 1 30 1 UDB116SVT24_FILL5 $T=142680 423400 0 0 $X=142100 $Y=423100
X801 1 30 1 UDB116SVT24_FILL5 $T=164720 423400 0 0 $X=164140 $Y=423100
X802 1 30 1 UDB116SVT24_FILL5 $T=184440 445000 0 0 $X=183860 $Y=444700
X803 1 30 1 UDB116SVT24_FILL5 $T=215760 445000 0 0 $X=215180 $Y=444700
X804 1 30 1 UDB116SVT24_FILL5 $T=228520 434200 1 0 $X=227940 $Y=428500
X805 1 30 1 UDB116SVT24_FILL5 $T=244760 434200 1 0 $X=244180 $Y=428500
X806 1 30 1 UDB116SVT24_FILL5 $T=273760 466600 0 0 $X=273180 $Y=466300
X807 1 30 1 UDB116SVT24_FILL5 $T=276080 445000 1 0 $X=275500 $Y=439300
X808 1 30 1 UDB116SVT24_FILL5 $T=284200 455800 0 0 $X=283620 $Y=455500
X809 1 30 1 UDB116SVT24_FILL5 $T=307400 412600 0 0 $X=306820 $Y=412300
X810 1 30 1 UDB116SVT24_FILL5 $T=313200 423400 0 0 $X=312620 $Y=423100
X811 1 30 1 UDB116SVT24_FILL5 $T=313200 455800 1 0 $X=312620 $Y=450100
X812 1 30 1 UDB116SVT24_FILL5 $T=323640 412600 0 0 $X=323060 $Y=412300
X813 1 30 1 UDB116SVT24_FILL5 $T=337560 401800 1 0 $X=336980 $Y=396100
X814 1 30 1 UDB116SVT24_FILL5 $T=339880 434200 0 0 $X=339300 $Y=433900
X815 1 30 1 UDB116SVT24_FILL5 $T=368880 434200 0 0 $X=368300 $Y=433900
X816 1 30 1 UDB116SVT24_FILL5 $T=432680 445000 1 0 $X=432100 $Y=439300
X817 1 30 1 UDB116SVT24_FILL5 $T=562600 434200 0 0 $X=562020 $Y=433900
X818 1 30 1 UDB116SVT24_DCAP_ECOCT_12 $T=105560 423400 1 0 $X=104980 $Y=417700
X819 1 30 1 UDB116SVT24_DCAP_ECOCT_12 $T=382800 423400 1 0 $X=382220 $Y=417700
X820 1 30 ICV_9 $T=49880 445000 0 0 $X=49300 $Y=444700
X821 1 30 ICV_9 $T=49880 455800 0 0 $X=49300 $Y=455500
X822 1 30 ICV_9 $T=60320 466600 1 0 $X=59740 $Y=460900
X823 1 30 ICV_9 $T=124120 466600 0 0 $X=123540 $Y=466300
X824 1 30 ICV_9 $T=325960 455800 1 0 $X=325380 $Y=450100
X825 1 30 ICV_9 $T=421080 391000 0 0 $X=420500 $Y=390700
X826 1 30 ICV_9 $T=421080 412600 0 0 $X=420500 $Y=412300
X827 1 30 ICV_9 $T=438480 466600 0 0 $X=437900 $Y=466300
X828 1 30 ICV_9 $T=440800 423400 0 0 $X=440220 $Y=423100
X829 1 30 ICV_9 $T=444280 445000 0 0 $X=443700 $Y=444700
X830 1 30 ICV_9 $T=448920 401800 1 0 $X=448340 $Y=396100
X831 1 30 ICV_9 $T=448920 412600 1 0 $X=448340 $Y=406900
X832 1 30 ICV_9 $T=448920 423400 1 0 $X=448340 $Y=417700
X833 1 30 ICV_9 $T=448920 445000 1 0 $X=448340 $Y=439300
X834 1 30 ICV_9 $T=448920 455800 1 0 $X=448340 $Y=450100
X835 1 30 ICV_9 $T=448920 466600 1 0 $X=448340 $Y=460900
X836 30 17 303 15 1 1 UDB116SVT24_NR2_MM_0P75 $T=373520 391000 0 0 $X=372940 $Y=390700
X837 30 18 298 297 1 1 UDB116SVT24_NR2_MM_0P75 $T=381640 391000 0 0 $X=381060 $Y=390700
X838 30 21 299 20 1 1 UDB116SVT24_NR2_MM_0P75 $T=396720 391000 1 180 $X=392660 $Y=390700
X839 30 26 31 300 1 1 UDB116SVT24_NR2_MM_0P75 $T=408320 401800 1 0 $X=407740 $Y=396100
X840 27 26 30 25 1181 31 1 1 UDB116SVT24_AOI21_MM_1 $T=410640 391000 1 180 $X=405420 $Y=390700
X841 1 30 1 UDB116SVT24_FILL4 $T=273760 401800 0 0 $X=273180 $Y=401500
X842 1 30 1 UDB116SVT24_FILL4 $T=351480 401800 0 0 $X=350900 $Y=401500
X843 1 30 1 UDB116SVT24_FILL4 $T=403680 401800 1 0 $X=403100 $Y=396100
X844 30 23 24 25 1 1 UDB116SVT24_NR2_0P75 $T=400200 401800 1 0 $X=399620 $Y=396100
X845 21 20 1 30 297 1 UDB116SVT24_AN2_MM_1 $T=393240 391000 1 180 $X=386860 $Y=390700
X846 23 25 1 30 22 1 UDB116SVT24_AN2_MM_1 $T=397880 391000 0 0 $X=397300 $Y=390700
X847 1 296 292 18 30 1 UDB116SVT24_ND2_MM_0P75 $T=375840 401800 1 0 $X=375260 $Y=396100
X848 1 298 291 19 30 1 UDB116SVT24_ND2_MM_0P75 $T=387440 412600 0 180 $X=383380 $Y=406900
X849 1 24 304 299 30 1 UDB116SVT24_ND2_MM_0P75 $T=400200 401800 1 180 $X=396140 $Y=401500
X850 24 299 22 1 293 304 30 1 UDB116SVT24_OAI31_1 $T=399040 401800 0 180 $X=392660 $Y=396100
X851 154 890 30 1 32 1 UDB116SVT24_BUF_L_1 $T=111360 391000 0 0 $X=110780 $Y=390700
X852 158 892 30 1 33 1 UDB116SVT24_BUF_L_1 $T=125280 412600 1 0 $X=124700 $Y=406900
X853 403 894 30 1 305 1 UDB116SVT24_BUF_L_1 $T=140360 423400 1 0 $X=139780 $Y=417700
X854 167 895 30 1 306 1 UDB116SVT24_BUF_L_1 $T=146160 401800 0 0 $X=145580 $Y=401500
X855 170 897 30 1 34 1 UDB116SVT24_BUF_L_1 $T=150800 412600 1 180 $X=145580 $Y=412300
X856 169 898 30 1 35 1 UDB116SVT24_BUF_L_1 $T=148480 423400 0 0 $X=147900 $Y=423100
X857 493 900 30 1 307 1 UDB116SVT24_BUF_L_1 $T=151960 423400 1 0 $X=151380 $Y=417700
X858 307 902 30 1 308 1 UDB116SVT24_BUF_L_1 $T=157760 434200 1 0 $X=157180 $Y=428500
X859 497 904 30 1 36 1 UDB116SVT24_BUF_L_1 $T=170520 423400 0 0 $X=169940 $Y=423100
X860 506 906 30 1 309 1 UDB116SVT24_BUF_L_1 $T=184440 455800 1 0 $X=183860 $Y=450100
X861 367 908 30 1 37 1 UDB116SVT24_BUF_L_1 $T=190240 445000 0 0 $X=189660 $Y=444700
X862 209 910 30 1 38 1 UDB116SVT24_BUF_L_1 $T=221560 445000 0 0 $X=220980 $Y=444700
X863 423 911 30 1 39 1 UDB116SVT24_BUF_L_1 $T=226200 434200 0 0 $X=225620 $Y=433900
X864 375 913 30 1 310 1 UDB116SVT24_BUF_L_1 $T=234320 434200 1 0 $X=233740 $Y=428500
X865 474 915 30 1 311 1 UDB116SVT24_BUF_L_1 $T=247080 466600 1 0 $X=246500 $Y=460900
X866 219 917 30 1 40 1 UDB116SVT24_BUF_L_1 $T=249400 423400 0 0 $X=248820 $Y=423100
X867 220 919 30 1 312 1 UDB116SVT24_BUF_L_1 $T=250560 434200 1 0 $X=249980 $Y=428500
X868 223 922 30 1 313 1 UDB116SVT24_BUF_L_1 $T=255200 445000 0 180 $X=249980 $Y=439300
X869 429 923 30 1 41 1 UDB116SVT24_BUF_L_1 $T=256360 466600 0 0 $X=255780 $Y=466300
X870 442 925 30 1 314 1 UDB116SVT24_BUF_L_1 $T=279560 466600 0 0 $X=278980 $Y=466300
X871 353 927 30 1 315 1 UDB116SVT24_BUF_L_1 $T=281880 445000 1 0 $X=281300 $Y=439300
X872 478 929 30 1 316 1 UDB116SVT24_BUF_L_1 $T=290000 455800 0 0 $X=289420 $Y=455500
X873 389 932 30 1 317 1 UDB116SVT24_BUF_L_1 $T=315520 445000 0 180 $X=310300 $Y=439300
X874 251 933 30 1 318 1 UDB116SVT24_BUF_L_1 $T=313200 412600 0 0 $X=312620 $Y=412300
X875 391 935 30 1 319 1 UDB116SVT24_BUF_L_1 $T=319000 423400 0 0 $X=318420 $Y=423100
X876 254 937 30 1 320 1 UDB116SVT24_BUF_L_1 $T=329440 412600 0 0 $X=328860 $Y=412300
X877 261 939 30 1 321 1 UDB116SVT24_BUF_L_1 $T=343360 401800 1 0 $X=342780 $Y=396100
X878 336 941 30 1 42 1 UDB116SVT24_BUF_L_1 $T=345680 434200 0 0 $X=345100 $Y=433900
X879 488 943 30 1 322 1 UDB116SVT24_BUF_L_1 $T=367720 401800 0 0 $X=367140 $Y=401500
X880 1 30 323 366 ICV_10 $T=114840 401800 0 0 $X=114260 $Y=401500
X881 1 30 43 402 ICV_10 $T=121800 401800 1 0 $X=121220 $Y=396100
X882 1 30 44 157 ICV_10 $T=121800 401800 0 0 $X=121220 $Y=401500
X883 1 30 45 162 ICV_10 $T=129920 412600 1 0 $X=129340 $Y=406900
X884 1 30 324 412 ICV_10 $T=174000 423400 1 0 $X=173420 $Y=417700
X885 1 30 325 188 ICV_10 $T=183280 423400 0 0 $X=182700 $Y=423100
X886 1 30 326 514 ICV_10 $T=190240 423400 0 0 $X=189660 $Y=423100
X887 1 30 327 201 ICV_10 $T=209960 423400 1 0 $X=209380 $Y=417700
X888 1 30 328 517 ICV_10 $T=212280 434200 1 0 $X=211700 $Y=428500
X889 1 30 46 370 ICV_10 $T=212280 434200 0 0 $X=211700 $Y=433900
X890 1 30 329 206 ICV_10 $T=216920 423400 0 0 $X=216340 $Y=423100
X891 1 30 47 424 ICV_10 $T=225040 401800 0 0 $X=224460 $Y=401500
X892 1 30 48 213 ICV_10 $T=228520 455800 1 0 $X=227940 $Y=450100
X893 1 30 330 214 ICV_10 $T=232000 391000 0 0 $X=231420 $Y=390700
X894 1 30 49 217 ICV_10 $T=233160 445000 1 0 $X=232580 $Y=439300
X895 1 30 331 427 ICV_10 $T=245920 423400 1 0 $X=245340 $Y=417700
X896 1 30 50 312 ICV_10 $T=255200 445000 1 0 $X=254620 $Y=439300
X897 1 30 51 437 ICV_10 $T=259840 423400 0 0 $X=259260 $Y=423100
X898 1 30 332 153 ICV_10 $T=264480 412600 0 0 $X=263900 $Y=412300
X899 1 30 333 234 ICV_10 $T=280720 423400 0 0 $X=280140 $Y=423100
X900 1 30 334 316 ICV_10 $T=287680 466600 1 0 $X=287100 $Y=460900
X901 1 30 52 448 ICV_10 $T=294640 412600 1 0 $X=294060 $Y=406900
X902 1 30 335 388 ICV_10 $T=294640 434200 0 0 $X=294060 $Y=433900
X903 1 30 336 243 ICV_10 $T=300440 412600 0 0 $X=299860 $Y=412300
X904 1 30 337 247 ICV_10 $T=306240 401800 0 0 $X=305660 $Y=401500
X905 1 30 338 317 ICV_10 $T=313200 434200 0 0 $X=312620 $Y=433900
X906 1 30 339 459 ICV_10 $T=315520 445000 1 0 $X=314940 $Y=439300
X907 1 30 340 485 ICV_10 $T=316680 423400 1 0 $X=316100 $Y=417700
X908 1 30 53 393 ICV_10 $T=325960 434200 0 0 $X=325380 $Y=433900
X909 1 30 341 394 ICV_10 $T=332920 434200 0 0 $X=332340 $Y=433900
X910 1 30 342 397 ICV_10 $T=339880 412600 0 0 $X=339300 $Y=412300
X911 1 30 54 400 ICV_10 $T=349160 434200 1 0 $X=348580 $Y=428500
X912 1 30 55 271 ICV_10 $T=378160 401800 0 0 $X=377580 $Y=401500
X913 1 30 56 272 ICV_10 $T=387440 412600 1 0 $X=386860 $Y=406900
X914 1 30 343 407 ICV_11 $T=153120 445000 1 0 $X=152540 $Y=439300
X915 1 30 57 344 ICV_11 $T=162400 434200 1 0 $X=161820 $Y=428500
X916 1 30 344 408 ICV_11 $T=162400 434200 0 0 $X=161820 $Y=433900
X917 1 30 345 309 ICV_11 $T=183280 445000 1 0 $X=182700 $Y=439300
X918 1 30 346 513 ICV_11 $T=194880 445000 0 0 $X=194300 $Y=444700
X919 1 30 347 195 ICV_11 $T=194880 455800 1 0 $X=194300 $Y=450100
X920 1 30 348 205 ICV_11 $T=214600 412600 0 0 $X=214020 $Y=412300
X921 1 30 58 361 ICV_11 $T=218080 445000 1 0 $X=217500 $Y=439300
X922 1 30 59 71 ICV_11 $T=219240 434200 1 0 $X=218660 $Y=428500
X923 1 30 60 374 ICV_11 $T=229680 412600 0 0 $X=229100 $Y=412300
X924 1 30 349 215 ICV_11 $T=229680 423400 0 0 $X=229100 $Y=423100
X925 1 30 61 216 ICV_11 $T=230840 401800 1 0 $X=230260 $Y=396100
X926 1 30 62 376 ICV_11 $T=240120 445000 1 0 $X=239540 $Y=439300
X927 1 30 350 431 ICV_11 $T=249400 412600 0 0 $X=248820 $Y=412300
X928 1 30 351 433 ICV_11 $T=257520 455800 0 0 $X=256940 $Y=455500
X929 1 30 63 436 ICV_11 $T=261000 434200 1 0 $X=260420 $Y=428500
X930 1 30 352 441 ICV_11 $T=263320 434200 0 0 $X=262740 $Y=433900
X931 1 30 64 232 ICV_11 $T=272600 423400 1 0 $X=272020 $Y=417700
X932 1 30 353 445 ICV_11 $T=286520 455800 1 0 $X=285940 $Y=450100
X933 1 30 354 447 ICV_11 $T=287680 434200 1 0 $X=287100 $Y=428500
X934 1 30 65 481 ICV_11 $T=298120 445000 1 0 $X=297540 $Y=439300
X935 1 30 66 449 ICV_11 $T=299280 423400 1 0 $X=298700 $Y=417700
X936 1 30 355 245 ICV_11 $T=301600 412600 1 0 $X=301020 $Y=406900
X937 1 30 67 355 ICV_11 $T=334080 434200 1 0 $X=333500 $Y=428500
X938 1 30 356 264 ICV_11 $T=343360 423400 1 0 $X=342780 $Y=417700
X939 1 30 68 273 ICV_11 $T=387440 401800 0 0 $X=386860 $Y=401500
X940 1 30 10 5 1 UDB116SVT24_INV_0P75 $T=280720 401800 1 180 $X=277820 $Y=401500
X941 1 30 293 289 1 UDB116SVT24_INV_0P75 $T=367720 401800 1 180 $X=364820 $Y=401500
X942 1 30 294 69 1 UDB116SVT24_INV_0P75 $T=371200 391000 1 180 $X=368300 $Y=390700
X943 1 30 291 357 1 UDB116SVT24_INV_0P75 $T=385120 401800 0 0 $X=384540 $Y=401500
X944 299 297 1174 295 30 357 1 14 1 UDB116SVT24_OAOI211_0P75 $T=392080 401800 0 180 $X=384540 $Y=396100
X945 18 1035 296 30 1 295 1 UDB116SVT24_OR2_0P75 $T=383960 401800 0 180 $X=378740 $Y=396100
X946 13 300 1 541 463 30 1 UDB116SVT24_OAI21_0P75 $T=351480 401800 1 180 $X=346260 $Y=401500
X947 293 19 1 15 296 30 1 UDB116SVT24_OAI21_0P75 $T=373520 401800 0 0 $X=372940 $Y=401500
X948 293 298 1 296 19 30 1 UDB116SVT24_OAI21_0P75 $T=382800 412600 0 180 $X=377580 $Y=406900
X949 358 1038 1 30 359 1 UDB116SVT24_BUF_1 $T=153120 412600 0 0 $X=152540 $Y=412300
X950 70 1040 1 30 283 1 UDB116SVT24_BUF_1 $T=165880 391000 1 180 $X=161820 $Y=390700
X951 71 1041 1 30 72 1 UDB116SVT24_BUF_1 $T=203000 423400 1 0 $X=202420 $Y=417700
X952 360 1042 1 30 361 1 UDB116SVT24_BUF_1 $T=222720 455800 1 0 $X=222140 $Y=450100
X953 73 1043 1 30 74 1 UDB116SVT24_BUF_1 $T=249400 391000 0 0 $X=248820 $Y=390700
X954 362 1045 1 30 363 1 UDB116SVT24_BUF_1 $T=303920 455800 0 0 $X=303340 $Y=455500
X955 364 1047 1 30 365 1 UDB116SVT24_BUF_1 $T=319000 455800 1 0 $X=318420 $Y=450100
X956 75 1048 1 30 76 1 UDB116SVT24_BUF_1 $T=381640 391000 1 180 $X=377580 $Y=390700
X957 291 289 1182 13 1 30 462 540 1 UDB116SVT24_AOAI211_0P75 $T=363080 401800 1 180 $X=355540 $Y=401500
X958 295 292 1171 303 1 30 288 294 1 UDB116SVT24_AOAI211_0P75 $T=374680 401800 0 180 $X=367140 $Y=396100
X959 1 30 366 155 ICV_12 $T=116000 401800 1 0 $X=115420 $Y=396100
X960 1 30 77 159 ICV_12 $T=127600 391000 0 0 $X=127020 $Y=390700
X961 1 30 78 468 ICV_12 $T=141520 391000 0 0 $X=140940 $Y=390700
X962 1 30 79 173 ICV_12 $T=155440 391000 0 0 $X=154860 $Y=390700
X963 1 30 80 469 ICV_12 $T=156600 434200 0 0 $X=156020 $Y=433900
X964 1 30 81 179 ICV_12 $T=168200 423400 1 0 $X=167620 $Y=417700
X965 1 30 82 180 ICV_12 $T=170520 445000 0 0 $X=169940 $Y=444700
X966 1 30 367 191 ICV_12 $T=189080 455800 1 0 $X=188500 $Y=450100
X967 1 30 368 511 ICV_12 $T=197200 423400 0 0 $X=196620 $Y=423100
X968 1 30 83 371 ICV_12 $T=211120 423400 0 0 $X=210540 $Y=423100
X969 1 30 369 470 ICV_12 $T=212280 445000 1 0 $X=211700 $Y=439300
X970 1 30 370 328 ICV_12 $T=215760 455800 1 0 $X=215180 $Y=450100
X971 1 30 371 207 ICV_12 $T=219240 401800 0 0 $X=218660 $Y=401500
X972 1 30 372 422 ICV_12 $T=219240 455800 0 0 $X=218660 $Y=455500
X973 1 30 84 210 ICV_12 $T=223880 412600 0 0 $X=223300 $Y=412300
X974 1 30 85 329 ICV_12 $T=223880 423400 0 0 $X=223300 $Y=423100
X975 1 30 373 212 ICV_12 $T=227360 445000 1 0 $X=226780 $Y=439300
X976 1 30 374 211 ICV_12 $T=232000 401800 0 0 $X=231420 $Y=401500
X977 1 30 375 471 ICV_12 $T=233160 445000 0 0 $X=232580 $Y=444700
X978 1 30 287 70 ICV_12 $T=238960 434200 1 0 $X=238380 $Y=428500
X979 1 30 86 349 ICV_12 $T=240120 423400 1 0 $X=239540 $Y=417700
X980 1 30 376 313 ICV_12 $T=243600 455800 1 0 $X=243020 $Y=450100
X981 1 30 87 350 ICV_12 $T=252880 391000 0 0 $X=252300 $Y=390700
X982 1 30 377 379 ICV_12 $T=254040 423400 0 0 $X=253460 $Y=423100
X983 1 30 88 224 ICV_12 $T=255200 434200 1 0 $X=254620 $Y=428500
X984 1 30 378 225 ICV_12 $T=257520 434200 0 0 $X=256940 $Y=433900
X985 1 30 379 535 ICV_12 $T=258680 412600 0 0 $X=258100 $Y=412300
X986 1 30 380 378 ICV_12 $T=262160 445000 1 0 $X=261580 $Y=439300
X987 1 30 89 352 ICV_12 $T=266800 423400 0 0 $X=266220 $Y=423100
X988 1 30 8 477 ICV_12 $T=267960 391000 0 0 $X=267380 $Y=390700
X989 1 30 381 438 ICV_12 $T=278400 455800 0 0 $X=277820 $Y=455500
X990 1 30 382 475 ICV_12 $T=280720 455800 1 0 $X=280140 $Y=450100
X991 1 30 90 235 ICV_12 $T=281880 434200 1 0 $X=281300 $Y=428500
X992 1 30 383 314 ICV_12 $T=281880 466600 1 0 $X=281300 $Y=460900
X993 1 30 384 382 ICV_12 $T=284200 466600 0 0 $X=283620 $Y=466300
X994 1 30 362 443 ICV_12 $T=288840 434200 0 0 $X=288260 $Y=433900
X995 1 30 385 238 ICV_12 $T=293480 423400 1 0 $X=292900 $Y=417700
X996 1 30 91 239 ICV_12 $T=294640 412600 0 0 $X=294060 $Y=412300
X997 1 30 386 334 ICV_12 $T=294640 466600 1 0 $X=294060 $Y=460900
X998 1 30 387 337 ICV_12 $T=307400 423400 0 0 $X=306820 $Y=423100
X999 1 30 388 450 ICV_12 $T=307400 455800 1 0 $X=306820 $Y=450100
X1000 1 30 389 248 ICV_12 $T=308560 466600 1 0 $X=307980 $Y=460900
X1001 1 30 390 395 ICV_12 $T=313200 401800 0 0 $X=312620 $Y=401500
X1002 1 30 391 390 ICV_12 $T=317840 412600 0 0 $X=317260 $Y=412300
X1003 1 30 392 482 ICV_12 $T=320160 434200 0 0 $X=319580 $Y=433900
X1004 1 30 393 255 ICV_12 $T=328280 434200 1 0 $X=327700 $Y=428500
X1005 1 30 394 259 ICV_12 $T=334080 412600 0 0 $X=333500 $Y=412300
X1006 1 30 92 341 ICV_12 $T=334080 445000 1 0 $X=333500 $Y=439300
X1007 1 30 395 541 ICV_12 $T=341040 401800 0 0 $X=340460 $Y=401500
X1008 1 30 396 486 ICV_12 $T=341040 412600 1 0 $X=340460 $Y=406900
X1009 1 30 93 263 ICV_12 $T=343360 434200 1 0 $X=342780 $Y=428500
X1010 1 30 397 539 ICV_12 $T=346840 412600 0 0 $X=346260 $Y=412300
X1011 1 30 398 321 ICV_12 $T=348000 401800 1 0 $X=347420 $Y=396100
X1012 1 30 399 266 ICV_12 $T=354960 412600 1 0 $X=354380 $Y=406900
X1013 1 30 400 460 ICV_12 $T=356120 434200 1 0 $X=355540 $Y=428500
X1014 1 30 401 398 ICV_12 $T=360760 391000 0 0 $X=360180 $Y=390700
X1015 1 30 94 465 ICV_12 $T=366560 412600 0 0 $X=365980 $Y=412300
X1016 1 30 95 402 323 156 ICV_13 $T=116000 391000 0 0 $X=115420 $Y=390700
X1017 1 30 96 97 161 165 ICV_13 $T=131080 412600 0 0 $X=130500 $Y=412300
X1018 1 30 98 99 490 168 ICV_13 $T=140360 401800 1 0 $X=139780 $Y=396100
X1019 1 30 403 404 166 405 ICV_13 $T=145000 412600 1 0 $X=144420 $Y=406900
X1020 1 30 405 406 409 174 ICV_13 $T=150800 401800 0 0 $X=150220 $Y=401500
X1021 1 30 100 358 171 528 ICV_13 $T=151960 401800 1 0 $X=151380 $Y=396100
X1022 1 30 407 101 172 175 ICV_13 $T=153120 423400 0 0 $X=152540 $Y=423100
X1023 1 30 102 408 308 495 ICV_13 $T=156600 423400 1 0 $X=156020 $Y=417700
X1024 1 30 409 103 359 177 ICV_13 $T=162400 401800 0 0 $X=161820 $Y=401500
X1025 1 30 410 104 500 183 ICV_13 $T=171680 445000 1 0 $X=171100 $Y=439300
X1026 1 30 105 411 182 532 ICV_13 $T=174000 401800 0 0 $X=173420 $Y=401500
X1027 1 30 412 413 413 190 ICV_13 $T=180960 423400 1 0 $X=180380 $Y=417700
X1028 1 30 285 414 505 192 ICV_13 $T=185600 401800 1 0 $X=185020 $Y=396100
X1029 1 30 106 107 508 416 ICV_13 $T=192560 445000 1 0 $X=191980 $Y=439300
X1030 1 30 415 4 516 510 ICV_13 $T=197200 401800 1 0 $X=196620 $Y=396100
X1031 1 30 416 417 418 369 ICV_13 $T=204160 445000 0 0 $X=203580 $Y=444700
X1032 1 30 418 108 346 372 ICV_13 $T=204160 455800 1 0 $X=203580 $Y=450100
X1033 1 30 419 420 520 202 ICV_13 $T=207640 401800 0 0 $X=207060 $Y=401500
X1034 1 30 421 422 199 421 ICV_13 $T=207640 455800 0 0 $X=207060 $Y=455500
X1035 1 30 109 423 203 208 ICV_13 $T=214600 412600 1 0 $X=214020 $Y=406900
X1036 1 30 110 360 204 348 ICV_13 $T=216920 423400 1 0 $X=216340 $Y=417700
X1037 1 30 424 425 534 331 ICV_13 $T=226200 412600 1 0 $X=225620 $Y=406900
X1038 1 30 111 426 373 377 ICV_13 $T=228520 423400 1 0 $X=227940 $Y=417700
X1039 1 30 427 428 428 529 ICV_13 $T=237800 412600 1 0 $X=237220 $Y=406900
X1040 1 30 429 430 311 380 ICV_13 $T=251720 466600 1 0 $X=251140 $Y=460900
X1041 1 30 431 112 310 226 ICV_13 $T=252880 423400 1 0 $X=252300 $Y=417700
X1042 1 30 113 432 430 227 ICV_13 $T=257520 445000 0 0 $X=256940 $Y=444700
X1043 1 30 433 114 432 351 ICV_13 $T=257520 455800 1 0 $X=256940 $Y=450100
X1044 1 30 434 435 228 476 ICV_13 $T=266800 455800 0 0 $X=266220 $Y=455500
X1045 1 30 436 115 229 383 ICV_13 $T=269120 445000 0 0 $X=268540 $Y=444700
X1046 1 30 437 438 230 231 ICV_13 $T=269120 455800 1 0 $X=268540 $Y=450100
X1047 1 30 439 440 435 521 ICV_13 $T=270280 434200 1 0 $X=269700 $Y=428500
X1048 1 30 441 442 434 381 ICV_13 $T=270280 466600 1 0 $X=269700 $Y=460900
X1049 1 30 116 443 236 355 ICV_13 $T=281880 423400 1 0 $X=281300 $Y=417700
X1050 1 30 117 444 530 237 ICV_13 $T=284200 401800 1 0 $X=283620 $Y=396100
X1051 1 30 445 118 440 333 ICV_13 $T=286520 445000 1 0 $X=285940 $Y=439300
X1052 1 30 446 119 386 480 ICV_13 $T=288840 445000 0 0 $X=288260 $Y=444700
X1053 1 30 120 447 240 538 ICV_13 $T=295800 401800 1 0 $X=295220 $Y=396100
X1054 1 30 448 449 335 453 ICV_13 $T=295800 423400 0 0 $X=295220 $Y=423100
X1055 1 30 450 451 241 232 ICV_13 $T=295800 455800 1 0 $X=295220 $Y=450100
X1056 1 30 452 453 354 392 ICV_13 $T=296960 434200 1 0 $X=296380 $Y=428500
X1057 1 30 454 121 456 246 ICV_13 $T=300440 445000 0 0 $X=299860 $Y=444700
X1058 1 30 122 455 483 389 ICV_13 $T=301600 434200 0 0 $X=301020 $Y=433900
X1059 1 30 364 456 452 365 ICV_13 $T=312040 445000 0 0 $X=311460 $Y=444700
X1060 1 30 457 123 319 527 ICV_13 $T=316680 434200 1 0 $X=316100 $Y=428500
X1061 1 30 458 459 455 458 ICV_13 $T=322480 445000 1 0 $X=321900 $Y=439300
X1062 1 30 124 125 262 356 ICV_13 $T=343360 423400 0 0 $X=342780 $Y=423100
X1063 1 30 460 461 265 467 ICV_13 $T=352640 423400 1 0 $X=352060 $Y=417700
X1064 1 30 462 126 322 269 ICV_13 $T=354960 423400 0 0 $X=354380 $Y=423100
X1065 1 30 463 464 342 461 ICV_13 $T=364240 423400 1 0 $X=363660 $Y=417700
X1066 1 30 465 127 270 464 ICV_13 $T=366560 412600 1 0 $X=365980 $Y=406900
X1067 1 30 128 466 417 515 ICV_14 $T=206480 434200 1 0 $X=205900 $Y=428500
X1068 1 30 129 467 526 268 ICV_14 $T=360760 412600 1 0 $X=360180 $Y=406900
X1069 14 1 130 288 30 1 UDB116SVT24_ND2B_0P75 $T=353800 401800 1 0 $X=353220 $Y=396100
X1070 1 30 468 164 ICV_15 $T=133400 391000 0 0 $X=132820 $Y=390700
X1071 1 30 131 305 ICV_15 $T=136880 412600 1 0 $X=136300 $Y=406900
X1072 1 30 132 306 ICV_15 $T=147320 391000 0 0 $X=146740 $Y=390700
X1073 1 30 469 343 ICV_15 $T=148480 434200 0 0 $X=147900 $Y=433900
X1074 1 30 133 501 ICV_15 $T=175160 423400 0 0 $X=174580 $Y=423100
X1075 1 30 134 184 ICV_15 $T=176320 445000 0 0 $X=175740 $Y=444700
X1076 1 30 6 326 ICV_15 $T=192560 423400 1 0 $X=191980 $Y=417700
X1077 1 30 135 347 ICV_15 $T=199520 455800 0 0 $X=198940 $Y=455500
X1078 1 30 136 327 ICV_15 $T=203000 423400 0 0 $X=202420 $Y=423100
X1079 1 30 470 198 ICV_15 $T=204160 445000 1 0 $X=203580 $Y=439300
X1080 1 30 471 426 ICV_15 $T=230840 434200 0 0 $X=230260 $Y=433900
X1081 1 30 137 218 ICV_15 $T=235480 455800 1 0 $X=234900 $Y=450100
X1082 1 30 138 473 ICV_15 $T=249400 434200 0 0 $X=248820 $Y=433900
X1083 1 30 472 222 ICV_15 $T=249400 445000 0 0 $X=248820 $Y=444700
X1084 1 30 473 41 ICV_15 $T=249400 455800 1 0 $X=248820 $Y=450100
X1085 1 30 474 472 ICV_15 $T=249400 455800 0 0 $X=248820 $Y=455500
X1086 1 30 475 536 ICV_15 $T=264480 423400 1 0 $X=263900 $Y=417700
X1087 1 30 476 384 ICV_15 $T=267960 445000 1 0 $X=267380 $Y=439300
X1088 1 30 477 315 ICV_15 $T=272600 423400 0 0 $X=272020 $Y=423100
X1089 1 30 478 336 ICV_15 $T=272600 434200 0 0 $X=272020 $Y=433900
X1090 1 30 479 451 ICV_15 $T=280720 434200 0 0 $X=280140 $Y=433900
X1091 1 30 139 479 ICV_15 $T=280720 445000 0 0 $X=280140 $Y=444700
X1092 1 30 480 385 ICV_15 $T=287680 423400 0 0 $X=287100 $Y=423100
X1093 1 30 481 242 ICV_15 $T=294640 455800 0 0 $X=294060 $Y=455500
X1094 1 30 482 244 ICV_15 $T=300440 466600 1 0 $X=299860 $Y=460900
X1095 1 30 483 363 ICV_15 $T=307400 455800 0 0 $X=306820 $Y=455500
X1096 1 30 484 249 ICV_15 $T=308560 423400 1 0 $X=307980 $Y=417700
X1097 1 30 140 484 ICV_15 $T=308560 434200 1 0 $X=307980 $Y=428500
X1098 1 30 485 540 ICV_15 $T=310880 412600 1 0 $X=310300 $Y=406900
X1099 1 30 486 257 ICV_15 $T=330600 391000 0 0 $X=330020 $Y=390700
X1100 1 30 487 396 ICV_15 $T=335240 423400 1 0 $X=334660 $Y=417700
X1101 1 30 141 401 ICV_15 $T=335240 423400 0 0 $X=334660 $Y=423100
X1102 1 30 488 489 ICV_15 $T=346840 412600 1 0 $X=346260 $Y=406900
X1103 1 30 489 399 ICV_15 $T=352640 412600 0 0 $X=352060 $Y=412300
X1104 404 542 275 532 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=163560 401800 1 0 $X=162980 $Y=396100
X1105 507 543 275 533 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=185600 401800 0 0 $X=185020 $Y=401500
X1106 345 544 275 197 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=187920 391000 0 0 $X=187340 $Y=390700
X1107 415 545 275 534 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=208800 401800 1 0 $X=208220 $Y=396100
X1108 200 546 275 211 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=209960 391000 0 0 $X=209380 $Y=390700
X1109 425 547 275 536 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=249400 412600 1 0 $X=248820 $Y=406900
X1110 221 548 275 537 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=250560 401800 1 0 $X=249980 $Y=396100
X1111 332 549 275 535 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=273760 401800 1 180 $X=251140 $Y=401500
X1112 525 550 276 243 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=284200 391000 0 0 $X=283620 $Y=390700
X1113 522 551 276 538 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=284200 401800 0 0 $X=283620 $Y=401500
X1114 387 552 276 253 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=308560 391000 0 0 $X=307980 $Y=390700
X1115 318 553 276 258 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=315520 401800 1 0 $X=314940 $Y=396100
X1116 457 554 276 12 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=319000 401800 0 0 $X=318420 $Y=401500
X1117 340 555 276 260 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=319000 412600 1 0 $X=318420 $Y=406900
X1118 487 556 276 267 187 30 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=338720 391000 0 0 $X=338140 $Y=390700
X1119 30 1 490 491 142 492 491 160 492 163 ICV_16 $T=128760 401800 1 0 $X=128180 $Y=396100
X1120 30 1 493 494 495 496 494 406 496 176 ICV_16 $T=156600 412600 1 0 $X=156020 $Y=406900
X1121 30 1 497 143 144 498 103 178 181 420 ICV_16 $T=168200 412600 1 0 $X=167620 $Y=406900
X1122 30 1 499 500 501 502 410 285 502 498 ICV_16 $T=171680 434200 1 0 $X=171100 $Y=428500
X1123 30 1 503 145 504 505 504 185 189 411 ICV_16 $T=179800 412600 1 0 $X=179220 $Y=406900
X1124 30 1 506 507 508 509 324 325 509 503 ICV_16 $T=183280 434200 1 0 $X=182700 $Y=428500
X1125 30 1 146 510 511 512 193 414 512 330 ICV_16 $T=191400 412600 1 0 $X=190820 $Y=406900
X1126 30 1 513 514 515 516 419 194 368 466 ICV_16 $T=194880 434200 1 0 $X=194300 $Y=428500
X1127 30 1 517 518 519 520 196 533 518 519 ICV_16 $T=203000 412600 1 0 $X=202420 $Y=406900
X1128 30 1 521 147 148 522 537 439 233 523 ICV_16 $T=271440 412600 1 0 $X=270860 $Y=406900
X1129 30 1 523 524 149 525 524 531 339 444 ICV_16 $T=283040 412600 1 0 $X=282460 $Y=406900
X1130 30 1 526 527 150 151 338 252 320 256 ICV_16 $T=323640 423400 1 0 $X=323060 $Y=417700
X1131 11 12 30 447 539 250 1169 1 1 UDB116SVT24_AOI22_0P75 $T=308560 401800 1 0 $X=307980 $Y=396100
X1132 283 2 499 152 1 30 528 1 UDB116SVT24_OA22_1 $T=177480 391000 1 180 $X=168780 $Y=390700
X1133 287 5 147 10 1 30 529 1 UDB116SVT24_OA22_1 $T=240120 401800 1 0 $X=239540 $Y=396100
X1134 6 5 87 10 1 30 153 1 UDB116SVT24_OA22_1 $T=259840 391000 0 0 $X=259260 $Y=390700
X1135 8 5 446 10 1 30 530 1 UDB116SVT24_OA22_1 $T=273760 391000 0 0 $X=273180 $Y=390700
X1136 9 5 454 10 1 30 531 1 UDB116SVT24_OA22_1 $T=276080 401800 1 0 $X=275500 $Y=396100
X1137 7 1 1 UDB116SVT24_TIEDIN_1 $T=261000 466600 0 0 $X=260420 $Y=466300
X1138 1 3 4 186 419 285 30 1 UDB116SVT24_ND4_0P75 $T=180960 391000 0 0 $X=180380 $Y=390700
.ENDS
***************************************
.SUBCKT UDB116SVT24_AN3B_0P75 B1 B2 VDD X A VSS VNW_P
** N=15 EP=7 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 13 B1 12 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 VSS B2 13 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X 12 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 VSS A X VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 12 B1 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M5 VDD B2 12 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M6 14 12 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M7 X A 14 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_OR3B_0P75 B1 2 B2 VSS X A VDD VNW_P
** N=15 EP=8 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 2 B1 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 VSS B2 2 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 13 2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 X A 13 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 14 B1 2 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M5 VDD B2 14 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M6 X 2 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M7 VDD A X VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_AOI21B_0P75 A2 X A1 VSS VDD B 7 VNW_P 13
** N=15 EP=9 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 14 A2 VSS VNW_P nfet L=2.8e-08 W=1.05e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X A1 14 VNW_P nfet L=2.8e-08 W=1.05e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 VSS 7 X VNW_P nfet L=2.8e-08 W=1.05e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 7 B VSS VNW_P nfet L=2.8e-08 W=1.05e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 X A2 13 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3300 $D=641
M5 13 A1 X VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3300 $D=641
M6 VDD 7 13 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3300 $D=641
M7 7 B VDD VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3300 $D=641
.ENDS
***************************************
.SUBCKT ICV_18 1 2 3 4 7
** N=9 EP=5 IP=17 FDC=5
M0 2 2 3 1 pfet_cnrx $X=4500 $Y=3200 $D=645
X2 4 7 2 1 3 1 UDB116SVT24_BUF_L_1 $T=0 0 0 0 $X=-580 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_AO2BB2_0P75 A2 A1 X VSS B2 B1 VDD VNW_P
** N=19 EP=8 IP=0 FDC=10
*.CALIBRE ISOLATED NETS: VPW_N
M0 X A2 13 VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 13 A1 X VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 VSS 14 13 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M3 17 B2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M4 14 B1 17 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=500 $D=533
M5 18 A2 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3500 $D=641
M6 X A1 18 VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3500 $D=641
M7 VDD 14 X VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3500 $D=641
M8 14 B2 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3500 $D=641
M9 VDD B1 14 VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=3500 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_ADDF_V1_1 CO B A CI VSS VDD S VNW_P
** N=30 EP=8 IP=0 FDC=33
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS 13 CO VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 24 B VSS VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M2 13 A 24 VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M3 15 CI 13 VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M4 VSS A 15 VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=500 $D=533
M5 15 B VSS VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=7980 $Y=500 $D=533
M6 16 B VSS VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=10300 $Y=500 $D=533
M7 VSS A 16 VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=11460 $Y=500 $D=533
M8 16 CI VSS VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=12620 $Y=500 $D=533
M9 18 13 16 VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=13780 $Y=500 $D=533
M10 25 CI 18 VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=14940 $Y=500 $D=533
M11 26 A 25 VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=16100 $Y=500 $D=533
M12 VSS B 26 VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=17260 $Y=500 $D=533
M13 S 18 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=19580 $Y=500 $D=533
M14 VDD 13 CO VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3200 $D=641
M15 27 B VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M16 13 A 27 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3400 $D=641
M17 14 CI 13 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3400 $D=641
M18 VDD A 14 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=3400 $D=641
M19 14 B VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=7980 $Y=3400 $D=641
M20 17 B VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=10300 $Y=3400 $D=641
M21 VDD A 17 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=11460 $Y=3400 $D=641
M22 17 CI VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=12620 $Y=3400 $D=641
M23 18 13 17 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=13780 $Y=3400 $D=641
M24 28 CI 18 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=14940 $Y=3400 $D=641
M25 29 A 28 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=16100 $Y=3400 $D=641
M26 VDD B 29 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=17260 $Y=3400 $D=641
M27 S 18 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=19580 $Y=3200 $D=641
M28 VSS 19 VSS VNW_P nfet_auxpc2 $X=2180 $Y=500 $D=538
M29 VSS 22 VSS VNW_P nfet_auxpc2 $X=18420 $Y=500 $D=538
M30 VDD 20 VDD VNW_P pfet_auxpc2 $X=2180 $Y=3200 $D=644
M31 VDD 23 VDD VNW_P pfet_auxpc2 $X=18420 $Y=3400 $D=644
M32 VDD VDD 14 VNW_P pfet_cnrx $X=9140 $Y=3400 $D=645
.ENDS
***************************************
.SUBCKT UDB116SVT24_AO21B_0P75 B X A2 VSS A1 VDD VNW_P
** N=16 EP=7 IP=0 FDC=9
*.CALIBRE ISOLATED NETS: VPW_N
M0 14 B VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X 12 14 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 15 A2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M3 12 A1 15 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M4 X B VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3500 $D=641
M5 VDD 12 X VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3500 $D=641
M6 12 A2 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3500 $D=641
M7 VDD A1 12 VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3500 $D=641
M8 VDD VDD VDD VNW_P pfet_cnrx $X=3340 $Y=3500 $D=645
.ENDS
***************************************
.SUBCKT UDB116SVT24_OAI22_0P75 B2 VSS B1 A1 X A2 VDD VNW_P
** N=16 EP=8 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS B2 13 VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 13 B1 VSS VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X A1 13 VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 13 A2 X VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 14 B2 VDD VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3500 $D=641
M5 X B1 14 VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3500 $D=641
M6 15 A1 X VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3500 $D=641
M7 VDD A2 15 VNW_P pfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3500 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_EN2_V2_0P75 A2 A1 VSS X VDD VNW_P
** N=17 EP=6 IP=0 FDC=10
*.CALIBRE ISOLATED NETS: VPW_N
M0 15 A1 11 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 VSS A2 15 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 12 A2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 VSS A1 12 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 X 11 12 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=500 $D=533
M5 11 A1 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M6 VDD A2 11 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M7 16 A2 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M8 X A1 16 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3400 $D=641
M9 VDD 11 X VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_NR3_0P75 VDD A3 A2 X A1 VSS VNW_P
** N=14 EP=7 IP=0 FDC=6
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS A3 X VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X A2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 VSS A1 X VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 12 A3 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M4 13 A2 12 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M5 X A1 13 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_MAJI3_1 A1 A2 A3 X VSS VDD VNW_P 14
** N=19 EP=8 IP=0 FDC=10
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS A1 13 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 13 A2 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X A3 13 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 17 A1 X VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M4 VSS A2 17 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=500 $D=533
M5 VDD A1 14 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3200 $D=641
M6 14 A2 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3200 $D=641
M7 X A3 14 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3200 $D=641
M8 18 A1 X VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3200 $D=641
M9 VDD A2 18 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=3200 $D=641
.ENDS
***************************************
.SUBCKT ICV_19 1 2 3 4
** N=8 EP=4 IP=14 FDC=6
M0 2 2 3 1 pfet_cnrx $X=5660 $Y=3200 $D=645
X2 1 2 3 4 ICV_12 $T=0 0 0 0 $X=-580 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_AOI21_0P75 A2 A1 VDD X 5 B VSS VNW_P
** N=14 EP=8 IP=0 FDC=6
*.CALIBRE ISOLATED NETS: VPW_N
M0 13 A2 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X A1 13 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 VSS B X VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 VDD A2 5 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M4 5 A1 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M5 X B 5 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_ND3_0P75 VSS A3 A2 X A1 VDD VNW_P
** N=14 EP=7 IP=0 FDC=6
*.CALIBRE ISOLATED NETS: VPW_N
M0 12 A3 VSS VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 13 A2 12 VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X A1 13 VNW_P nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 VDD A3 X VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M4 X A2 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M5 VDD A1 X VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_NR4_0P75 VDD A4 A3 A2 X A1 VSS VNW_P
** N=16 EP=8 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 X A4 VSS VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 VSS A3 X VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X A2 VSS VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 VSS A1 X VNW_P nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 13 A4 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M5 14 A3 13 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M6 15 A2 14 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M7 X A1 15 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_OA2BB2_0P75 A2 2 X A1 B2 VDD 7 B1 VSS VNW_P
** N=19 EP=10 IP=0 FDC=11
*.CALIBRE ISOLATED NETS: VPW_N
M0 16 A2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X A1 16 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 VSS 7 X VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 7 B2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M4 VSS B1 7 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=500 $D=533
M5 X A2 2 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3300 $D=641
M6 2 A1 X VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3300 $D=641
M7 VDD 7 2 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3300 $D=641
M8 17 B2 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3400 $D=641
M9 7 B1 17 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=3400 $D=641
M10 VDD VDD VDD VNW_P pfet_cnrx $X=4500 $Y=3400 $D=646
.ENDS
***************************************
.SUBCKT ICV_20 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
+ 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
+ 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80
+ 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100
+ 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120
+ 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140
+ 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160
+ 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180
+ 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 199 200 201
+ 202 203 204 205 206 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222
+ 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242
+ 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262
+ 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282
+ 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302
+ 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322
+ 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 343
+ 344 348 350 351 352
*.CALIBRE ICV_CELL 2
** N=2069 EP=345 IP=6004 FDC=7096
M0 453 19 1 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=192420 $Y=356600 $D=533
M1 1 456 453 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=193580 $Y=356600 $D=533
M2 453 457 1 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=194740 $Y=356600 $D=533
M3 1 458 453 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=195900 $Y=356600 $D=533
M4 458 21 1 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=198220 $Y=356600 $D=533
M5 1 488 487 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=379180 $Y=389000 $D=533
M6 490 71 488 1 nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=381500 $Y=388950 $D=533
M7 1 74 490 1 nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=382660 $Y=388950 $D=533
M8 490 78 1 1 nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=383820 $Y=388950 $D=533
M9 1 495 80 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=393100 $Y=378700 $D=533
M10 495 82 1 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=395420 $Y=378700 $D=533
M11 1585 493 495 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=396580 $Y=378700 $D=533
M12 1 467 1585 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=397740 $Y=378700 $D=533
M13 1592 19 93 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=192420 $Y=353700 $D=641
M14 1593 456 1592 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=193580 $Y=353700 $D=641
M15 1594 457 1593 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=194740 $Y=353700 $D=641
M16 453 458 1594 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=195900 $Y=353700 $D=641
M17 458 21 93 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=198220 $Y=353700 $D=641
M18 93 488 487 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=379180 $Y=386100 $D=641
M19 488 71 93 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=381500 $Y=386100 $D=641
M20 1617 74 488 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=382660 $Y=386100 $D=641
M21 93 78 1617 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=383820 $Y=386100 $D=641
M22 93 495 80 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=393100 $Y=375300 $D=641
M23 496 82 495 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=395420 $Y=375300 $D=641
M24 93 493 496 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=396580 $Y=375300 $D=641
M25 496 467 93 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=397740 $Y=375300 $D=641
M26 1 799 1 1 nfet_auxpc2 $X=394260 $Y=378700 $D=537
M27 93 795 93 1 pfet_auxpc2 $X=380340 $Y=386100 $D=644
M28 93 93 96 1 pfet_cnrx $X=54380 $Y=340200 $D=645
M29 93 93 97 1 pfet_cnrx $X=54380 $Y=351000 $D=645
M30 93 93 98 1 pfet_cnrx $X=54380 $Y=361800 $D=645
M31 93 93 99 1 pfet_cnrx $X=54380 $Y=372600 $D=645
M32 93 93 100 1 pfet_cnrx $X=54380 $Y=383400 $D=645
M33 93 93 93 1 pfet_cnrx $X=60180 $Y=364500 $D=645
M34 93 93 141 1 pfet_cnrx $X=60180 $Y=372600 $D=645
M35 93 93 93 1 pfet_cnrx $X=60180 $Y=375300 $D=645
M36 93 93 93 1 pfet_cnrx $X=60180 $Y=386100 $D=645
M37 93 93 613 1 pfet_cnrx $X=65980 $Y=340200 $D=645
M38 93 93 615 1 pfet_cnrx $X=65980 $Y=351000 $D=645
M39 93 93 616 1 pfet_cnrx $X=65980 $Y=361800 $D=645
M40 93 93 590 1 pfet_cnrx $X=65980 $Y=364500 $D=645
M41 93 93 93 1 pfet_cnrx $X=69460 $Y=372600 $D=645
M42 93 93 93 1 pfet_cnrx $X=70620 $Y=372600 $D=645
M43 93 93 528 1 pfet_cnrx $X=71780 $Y=342900 $D=645
M44 93 93 529 1 pfet_cnrx $X=71780 $Y=353700 $D=645
M45 93 93 530 1 pfet_cnrx $X=75260 $Y=361800 $D=645
M46 93 93 531 1 pfet_cnrx $X=75260 $Y=364500 $D=645
M47 93 93 532 1 pfet_cnrx $X=76420 $Y=351000 $D=645
M48 93 93 617 1 pfet_cnrx $X=77580 $Y=340200 $D=645
M49 93 93 93 1 pfet_cnrx $X=82220 $Y=364500 $D=645
M50 93 93 618 1 pfet_cnrx $X=83380 $Y=342900 $D=645
M51 93 93 619 1 pfet_cnrx $X=83380 $Y=353700 $D=645
M52 93 93 533 1 pfet_cnrx $X=84540 $Y=361800 $D=645
M53 93 93 152 1 pfet_cnrx $X=88020 $Y=351000 $D=645
M54 93 93 534 1 pfet_cnrx $X=88020 $Y=372600 $D=645
M55 93 93 622 1 pfet_cnrx $X=89180 $Y=340200 $D=645
M56 93 93 93 1 pfet_cnrx $X=91500 $Y=383400 $D=645
M57 93 93 624 1 pfet_cnrx $X=93820 $Y=364500 $D=645
M58 93 93 153 1 pfet_cnrx $X=94980 $Y=342900 $D=645
M59 93 93 627 1 pfet_cnrx $X=94980 $Y=353700 $D=645
M60 93 93 629 1 pfet_cnrx $X=96140 $Y=361800 $D=645
M61 93 93 93 1 pfet_cnrx $X=97300 $Y=386100 $D=645
M62 93 93 102 1 pfet_cnrx $X=98460 $Y=375300 $D=645
M63 93 93 535 1 pfet_cnrx $X=104260 $Y=383400 $D=645
M64 93 93 636 1 pfet_cnrx $X=107740 $Y=361800 $D=645
M65 93 93 536 1 pfet_cnrx $X=108900 $Y=386100 $D=645
M66 93 93 537 1 pfet_cnrx $X=111220 $Y=375300 $D=645
M67 93 93 638 1 pfet_cnrx $X=115860 $Y=383400 $D=645
M68 93 93 447 1 pfet_cnrx $X=119340 $Y=361800 $D=645
M69 93 93 640 1 pfet_cnrx $X=120500 $Y=386100 $D=645
M70 93 93 749 1 pfet_cnrx $X=121660 $Y=351000 $D=645
M71 93 93 750 1 pfet_cnrx $X=121660 $Y=353700 $D=645
M72 93 93 751 1 pfet_cnrx $X=121660 $Y=364500 $D=645
M73 93 93 752 1 pfet_cnrx $X=121660 $Y=372600 $D=645
M74 93 93 753 1 pfet_cnrx $X=122820 $Y=340200 $D=645
M75 93 93 754 1 pfet_cnrx $X=122820 $Y=342900 $D=645
M76 1394 93 93 1 pfet_cnrx $X=122820 $Y=351000 $D=645
M77 93 93 157 1 pfet_cnrx $X=122820 $Y=375300 $D=645
M78 1395 93 93 1 pfet_cnrx $X=123980 $Y=342900 $D=645
M79 93 93 120 1 pfet_cnrx $X=126300 $Y=351000 $D=645
M80 93 93 122 1 pfet_cnrx $X=127460 $Y=342900 $D=645
M81 93 93 642 1 pfet_cnrx $X=127460 $Y=383400 $D=645
M82 93 93 659 1 pfet_cnrx $X=135580 $Y=372600 $D=645
M83 93 93 177 1 pfet_cnrx $X=136740 $Y=340200 $D=645
M84 93 93 455 1 pfet_cnrx $X=139060 $Y=342900 $D=645
M85 759 93 93 1 pfet_cnrx $X=140220 $Y=342900 $D=645
M86 93 93 539 1 pfet_cnrx $X=144860 $Y=361800 $D=645
M87 1398 93 93 1 pfet_cnrx $X=148340 $Y=386100 $D=645
M88 93 93 142 1 pfet_cnrx $X=150660 $Y=361800 $D=645
M89 93 93 565 1 pfet_cnrx $X=151820 $Y=386100 $D=645
M90 93 93 756 1 pfet_cnrx $X=157620 $Y=375300 $D=645
M91 93 93 160 1 pfet_cnrx $X=157620 $Y=383400 $D=645
M92 93 93 757 1 pfet_cnrx $X=158780 $Y=353700 $D=645
M93 93 93 758 1 pfet_cnrx $X=159940 $Y=351000 $D=645
M94 93 93 540 1 pfet_cnrx $X=159940 $Y=361800 $D=645
M95 93 93 760 1 pfet_cnrx $X=164580 $Y=340200 $D=645
M96 93 93 452 1 pfet_cnrx $X=164580 $Y=353700 $D=645
M97 1401 93 93 1 pfet_cnrx $X=164580 $Y=383400 $D=645
M98 124 93 93 1 pfet_cnrx $X=165740 $Y=340200 $D=645
M99 1561 93 93 1 pfet_cnrx $X=165740 $Y=372800 $D=645
M100 93 93 567 1 pfet_cnrx $X=168060 $Y=383400 $D=645
M101 180 93 93 1 pfet_cnrx $X=169220 $Y=383400 $D=645
M102 93 93 647 1 pfet_cnrx $X=171540 $Y=351000 $D=645
M103 93 93 1404 1 pfet_cnrx $X=175020 $Y=361800 $D=645
M104 93 93 571 1 pfet_cnrx $X=178500 $Y=351000 $D=645
M105 93 93 93 1 pfet_cnrx $X=179660 $Y=362100 $D=645
M106 93 93 93 1 pfet_cnrx $X=181980 $Y=364500 $D=645
M107 93 93 542 1 pfet_cnrx $X=184300 $Y=372600 $D=645
M108 93 93 178 1 pfet_cnrx $X=187780 $Y=361800 $D=645
M109 93 93 761 1 pfet_cnrx $X=187780 $Y=386100 $D=645
M110 93 93 762 1 pfet_cnrx $X=188940 $Y=375300 $D=645
M111 93 93 162 1 pfet_cnrx $X=188940 $Y=383400 $D=645
M112 93 93 763 1 pfet_cnrx $X=190100 $Y=342900 $D=645
M113 93 93 764 1 pfet_cnrx $X=191260 $Y=340200 $D=645
M114 181 93 93 1 pfet_cnrx $X=194740 $Y=361800 $D=645
M115 1407 93 93 1 pfet_cnrx $X=195900 $Y=383400 $D=645
M116 93 93 453 1 pfet_cnrx $X=197060 $Y=353700 $D=645
M117 93 93 573 1 pfet_cnrx $X=199380 $Y=383400 $D=645
M118 93 93 568 1 pfet_cnrx $X=204020 $Y=351000 $D=645
M119 93 93 543 1 pfet_cnrx $X=207500 $Y=375300 $D=645
M120 93 93 93 1 pfet_cnrx $X=210980 $Y=342900 $D=645
M121 93 93 164 1 pfet_cnrx $X=210980 $Y=383400 $D=645
M122 93 93 183 1 pfet_cnrx $X=210980 $Y=386100 $D=645
M123 671 93 93 1 pfet_cnrx $X=213300 $Y=353700 $D=645
M124 93 93 670 1 pfet_cnrx $X=216780 $Y=361800 $D=645
M125 673 93 93 1 pfet_cnrx $X=217940 $Y=386100 $D=645
M126 1317 93 93 1 pfet_cnrx $X=221420 $Y=353700 $D=645
M127 1320 93 93 1 pfet_cnrx $X=222580 $Y=372800 $D=645
M128 93 93 104 1 pfet_cnrx $X=226060 $Y=340200 $D=645
M129 1322 93 93 1 pfet_cnrx $X=230700 $Y=375300 $D=645
M130 93 93 767 1 pfet_cnrx $X=234180 $Y=383400 $D=645
M131 575 93 93 1 pfet_cnrx $X=235340 $Y=372600 $D=645
M132 125 93 93 1 pfet_cnrx $X=235340 $Y=383400 $D=645
M133 93 93 769 1 pfet_cnrx $X=236500 $Y=364500 $D=645
M134 93 93 184 1 pfet_cnrx $X=239980 $Y=386100 $D=645
M135 93 93 770 1 pfet_cnrx $X=241140 $Y=342900 $D=645
M136 93 93 662 1 pfet_cnrx $X=243460 $Y=375300 $D=645
M137 93 93 574 1 pfet_cnrx $X=248100 $Y=364500 $D=645
M138 93 93 93 1 pfet_cnrx $X=249260 $Y=361800 $D=645
M139 93 93 107 1 pfet_cnrx $X=249260 $Y=386100 $D=645
M140 93 93 113 1 pfet_cnrx $X=251580 $Y=351200 $D=645
M141 93 93 771 1 pfet_cnrx $X=252740 $Y=353700 $D=645
M142 93 93 545 1 pfet_cnrx $X=253900 $Y=340200 $D=645
M143 674 93 93 1 pfet_cnrx $X=255060 $Y=364500 $D=645
M144 93 93 167 1 pfet_cnrx $X=260860 $Y=386100 $D=645
M145 93 93 663 1 pfet_cnrx $X=262020 $Y=372600 $D=645
M146 127 93 93 1 pfet_cnrx $X=263180 $Y=361800 $D=645
M147 93 93 1413 1 pfet_cnrx $X=266660 $Y=361800 $D=645
M148 93 93 664 1 pfet_cnrx $X=268980 $Y=342900 $D=645
M149 93 93 108 1 pfet_cnrx $X=270140 $Y=386100 $D=645
M150 93 93 665 1 pfet_cnrx $X=271300 $Y=364500 $D=645
M151 93 93 774 1 pfet_cnrx $X=273620 $Y=351000 $D=645
M152 577 93 93 1 pfet_cnrx $X=275940 $Y=342900 $D=645
M153 93 93 462 1 pfet_cnrx $X=277100 $Y=353700 $D=645
M154 675 93 93 1 pfet_cnrx $X=277100 $Y=386100 $D=645
M155 93 93 652 1 pfet_cnrx $X=278260 $Y=361800 $D=645
M156 677 93 93 1 pfet_cnrx $X=279420 $Y=361800 $D=645
M157 93 93 1417 1 pfet_cnrx $X=279420 $Y=372600 $D=645
M158 678 93 93 1 pfet_cnrx $X=280580 $Y=364500 $D=645
M159 93 93 93 1 pfet_cnrx $X=285220 $Y=386100 $D=645
M160 132 93 93 1 pfet_cnrx $X=286380 $Y=340200 $D=645
M161 93 93 676 1 pfet_cnrx $X=287540 $Y=342900 $D=645
M162 464 93 93 1 pfet_cnrx $X=287540 $Y=351000 $D=645
M163 93 93 93 1 pfet_cnrx $X=287540 $Y=362000 $D=645
M164 42 93 93 1 pfet_cnrx $X=288700 $Y=342900 $D=645
M165 778 93 93 1 pfet_cnrx $X=288700 $Y=353700 $D=645
M166 93 93 93 1 pfet_cnrx $X=288700 $Y=364500 $D=645
M167 93 93 168 1 pfet_cnrx $X=288700 $Y=383400 $D=645
M168 93 93 1419 1 pfet_cnrx $X=289860 $Y=340200 $D=645
M169 93 93 775 1 pfet_cnrx $X=300300 $Y=375300 $D=645
M170 93 93 38 1 pfet_cnrx $X=300300 $Y=383400 $D=645
M171 93 93 170 1 pfet_cnrx $X=301460 $Y=340200 $D=645
M172 1424 93 93 1 pfet_cnrx $X=302620 $Y=340200 $D=645
M173 93 93 179 1 pfet_cnrx $X=303780 $Y=372600 $D=645
M174 93 93 578 1 pfet_cnrx $X=306100 $Y=340200 $D=645
M175 93 93 777 1 pfet_cnrx $X=309580 $Y=361800 $D=645
M176 1425 93 93 1 pfet_cnrx $X=310740 $Y=361800 $D=645
M177 93 93 171 1 pfet_cnrx $X=311900 $Y=375300 $D=645
M178 93 93 780 1 pfet_cnrx $X=313060 $Y=351000 $D=645
M179 93 93 781 1 pfet_cnrx $X=314220 $Y=342900 $D=645
M180 93 93 579 1 pfet_cnrx $X=314220 $Y=361800 $D=645
M181 93 93 656 1 pfet_cnrx $X=315380 $Y=372600 $D=645
M182 93 93 657 1 pfet_cnrx $X=323500 $Y=375300 $D=645
M183 93 93 782 1 pfet_cnrx $X=323500 $Y=383400 $D=645
M184 93 93 666 1 pfet_cnrx $X=328140 $Y=342900 $D=645
M185 137 93 93 1 pfet_cnrx $X=328140 $Y=351000 $D=645
M186 93 93 93 1 pfet_cnrx $X=329300 $Y=362100 $D=645
M187 93 93 1427 1 pfet_cnrx $X=331620 $Y=351000 $D=645
M188 93 93 93 1 pfet_cnrx $X=333940 $Y=364500 $D=645
M189 93 93 93 1 pfet_cnrx $X=333940 $Y=386100 $D=645
M190 93 93 93 1 pfet_cnrx $X=335100 $Y=340500 $D=645
M191 93 93 784 1 pfet_cnrx $X=336260 $Y=353700 $D=645
M192 581 93 93 1 pfet_cnrx $X=336260 $Y=372600 $D=645
M193 93 93 1428 1 pfet_cnrx $X=339740 $Y=372600 $D=645
M194 93 93 667 1 pfet_cnrx $X=342060 $Y=342900 $D=645
M195 1430 93 93 1 pfet_cnrx $X=347860 $Y=372600 $D=645
M196 93 93 93 1 pfet_cnrx $X=350180 $Y=353700 $D=645
M197 93 93 138 1 pfet_cnrx $X=351340 $Y=372600 $D=645
M198 93 93 93 1 pfet_cnrx $X=352500 $Y=383700 $D=645
M199 93 93 668 1 pfet_cnrx $X=354820 $Y=361800 $D=645
M200 93 93 93 1 pfet_cnrx $X=355980 $Y=353700 $D=645
M201 1614 93 93 1 pfet_cnrx $X=357140 $Y=353700 $D=645
M202 93 93 785 1 pfet_cnrx $X=359460 $Y=351000 $D=645
M203 93 93 470 1 pfet_cnrx $X=361780 $Y=353700 $D=645
M204 474 93 93 1 pfet_cnrx $X=361780 $Y=375300 $D=645
M205 93 93 59 1 pfet_cnrx $X=362940 $Y=342900 $D=645
M206 93 93 787 1 pfet_cnrx $X=365260 $Y=386100 $D=645
M207 93 93 1615 1 pfet_cnrx $X=366420 $Y=375300 $D=645
M208 93 93 147 1 pfet_cnrx $X=368740 $Y=342900 $D=645
M209 93 93 93 1 pfet_cnrx $X=368740 $Y=364500 $D=645
M210 93 93 93 1 pfet_cnrx $X=375700 $Y=340500 $D=645
M211 93 93 552 1 pfet_cnrx $X=379180 $Y=353700 $D=645
M212 93 93 93 1 pfet_cnrx $X=380340 $Y=375300 $D=645
M213 93 93 669 1 pfet_cnrx $X=381500 $Y=361800 $D=645
M214 93 93 93 1 pfet_cnrx $X=383820 $Y=340500 $D=645
M215 93 93 139 1 pfet_cnrx $X=383820 $Y=364500 $D=645
M216 93 93 93 1 pfet_cnrx $X=383820 $Y=375300 $D=645
M217 93 93 93 1 pfet_cnrx $X=387300 $Y=375300 $D=645
M218 93 93 93 1 pfet_cnrx $X=388460 $Y=386100 $D=645
M219 93 93 110 1 pfet_cnrx $X=390780 $Y=383400 $D=645
M220 495 93 93 1 pfet_cnrx $X=394260 $Y=375300 $D=645
M221 93 93 738 1 pfet_cnrx $X=395420 $Y=351000 $D=645
M222 739 93 93 1 pfet_cnrx $X=396580 $Y=351000 $D=645
M223 93 93 584 1 pfet_cnrx $X=396580 $Y=353700 $D=645
M224 93 93 492 1 pfet_cnrx $X=398900 $Y=342900 $D=645
M225 1354 93 93 1 pfet_cnrx $X=400060 $Y=353700 $D=645
M226 82 93 93 1 pfet_cnrx $X=400060 $Y=375300 $D=645
M227 93 93 93 1 pfet_cnrx $X=402380 $Y=386100 $D=645
M228 586 93 93 1 pfet_cnrx $X=403540 $Y=372600 $D=645
M229 93 93 93 1 pfet_cnrx $X=405860 $Y=386100 $D=645
M230 93 93 1435 1 pfet_cnrx $X=407020 $Y=372600 $D=645
M231 93 93 93 1 pfet_cnrx $X=407020 $Y=375300 $D=645
M232 93 93 789 1 pfet_cnrx $X=409340 $Y=361800 $D=645
M233 93 93 790 1 pfet_cnrx $X=411660 $Y=364500 $D=645
M234 93 93 93 1 pfet_cnrx $X=411660 $Y=375300 $D=645
M235 93 93 93 1 pfet_cnrx $X=411660 $Y=383700 $D=645
M236 93 93 93 1 pfet_cnrx $X=413980 $Y=375300 $D=645
M237 93 93 93 1 pfet_cnrx $X=416300 $Y=353700 $D=645
M238 93 93 93 1 pfet_cnrx $X=418620 $Y=375300 $D=645
M239 93 93 1619 1 pfet_cnrx $X=418620 $Y=383400 $D=645
M240 93 93 93 1 pfet_cnrx $X=419780 $Y=364500 $D=645
M241 93 93 93 1 pfet_cnrx $X=420940 $Y=351300 $D=645
M242 93 93 84 1 pfet_cnrx $X=423260 $Y=386100 $D=645
M243 93 93 1620 1 pfet_cnrx $X=425580 $Y=375300 $D=645
M244 93 93 588 1 pfet_cnrx $X=429060 $Y=342900 $D=645
M245 93 93 502 1 pfet_cnrx $X=430220 $Y=383400 $D=645
M246 93 93 748 1 pfet_cnrx $X=431380 $Y=340200 $D=645
M247 1622 93 93 1 pfet_cnrx $X=436020 $Y=383400 $D=645
M248 93 93 93 1 pfet_cnrx $X=437180 $Y=386100 $D=645
M249 93 93 174 1 pfet_cnrx $X=442980 $Y=340200 $D=645
M250 93 93 503 1 pfet_cnrx $X=446460 $Y=361800 $D=645
M251 93 93 611 1 pfet_cnrx $X=448780 $Y=340200 $D=645
M252 93 93 93 1 pfet_cnrx $X=448780 $Y=342900 $D=645
M253 93 93 93 1 pfet_cnrx $X=448780 $Y=364500 $D=645
M254 93 93 93 1 pfet_cnrx $X=448780 $Y=375300 $D=645
M255 93 93 93 1 pfet_cnrx $X=448780 $Y=386100 $D=645
M256 93 93 507 1 pfet_cnrx $X=452260 $Y=361800 $D=645
M257 93 93 557 1 pfet_cnrx $X=458060 $Y=340200 $D=645
M258 93 93 176 1 pfet_cnrx $X=469660 $Y=340200 $D=645
M259 93 93 93 1 pfet_cnrx $X=482420 $Y=383400 $D=645
M260 93 93 93 1 pfet_cnrx $X=485900 $Y=375300 $D=645
M261 93 93 1625 1 pfet_cnrx $X=487060 $Y=372600 $D=645
M262 93 93 93 1 pfet_cnrx $X=523020 $Y=386100 $D=645
M263 93 93 93 1 pfet_cnrx $X=526500 $Y=361800 $D=645
M264 93 93 93 1 pfet_cnrx $X=526500 $Y=364500 $D=645
M265 93 93 93 1 pfet_cnrx $X=531140 $Y=353700 $D=645
M266 93 93 93 1 pfet_cnrx $X=532300 $Y=351000 $D=645
M267 1626 93 93 1 pfet_cnrx $X=532300 $Y=364500 $D=645
M268 93 93 93 1 pfet_cnrx $X=538100 $Y=342900 $D=645
M269 93 93 93 1 pfet_cnrx $X=543900 $Y=340200 $D=645
M270 93 93 93 1 pfet_cnrx $X=543900 $Y=375300 $D=645
M271 93 93 93 1 pfet_cnrx $X=550860 $Y=351000 $D=645
M272 93 93 93 1 pfet_cnrx $X=556660 $Y=383400 $D=645
M273 93 93 93 1 pfet_cnrx $X=560140 $Y=386100 $D=645
M274 93 93 93 1 pfet_cnrx $X=561300 $Y=372600 $D=645
M275 93 93 93 1 pfet_cnrx $X=562460 $Y=340200 $D=645
M276 93 93 93 1 pfet_cnrx $X=562460 $Y=375300 $D=645
M277 93 93 93 1 pfet_cnrx $X=563620 $Y=361800 $D=645
M278 93 93 93 1 pfet_cnrx $X=568260 $Y=353700 $D=645
M279 93 93 93 1 pfet_cnrx $X=577540 $Y=353700 $D=645
M280 93 93 93 1 pfet_cnrx $X=578700 $Y=340200 $D=645
M281 93 93 93 1 pfet_cnrx $X=578700 $Y=351000 $D=645
M282 93 93 93 1 pfet_cnrx $X=578700 $Y=353700 $D=645
M283 93 93 93 1 pfet_cnrx $X=578700 $Y=361800 $D=645
M284 93 93 93 1 pfet_cnrx $X=578700 $Y=364500 $D=645
M285 93 93 93 1 pfet_cnrx $X=578700 $Y=372600 $D=645
M286 93 93 93 1 pfet_cnrx $X=578700 $Y=383400 $D=645
M287 93 93 93 1 pfet_cnrx $X=578700 $Y=386100 $D=645
M288 1271 93 93 1 pfet_cnrx $X=49740 $Y=340400 $D=646
M289 93 93 93 1 pfet_cnrx $X=49740 $Y=342900 $D=646
M290 1273 93 93 1 pfet_cnrx $X=49740 $Y=351200 $D=646
M291 93 93 93 1 pfet_cnrx $X=49740 $Y=353700 $D=646
M292 1275 93 93 1 pfet_cnrx $X=49740 $Y=362000 $D=646
M293 93 93 93 1 pfet_cnrx $X=49740 $Y=364500 $D=646
M294 1277 93 93 1 pfet_cnrx $X=49740 $Y=372800 $D=646
M295 93 93 93 1 pfet_cnrx $X=49740 $Y=375300 $D=646
M296 1279 93 93 1 pfet_cnrx $X=49740 $Y=383600 $D=646
M297 93 93 93 1 pfet_cnrx $X=49740 $Y=386100 $D=646
M298 1280 93 93 1 pfet_cnrx $X=60180 $Y=342900 $D=646
M299 1281 93 93 1 pfet_cnrx $X=60180 $Y=353700 $D=646
M300 93 93 101 1 pfet_cnrx $X=64820 $Y=342900 $D=646
M301 93 93 527 1 pfet_cnrx $X=64820 $Y=353700 $D=646
M302 1282 93 93 1 pfet_cnrx $X=67140 $Y=342900 $D=646
M303 1284 93 93 1 pfet_cnrx $X=67140 $Y=353700 $D=646
M304 1286 93 93 1 pfet_cnrx $X=70620 $Y=362000 $D=646
M305 1287 93 93 1 pfet_cnrx $X=70620 $Y=364500 $D=646
M306 1288 93 93 1 pfet_cnrx $X=71780 $Y=351200 $D=646
M307 93 93 93 1 pfet_cnrx $X=78740 $Y=375300 $D=646
M308 1290 93 93 1 pfet_cnrx $X=79900 $Y=362000 $D=646
M309 93 93 93 1 pfet_cnrx $X=81060 $Y=375300 $D=646
M310 1293 93 93 1 pfet_cnrx $X=83380 $Y=372800 $D=646
M311 1296 93 93 1 pfet_cnrx $X=93820 $Y=375300 $D=646
M312 93 93 591 1 pfet_cnrx $X=97300 $Y=383700 $D=646
M313 93 93 631 1 pfet_cnrx $X=99620 $Y=351200 $D=646
M314 93 93 93 1 pfet_cnrx $X=99620 $Y=353700 $D=646
M315 93 93 592 1 pfet_cnrx $X=99620 $Y=364500 $D=646
M316 93 93 633 1 pfet_cnrx $X=99620 $Y=372800 $D=646
M317 1298 93 93 1 pfet_cnrx $X=99620 $Y=383700 $D=646
M318 93 93 634 1 pfet_cnrx $X=100780 $Y=340400 $D=646
M319 93 93 593 1 pfet_cnrx $X=100780 $Y=342900 $D=646
M320 93 93 594 1 pfet_cnrx $X=104260 $Y=375300 $D=646
M321 1300 93 93 1 pfet_cnrx $X=104260 $Y=386100 $D=646
M322 1302 93 93 1 pfet_cnrx $X=106580 $Y=375300 $D=646
M323 1578 93 93 1 pfet_cnrx $X=120500 $Y=362000 $D=646
M324 1579 93 93 1 pfet_cnrx $X=123980 $Y=375300 $D=646
M325 1580 93 93 1 pfet_cnrx $X=127460 $Y=351200 $D=646
M326 93 93 443 1 pfet_cnrx $X=127460 $Y=364500 $D=646
M327 93 93 445 1 pfet_cnrx $X=127460 $Y=372900 $D=646
M328 93 93 595 1 pfet_cnrx $X=128620 $Y=340500 $D=646
M329 93 93 1586 1 pfet_cnrx $X=128620 $Y=361900 $D=646
M330 1581 93 93 1 pfet_cnrx $X=129780 $Y=362000 $D=646
M331 1558 93 93 1 pfet_cnrx $X=132100 $Y=383600 $D=646
M332 93 93 158 1 pfet_cnrx $X=132100 $Y=386100 $D=646
M333 93 93 1635 1 pfet_cnrx $X=132100 $Y=375300 $D=646
M334 93 93 644 1 pfet_cnrx $X=133260 $Y=353700 $D=646
M335 1304 93 93 1 pfet_cnrx $X=134420 $Y=386100 $D=646
M336 93 93 93 1 pfet_cnrx $X=135580 $Y=375300 $D=646
M337 93 93 1636 1 pfet_cnrx $X=135580 $Y=351300 $D=646
M338 93 93 93 1 pfet_cnrx $X=136740 $Y=353700 $D=646
M339 93 93 93 1 pfet_cnrx $X=137900 $Y=351300 $D=646
M340 1582 93 93 1 pfet_cnrx $X=137900 $Y=383600 $D=646
M341 93 93 1637 1 pfet_cnrx $X=137900 $Y=362100 $D=646
M342 93 93 538 1 pfet_cnrx $X=139060 $Y=386100 $D=646
M343 1305 93 93 1 pfet_cnrx $X=140220 $Y=362100 $D=646
M344 93 93 596 1 pfet_cnrx $X=142540 $Y=340400 $D=646
M345 1560 93 93 1 pfet_cnrx $X=142540 $Y=386100 $D=646
M346 1587 93 93 1 pfet_cnrx $X=142540 $Y=372700 $D=646
M347 93 93 1588 1 pfet_cnrx $X=146020 $Y=383500 $D=646
M348 93 93 755 1 pfet_cnrx $X=149500 $Y=364500 $D=646
M349 93 93 1583 1 pfet_cnrx $X=150660 $Y=372900 $D=646
M350 444 93 93 1 pfet_cnrx $X=151820 $Y=364500 $D=646
M351 93 93 93 1 pfet_cnrx $X=154140 $Y=364500 $D=646
M352 1307 93 93 1 pfet_cnrx $X=155300 $Y=362000 $D=646
M353 450 93 93 1 pfet_cnrx $X=155300 $Y=364500 $D=646
M354 93 93 660 1 pfet_cnrx $X=158780 $Y=372900 $D=646
M355 93 93 1383 1 pfet_cnrx $X=159940 $Y=364500 $D=646
M356 93 93 93 1 pfet_cnrx $X=162260 $Y=342900 $D=646
M357 448 93 93 1 pfet_cnrx $X=162260 $Y=372900 $D=646
M358 93 93 449 1 pfet_cnrx $X=163420 $Y=375300 $D=646
M359 93 93 646 1 pfet_cnrx $X=163420 $Y=386100 $D=646
M360 93 93 597 1 pfet_cnrx $X=165740 $Y=362100 $D=646
M361 93 93 93 1 pfet_cnrx $X=165740 $Y=386100 $D=646
M362 93 93 93 1 pfet_cnrx $X=166900 $Y=375300 $D=646
M363 1589 93 93 1 pfet_cnrx $X=166900 $Y=364500 $D=646
M364 93 93 598 1 pfet_cnrx $X=168060 $Y=342900 $D=646
M365 93 93 1403 1 pfet_cnrx $X=169220 $Y=340400 $D=646
M366 1309 93 93 1 pfet_cnrx $X=169220 $Y=353700 $D=646
M367 111 93 93 1 pfet_cnrx $X=169220 $Y=362100 $D=646
M368 569 93 93 1 pfet_cnrx $X=171540 $Y=362000 $D=646
M369 1590 93 93 1 pfet_cnrx $X=171540 $Y=372700 $D=646
M370 6 93 93 1 pfet_cnrx $X=172700 $Y=351200 $D=646
M371 93 93 1589 1 pfet_cnrx $X=172700 $Y=364500 $D=646
M372 93 93 541 1 pfet_cnrx $X=173860 $Y=353700 $D=646
M373 1405 93 93 1 pfet_cnrx $X=175020 $Y=351200 $D=646
M374 93 93 93 1 pfet_cnrx $X=176180 $Y=362100 $D=646
M375 1562 93 93 1 pfet_cnrx $X=177340 $Y=353700 $D=646
M376 93 93 93 1 pfet_cnrx $X=177340 $Y=383600 $D=646
M377 93 93 1590 1 pfet_cnrx $X=177340 $Y=372900 $D=646
M378 9 93 93 1 pfet_cnrx $X=179660 $Y=364500 $D=646
M379 1310 93 93 1 pfet_cnrx $X=179660 $Y=372900 $D=646
M380 1591 93 93 1 pfet_cnrx $X=179660 $Y=351100 $D=646
M381 1385 93 93 1 pfet_cnrx $X=183140 $Y=353700 $D=646
M382 93 93 17 1 pfet_cnrx $X=184300 $Y=364500 $D=646
M383 93 93 93 1 pfet_cnrx $X=185460 $Y=364500 $D=646
M384 93 93 1584 1 pfet_cnrx $X=187780 $Y=351300 $D=646
M385 93 93 44 1 pfet_cnrx $X=187780 $Y=353700 $D=646
M386 93 93 94 1 pfet_cnrx $X=188940 $Y=364500 $D=646
M387 93 93 93 1 pfet_cnrx $X=190100 $Y=351300 $D=646
M388 93 93 599 1 pfet_cnrx $X=190100 $Y=372800 $D=646
M389 93 93 93 1 pfet_cnrx $X=191260 $Y=353700 $D=646
M390 93 93 7 1 pfet_cnrx $X=192420 $Y=351200 $D=646
M391 93 93 93 1 pfet_cnrx $X=192420 $Y=364500 $D=646
M392 93 93 93 1 pfet_cnrx $X=194740 $Y=386100 $D=646
M393 93 93 454 1 pfet_cnrx $X=195900 $Y=342900 $D=646
M394 93 93 458 1 pfet_cnrx $X=199380 $Y=353700 $D=646
M395 93 93 566 1 pfet_cnrx $X=200540 $Y=375300 $D=646
M396 93 93 1555 1 pfet_cnrx $X=201700 $Y=342900 $D=646
M397 93 93 648 1 pfet_cnrx $X=202860 $Y=340500 $D=646
M398 93 93 93 1 pfet_cnrx $X=202860 $Y=353700 $D=646
M399 93 93 93 1 pfet_cnrx $X=202860 $Y=362000 $D=646
M400 1312 93 93 1 pfet_cnrx $X=202860 $Y=375300 $D=646
M401 93 93 182 1 pfet_cnrx $X=202860 $Y=386100 $D=646
M402 93 93 93 1 pfet_cnrx $X=205180 $Y=351200 $D=646
M403 31 93 93 1 pfet_cnrx $X=206340 $Y=340500 $D=646
M404 93 93 570 1 pfet_cnrx $X=207500 $Y=342900 $D=646
M405 93 93 600 1 pfet_cnrx $X=208660 $Y=362000 $D=646
M406 93 93 459 1 pfet_cnrx $X=208660 $Y=353700 $D=646
M407 93 93 93 1 pfet_cnrx $X=210980 $Y=340500 $D=646
M408 93 93 248 1 pfet_cnrx $X=210980 $Y=351300 $D=646
M409 93 93 765 1 pfet_cnrx $X=212140 $Y=372900 $D=646
M410 93 93 93 1 pfet_cnrx $X=212140 $Y=383600 $D=646
M411 1314 93 93 1 pfet_cnrx $X=213300 $Y=340500 $D=646
M412 93 93 93 1 pfet_cnrx $X=214460 $Y=351300 $D=646
M413 93 93 766 1 pfet_cnrx $X=214460 $Y=364500 $D=646
M414 672 93 93 1 pfet_cnrx $X=214460 $Y=372900 $D=646
M415 93 93 103 1 pfet_cnrx $X=217940 $Y=340500 $D=646
M416 93 93 661 1 pfet_cnrx $X=219100 $Y=342900 $D=646
M417 93 93 572 1 pfet_cnrx $X=219100 $Y=375300 $D=646
M418 1315 93 93 1 pfet_cnrx $X=221420 $Y=340500 $D=646
M419 93 93 576 1 pfet_cnrx $X=222580 $Y=362100 $D=646
M420 1563 93 93 1 pfet_cnrx $X=222580 $Y=375300 $D=646
M421 258 93 93 1 pfet_cnrx $X=224900 $Y=362100 $D=646
M422 93 93 105 1 pfet_cnrx $X=226060 $Y=353700 $D=646
M423 93 93 93 1 pfet_cnrx $X=226060 $Y=386100 $D=646
M424 93 93 106 1 pfet_cnrx $X=227220 $Y=372900 $D=646
M425 93 93 4 1 pfet_cnrx $X=228380 $Y=353700 $D=646
M426 112 93 93 1 pfet_cnrx $X=228380 $Y=375300 $D=646
M427 1564 93 93 1 pfet_cnrx $X=229540 $Y=372900 $D=646
M428 93 93 93 1 pfet_cnrx $X=230700 $Y=353700 $D=646
M429 1595 93 93 1 pfet_cnrx $X=230700 $Y=340400 $D=646
M430 93 93 1596 1 pfet_cnrx $X=231860 $Y=362000 $D=646
M431 93 93 143 1 pfet_cnrx $X=231860 $Y=386100 $D=646
M432 93 93 260 1 pfet_cnrx $X=235340 $Y=340500 $D=646
M433 93 93 544 1 pfet_cnrx $X=235340 $Y=375300 $D=646
M434 93 93 768 1 pfet_cnrx $X=236500 $Y=351300 $D=646
M435 93 93 93 1 pfet_cnrx $X=238820 $Y=340600 $D=646
M436 93 93 93 1 pfet_cnrx $X=238820 $Y=351400 $D=646
M437 93 93 93 1 pfet_cnrx $X=238820 $Y=362200 $D=646
M438 93 93 1409 1 pfet_cnrx $X=238820 $Y=373000 $D=646
M439 93 93 1411 1 pfet_cnrx $X=238820 $Y=383800 $D=646
M440 1324 93 93 1 pfet_cnrx $X=244620 $Y=386100 $D=646
M441 93 93 29 1 pfet_cnrx $X=246940 $Y=342900 $D=646
M442 1326 93 93 1 pfet_cnrx $X=249260 $Y=340400 $D=646
M443 1565 93 93 1 pfet_cnrx $X=249260 $Y=342900 $D=646
M444 93 93 93 1 pfet_cnrx $X=249260 $Y=351200 $D=646
M445 1328 93 93 1 pfet_cnrx $X=249260 $Y=372800 $D=646
M446 93 93 601 1 pfet_cnrx $X=249260 $Y=375300 $D=646
M447 93 93 93 1 pfet_cnrx $X=249260 $Y=383600 $D=646
M448 93 93 546 1 pfet_cnrx $X=253900 $Y=372900 $D=646
M449 1597 93 93 1 pfet_cnrx $X=253900 $Y=353700 $D=646
M450 1598 93 93 1 pfet_cnrx $X=255060 $Y=342900 $D=646
M451 1599 93 93 1 pfet_cnrx $X=256220 $Y=361900 $D=646
M452 93 93 144 1 pfet_cnrx $X=259700 $Y=340500 $D=646
M453 93 93 1597 1 pfet_cnrx $X=259700 $Y=353700 $D=646
M454 93 93 1598 1 pfet_cnrx $X=260860 $Y=342900 $D=646
M455 1566 93 93 1 pfet_cnrx $X=262020 $Y=340500 $D=646
M456 93 93 1599 1 pfet_cnrx $X=262020 $Y=361900 $D=646
M457 1600 93 93 1 pfet_cnrx $X=263180 $Y=353700 $D=646
M458 93 93 93 1 pfet_cnrx $X=263180 $Y=364500 $D=646
M459 1330 93 93 1 pfet_cnrx $X=265500 $Y=386100 $D=646
M460 114 93 93 1 pfet_cnrx $X=267820 $Y=340400 $D=646
M461 93 93 1600 1 pfet_cnrx $X=268980 $Y=353700 $D=646
M462 93 93 93 1 pfet_cnrx $X=270140 $Y=340500 $D=646
M463 93 93 772 1 pfet_cnrx $X=271300 $Y=375300 $D=646
M464 93 93 773 1 pfet_cnrx $X=271300 $Y=383700 $D=646
M465 1567 93 93 1 pfet_cnrx $X=273620 $Y=340500 $D=646
M466 93 93 650 1 pfet_cnrx $X=273620 $Y=372900 $D=646
M467 1332 93 93 1 pfet_cnrx $X=273620 $Y=375300 $D=646
M468 93 93 602 1 pfet_cnrx $X=274780 $Y=353700 $D=646
M469 93 93 93 1 pfet_cnrx $X=274780 $Y=383700 $D=646
M470 130 93 93 1 pfet_cnrx $X=275940 $Y=372900 $D=646
M471 93 93 603 1 pfet_cnrx $X=277100 $Y=364500 $D=646
M472 93 93 35 1 pfet_cnrx $X=277100 $Y=383600 $D=646
M473 93 93 547 1 pfet_cnrx $X=278260 $Y=375300 $D=646
M474 93 93 1415 1 pfet_cnrx $X=279420 $Y=342900 $D=646
M475 93 93 115 1 pfet_cnrx $X=279420 $Y=353700 $D=646
M476 93 93 461 1 pfet_cnrx $X=279420 $Y=364500 $D=646
M477 1601 93 93 1 pfet_cnrx $X=279420 $Y=340300 $D=646
M478 93 93 93 1 pfet_cnrx $X=280580 $Y=372800 $D=646
M479 1602 93 93 1 pfet_cnrx $X=280580 $Y=351100 $D=646
M480 1603 93 93 1 pfet_cnrx $X=281740 $Y=353700 $D=646
M481 93 93 1601 1 pfet_cnrx $X=285220 $Y=340300 $D=646
M482 93 93 1602 1 pfet_cnrx $X=286380 $Y=351100 $D=646
M483 93 93 1603 1 pfet_cnrx $X=287540 $Y=353700 $D=646
M484 93 93 679 1 pfet_cnrx $X=288700 $Y=372900 $D=646
M485 93 93 1421 1 pfet_cnrx $X=291020 $Y=351200 $D=646
M486 1334 93 93 1 pfet_cnrx $X=291020 $Y=372900 $D=646
M487 93 93 1423 1 pfet_cnrx $X=292180 $Y=342900 $D=646
M488 93 93 109 1 pfet_cnrx $X=295660 $Y=372900 $D=646
M489 93 93 93 1 pfet_cnrx $X=301460 $Y=383600 $D=646
M490 116 93 93 1 pfet_cnrx $X=307260 $Y=340400 $D=646
M491 93 93 776 1 pfet_cnrx $X=307260 $Y=386100 $D=646
M492 93 93 93 1 pfet_cnrx $X=309580 $Y=340400 $D=646
M493 1631 93 93 1 pfet_cnrx $X=309580 $Y=386100 $D=646
M494 93 93 93 1 pfet_cnrx $X=310740 $Y=340400 $D=646
M495 93 93 93 1 pfet_cnrx $X=310740 $Y=353700 $D=646
M496 93 93 779 1 pfet_cnrx $X=310740 $Y=364500 $D=646
M497 1386 93 93 1 pfet_cnrx $X=313060 $Y=364500 $D=646
M498 93 93 93 1 pfet_cnrx $X=314220 $Y=353700 $D=646
M499 62 93 93 1 pfet_cnrx $X=315380 $Y=362000 $D=646
M500 93 93 1631 1 pfet_cnrx $X=315380 $Y=386100 $D=646
M501 93 93 93 1 pfet_cnrx $X=317700 $Y=362100 $D=646
M502 93 93 465 1 pfet_cnrx $X=317700 $Y=364500 $D=646
M503 93 93 580 1 pfet_cnrx $X=318860 $Y=351300 $D=646
M504 1568 93 93 1 pfet_cnrx $X=318860 $Y=386100 $D=646
M505 93 93 604 1 pfet_cnrx $X=320020 $Y=342900 $D=646
M506 1632 93 93 1 pfet_cnrx $X=320020 $Y=362100 $D=646
M507 1607 93 93 1 pfet_cnrx $X=321180 $Y=351300 $D=646
M508 1604 93 93 1 pfet_cnrx $X=322340 $Y=364500 $D=646
M509 1605 93 93 1 pfet_cnrx $X=322340 $Y=372700 $D=646
M510 1606 93 93 1 pfet_cnrx $X=324660 $Y=386100 $D=646
M511 93 93 1632 1 pfet_cnrx $X=325820 $Y=362100 $D=646
M512 93 93 1607 1 pfet_cnrx $X=326980 $Y=351100 $D=646
M513 1569 93 93 1 pfet_cnrx $X=328140 $Y=383600 $D=646
M514 93 93 1605 1 pfet_cnrx $X=328140 $Y=372900 $D=646
M515 93 93 605 1 pfet_cnrx $X=329300 $Y=375300 $D=646
M516 93 93 299 1 pfet_cnrx $X=329300 $Y=364500 $D=646
M517 93 93 93 1 pfet_cnrx $X=330460 $Y=364500 $D=646
M518 1570 93 93 1 pfet_cnrx $X=330460 $Y=372900 $D=646
M519 93 93 1606 1 pfet_cnrx $X=330460 $Y=386100 $D=646
M520 93 93 783 1 pfet_cnrx $X=332780 $Y=340500 $D=646
M521 93 93 145 1 pfet_cnrx $X=333940 $Y=342900 $D=646
M522 1337 93 93 1 pfet_cnrx $X=333940 $Y=362100 $D=646
M523 93 93 93 1 pfet_cnrx $X=333940 $Y=375300 $D=646
M524 1608 93 93 1 pfet_cnrx $X=333940 $Y=383500 $D=646
M525 93 93 606 1 pfet_cnrx $X=337420 $Y=351200 $D=646
M526 93 93 93 1 pfet_cnrx $X=337420 $Y=364500 $D=646
M527 1609 93 93 1 pfet_cnrx $X=337420 $Y=353700 $D=646
M528 93 93 548 1 pfet_cnrx $X=338580 $Y=362100 $D=646
M529 1339 93 93 1 pfet_cnrx $X=338580 $Y=386100 $D=646
M530 93 93 93 1 pfet_cnrx $X=339740 $Y=340500 $D=646
M531 93 93 47 1 pfet_cnrx $X=339740 $Y=364500 $D=646
M532 93 93 1608 1 pfet_cnrx $X=339740 $Y=383700 $D=646
M533 1633 93 93 1 pfet_cnrx $X=340900 $Y=362100 $D=646
M534 1610 93 93 1 pfet_cnrx $X=340900 $Y=372700 $D=646
M535 1611 93 93 1 pfet_cnrx $X=340900 $Y=375300 $D=646
M536 1634 93 93 1 pfet_cnrx $X=343220 $Y=383700 $D=646
M537 93 93 549 1 pfet_cnrx $X=343220 $Y=386100 $D=646
M538 93 93 1609 1 pfet_cnrx $X=343220 $Y=353700 $D=646
M539 93 93 93 1 pfet_cnrx $X=344380 $Y=353700 $D=646
M540 1612 93 93 1 pfet_cnrx $X=344380 $Y=364500 $D=646
M541 93 93 1633 1 pfet_cnrx $X=346700 $Y=362100 $D=646
M542 93 93 1610 1 pfet_cnrx $X=346700 $Y=372700 $D=646
M543 93 93 1611 1 pfet_cnrx $X=346700 $Y=375300 $D=646
M544 93 93 146 1 pfet_cnrx $X=347860 $Y=342900 $D=646
M545 93 93 93 1 pfet_cnrx $X=349020 $Y=353700 $D=646
M546 93 93 1634 1 pfet_cnrx $X=349020 $Y=383700 $D=646
M547 1341 93 93 1 pfet_cnrx $X=350180 $Y=342900 $D=646
M548 93 93 1612 1 pfet_cnrx $X=350180 $Y=364500 $D=646
M549 1571 93 93 1 pfet_cnrx $X=351340 $Y=375300 $D=646
M550 1613 93 93 1 pfet_cnrx $X=351340 $Y=364500 $D=646
M551 489 93 93 1 pfet_cnrx $X=352500 $Y=372800 $D=646
M552 93 93 550 1 pfet_cnrx $X=354820 $Y=342900 $D=646
M553 93 93 93 1 pfet_cnrx $X=354820 $Y=372900 $D=646
M554 473 93 93 1 pfet_cnrx $X=357140 $Y=372900 $D=646
M555 93 93 93 1 pfet_cnrx $X=357140 $Y=383700 $D=646
M556 93 93 1613 1 pfet_cnrx $X=357140 $Y=364500 $D=646
M557 469 93 93 1 pfet_cnrx $X=357140 $Y=375300 $D=646
M558 93 93 93 1 pfet_cnrx $X=358300 $Y=364500 $D=646
M559 323 93 93 1 pfet_cnrx $X=358300 $Y=383600 $D=646
M560 93 93 50 1 pfet_cnrx $X=360620 $Y=362100 $D=646
M561 93 93 93 1 pfet_cnrx $X=360620 $Y=375300 $D=646
M562 93 93 786 1 pfet_cnrx $X=361780 $Y=340500 $D=646
M563 93 93 93 1 pfet_cnrx $X=362940 $Y=353700 $D=646
M564 93 93 93 1 pfet_cnrx $X=362940 $Y=364500 $D=646
M565 93 93 93 1 pfet_cnrx $X=362940 $Y=372900 $D=646
M566 93 93 93 1 pfet_cnrx $X=364100 $Y=340500 $D=646
M567 93 93 93 1 pfet_cnrx $X=364100 $Y=362100 $D=646
M568 93 93 93 1 pfet_cnrx $X=364100 $Y=364500 $D=646
M569 475 93 93 1 pfet_cnrx $X=364100 $Y=372700 $D=646
M570 93 93 1630 1 pfet_cnrx $X=365260 $Y=383700 $D=646
M571 93 93 93 1 pfet_cnrx $X=366420 $Y=386100 $D=646
M572 93 93 93 1 pfet_cnrx $X=366420 $Y=351200 $D=646
M573 93 93 93 1 pfet_cnrx $X=367580 $Y=383700 $D=646
M574 93 93 468 1 pfet_cnrx $X=367580 $Y=361900 $D=646
M575 93 93 93 1 pfet_cnrx $X=367580 $Y=372900 $D=646
M576 484 93 93 1 pfet_cnrx $X=367580 $Y=375300 $D=646
M577 93 93 93 1 pfet_cnrx $X=368740 $Y=353700 $D=646
M578 558 93 93 1 pfet_cnrx $X=369900 $Y=353700 $D=646
M579 93 93 471 1 pfet_cnrx $X=371060 $Y=351300 $D=646
M580 93 93 93 1 pfet_cnrx $X=371060 $Y=375300 $D=646
M581 93 93 522 1 pfet_cnrx $X=371060 $Y=383700 $D=646
M582 93 93 93 1 pfet_cnrx $X=372220 $Y=353700 $D=646
M583 1572 93 93 1 pfet_cnrx $X=372220 $Y=364500 $D=646
M584 93 93 2069 1 pfet_cnrx $X=372220 $Y=340500 $D=646
M585 478 93 93 1 pfet_cnrx $X=372220 $Y=375300 $D=646
M586 1343 93 93 1 pfet_cnrx $X=373380 $Y=342900 $D=646
M587 93 93 582 1 pfet_cnrx $X=373380 $Y=362100 $D=646
M588 735 93 93 1 pfet_cnrx $X=374540 $Y=351300 $D=646
M589 1345 93 93 1 pfet_cnrx $X=374540 $Y=353700 $D=646
M590 481 93 93 1 pfet_cnrx $X=374540 $Y=383700 $D=646
M591 93 93 93 1 pfet_cnrx $X=374540 $Y=386100 $D=646
M592 93 93 1629 1 pfet_cnrx $X=374540 $Y=372900 $D=646
M593 93 93 1387 1 pfet_cnrx $X=376860 $Y=375300 $D=646
M594 93 93 551 1 pfet_cnrx $X=378020 $Y=342900 $D=646
M595 486 93 93 1 pfet_cnrx $X=378020 $Y=364500 $D=646
M596 487 93 93 1 pfet_cnrx $X=378020 $Y=386100 $D=646
M597 1431 93 93 1 pfet_cnrx $X=380340 $Y=364500 $D=646
M598 93 93 93 1 pfet_cnrx $X=380340 $Y=372900 $D=646
M599 93 93 93 1 pfet_cnrx $X=381500 $Y=372800 $D=646
M600 93 93 1616 1 pfet_cnrx $X=381500 $Y=383600 $D=646
M601 93 93 559 1 pfet_cnrx $X=383820 $Y=372900 $D=646
M602 93 93 607 1 pfet_cnrx $X=384980 $Y=353700 $D=646
M603 93 93 93 1 pfet_cnrx $X=384980 $Y=386100 $D=646
M604 93 93 93 1 pfet_cnrx $X=386140 $Y=340500 $D=646
M605 1348 93 93 1 pfet_cnrx $X=386140 $Y=342900 $D=646
M606 1573 93 93 1 pfet_cnrx $X=386140 $Y=372900 $D=646
M607 1350 93 93 1 pfet_cnrx $X=386140 $Y=383600 $D=646
M608 93 93 583 1 pfet_cnrx $X=387300 $Y=362000 $D=646
M609 93 93 585 1 pfet_cnrx $X=389620 $Y=364500 $D=646
M610 93 93 553 1 pfet_cnrx $X=390780 $Y=342900 $D=646
M611 93 93 93 1 pfet_cnrx $X=390780 $Y=375300 $D=646
M612 117 93 93 1 pfet_cnrx $X=391940 $Y=372800 $D=646
M613 80 93 93 1 pfet_cnrx $X=391940 $Y=375300 $D=646
M614 1434 93 93 1 pfet_cnrx $X=393100 $Y=353700 $D=646
M615 93 93 93 1 pfet_cnrx $X=394260 $Y=372900 $D=646
M616 1352 93 93 1 pfet_cnrx $X=395420 $Y=386100 $D=646
M617 93 93 93 1 pfet_cnrx $X=396580 $Y=383700 $D=646
M618 560 93 93 1 pfet_cnrx $X=397740 $Y=353700 $D=646
M619 466 93 93 1 pfet_cnrx $X=397740 $Y=372900 $D=646
M620 93 93 496 1 pfet_cnrx $X=398900 $Y=375300 $D=646
M621 494 93 93 1 pfet_cnrx $X=400060 $Y=383700 $D=646
M622 93 93 554 1 pfet_cnrx $X=400060 $Y=386100 $D=646
M623 93 93 1388 1 pfet_cnrx $X=402380 $Y=372800 $D=646
M624 93 93 497 1 pfet_cnrx $X=404700 $Y=342900 $D=646
M625 93 93 555 1 pfet_cnrx $X=404700 $Y=353700 $D=646
M626 93 93 1628 1 pfet_cnrx $X=404700 $Y=375300 $D=646
M627 93 93 1618 1 pfet_cnrx $X=407020 $Y=383600 $D=646
M628 93 93 788 1 pfet_cnrx $X=408180 $Y=340500 $D=646
M629 741 93 93 1 pfet_cnrx $X=408180 $Y=342900 $D=646
M630 561 93 93 1 pfet_cnrx $X=408180 $Y=372800 $D=646
M631 93 93 93 1 pfet_cnrx $X=408180 $Y=383700 $D=646
M632 498 93 93 1 pfet_cnrx $X=408180 $Y=386100 $D=646
M633 336 93 93 1 pfet_cnrx $X=410500 $Y=340500 $D=646
M634 1436 93 93 1 pfet_cnrx $X=410500 $Y=372800 $D=646
M635 93 93 93 1 pfet_cnrx $X=412820 $Y=353700 $D=646
M636 93 93 1389 1 pfet_cnrx $X=412820 $Y=386100 $D=646
M637 93 93 93 1 pfet_cnrx $X=413980 $Y=353700 $D=646
M638 93 93 500 1 pfet_cnrx $X=413980 $Y=372900 $D=646
M639 501 93 93 1 pfet_cnrx $X=413980 $Y=383700 $D=646
M640 93 93 608 1 pfet_cnrx $X=415140 $Y=362100 $D=646
M641 93 93 93 1 pfet_cnrx $X=415140 $Y=386100 $D=646
M642 93 93 745 1 pfet_cnrx $X=417460 $Y=351300 $D=646
M643 93 93 587 1 pfet_cnrx $X=417460 $Y=364500 $D=646
M644 93 93 93 1 pfet_cnrx $X=417460 $Y=372900 $D=646
M645 93 93 118 1 pfet_cnrx $X=417460 $Y=386100 $D=646
M646 93 93 93 1 pfet_cnrx $X=418620 $Y=362100 $D=646
M647 93 93 93 1 pfet_cnrx $X=419780 $Y=383600 $D=646
M648 93 93 562 1 pfet_cnrx $X=420940 $Y=362000 $D=646
M649 505 93 93 1 pfet_cnrx $X=420940 $Y=375300 $D=646
M650 93 93 93 1 pfet_cnrx $X=423260 $Y=364500 $D=646
M651 1390 93 93 1 pfet_cnrx $X=423260 $Y=372800 $D=646
M652 93 93 95 1 pfet_cnrx $X=423260 $Y=383600 $D=646
M653 511 93 93 1 pfet_cnrx $X=424420 $Y=353700 $D=646
M654 93 93 93 1 pfet_cnrx $X=424420 $Y=364500 $D=646
M655 93 93 93 1 pfet_cnrx $X=424420 $Y=383700 $D=646
M656 589 93 93 1 pfet_cnrx $X=426740 $Y=353700 $D=646
M657 93 93 609 1 pfet_cnrx $X=426740 $Y=362100 $D=646
M658 339 93 93 1 pfet_cnrx $X=426740 $Y=375300 $D=646
M659 93 93 93 1 pfet_cnrx $X=427900 $Y=364500 $D=646
M660 93 93 67 1 pfet_cnrx $X=427900 $Y=372800 $D=646
M661 1575 93 93 1 pfet_cnrx $X=429060 $Y=351300 $D=646
M662 1557 93 93 1 pfet_cnrx $X=429060 $Y=362100 $D=646
M663 93 93 93 1 pfet_cnrx $X=429060 $Y=364500 $D=646
M664 93 93 1437 1 pfet_cnrx $X=430220 $Y=353700 $D=646
M665 93 93 93 1 pfet_cnrx $X=431380 $Y=383700 $D=646
M666 1556 93 93 1 pfet_cnrx $X=432540 $Y=353700 $D=646
M667 93 93 514 1 pfet_cnrx $X=432540 $Y=364500 $D=646
M668 93 93 93 1 pfet_cnrx $X=433700 $Y=364500 $D=646
M669 93 93 1621 1 pfet_cnrx $X=433700 $Y=375300 $D=646
M670 476 93 93 1 pfet_cnrx $X=433700 $Y=372800 $D=646
M671 93 93 610 1 pfet_cnrx $X=434860 $Y=342900 $D=646
M672 93 93 93 1 pfet_cnrx $X=434860 $Y=375300 $D=646
M673 93 93 93 1 pfet_cnrx $X=434860 $Y=383700 $D=646
M674 93 93 93 1 pfet_cnrx $X=434860 $Y=351100 $D=646
M675 93 93 2068 1 pfet_cnrx $X=434860 $Y=361900 $D=646
M676 93 93 93 1 pfet_cnrx $X=437180 $Y=364500 $D=646
M677 93 93 512 1 pfet_cnrx $X=437180 $Y=375300 $D=646
M678 93 93 93 1 pfet_cnrx $X=438340 $Y=342900 $D=646
M679 93 93 93 1 pfet_cnrx $X=438340 $Y=364500 $D=646
M680 93 93 93 1 pfet_cnrx $X=438340 $Y=375300 $D=646
M681 93 93 93 1 pfet_cnrx $X=438340 $Y=386100 $D=646
M682 1357 93 93 1 pfet_cnrx $X=440660 $Y=351300 $D=646
M683 93 93 1623 1 pfet_cnrx $X=440660 $Y=372800 $D=646
M684 93 93 556 1 pfet_cnrx $X=445300 $Y=351300 $D=646
M685 93 93 93 1 pfet_cnrx $X=448780 $Y=353700 $D=646
M686 93 93 93 1 pfet_cnrx $X=449940 $Y=351300 $D=646
M687 518 93 93 1 pfet_cnrx $X=449940 $Y=364500 $D=646
M688 93 93 93 1 pfet_cnrx $X=449940 $Y=342900 $D=646
M689 93 93 93 1 pfet_cnrx $X=451100 $Y=351100 $D=646
M690 93 93 93 1 pfet_cnrx $X=452260 $Y=353700 $D=646
M691 93 93 93 1 pfet_cnrx $X=452260 $Y=364500 $D=646
M692 1359 93 93 1 pfet_cnrx $X=453420 $Y=340400 $D=646
M693 93 93 93 1 pfet_cnrx $X=453420 $Y=353700 $D=646
M694 93 93 515 1 pfet_cnrx $X=454580 $Y=351100 $D=646
M695 93 93 93 1 pfet_cnrx $X=455740 $Y=351200 $D=646
M696 93 93 521 1 pfet_cnrx $X=455740 $Y=342900 $D=646
M697 513 93 93 1 pfet_cnrx $X=456900 $Y=342900 $D=646
M698 93 93 520 1 pfet_cnrx $X=456900 $Y=353700 $D=646
M699 93 93 563 1 pfet_cnrx $X=458060 $Y=351200 $D=646
M700 93 93 1624 1 pfet_cnrx $X=463860 $Y=342900 $D=646
M701 93 93 93 1 pfet_cnrx $X=495180 $Y=375300 $D=646
M702 1627 93 93 1 pfet_cnrx $X=497500 $Y=375300 $D=646
M703 93 93 93 1 pfet_cnrx $X=564780 $Y=351300 $D=646
M704 93 93 93 1 pfet_cnrx $X=565940 $Y=383700 $D=646
M705 93 93 93 1 pfet_cnrx $X=568260 $Y=340600 $D=646
M706 93 93 93 1 pfet_cnrx $X=568260 $Y=351400 $D=646
M707 93 93 93 1 pfet_cnrx $X=568260 $Y=362200 $D=646
M708 93 93 93 1 pfet_cnrx $X=568260 $Y=373000 $D=646
M709 93 93 93 1 pfet_cnrx $X=568260 $Y=383800 $D=646
M710 93 93 93 1 pfet_cnrx $X=575220 $Y=342900 $D=646
M711 93 93 93 1 pfet_cnrx $X=576380 $Y=375300 $D=646
M712 93 93 93 1 pfet_cnrx $X=578700 $Y=342900 $D=646
M713 93 93 93 1 pfet_cnrx $X=578700 $Y=375300 $D=646
M714 93 93 93 1 pfet_cnrx $X=438340 $Y=353700 $D=646
X715 1 93 1 1 UDB116SVT24_CAPR9_1 $T=578840 337000 0 0 $X=578260 $Y=336700
X716 1 93 1 1 UDB116SVT24_CAPR9_1 $T=578840 347800 1 0 $X=578260 $Y=342100
X717 1 93 1 1 UDB116SVT24_CAPR9_1 $T=578840 347800 0 0 $X=578260 $Y=347500
X718 1 93 1 1 UDB116SVT24_CAPR9_1 $T=578840 358600 1 0 $X=578260 $Y=352900
X719 1 93 1 1 UDB116SVT24_CAPR9_1 $T=578840 358600 0 0 $X=578260 $Y=358300
X720 1 93 1 1 UDB116SVT24_CAPR9_1 $T=578840 369400 1 0 $X=578260 $Y=363700
X721 1 93 1 1 UDB116SVT24_CAPR9_1 $T=578840 369400 0 0 $X=578260 $Y=369100
X722 1 93 1 1 UDB116SVT24_CAPR9_1 $T=578840 380200 1 0 $X=578260 $Y=374500
X723 1 93 1 1 UDB116SVT24_CAPR9_1 $T=578840 380200 0 0 $X=578260 $Y=379900
X724 1 93 1 1 UDB116SVT24_CAPR9_1 $T=578840 391000 1 0 $X=578260 $Y=385300
X725 1 93 1 UDB116SVT24_FILL2 $T=64960 347800 1 0 $X=64380 $Y=342100
X726 1 93 1 UDB116SVT24_FILL2 $T=64960 358600 1 0 $X=64380 $Y=352900
X727 1 93 1 UDB116SVT24_FILL2 $T=78880 380200 1 0 $X=78300 $Y=374500
X728 1 93 1 UDB116SVT24_FILL2 $T=97440 380200 0 0 $X=96860 $Y=379900
X729 1 93 1 UDB116SVT24_FILL2 $T=104400 380200 1 0 $X=103820 $Y=374500
X730 1 93 1 UDB116SVT24_FILL2 $T=132240 391000 1 0 $X=131660 $Y=385300
X731 1 93 1 UDB116SVT24_FILL2 $T=135720 347800 0 0 $X=135140 $Y=347500
X732 1 93 1 UDB116SVT24_FILL2 $T=138040 358600 0 0 $X=137460 $Y=358300
X733 1 93 1 UDB116SVT24_FILL2 $T=149640 369400 1 0 $X=149060 $Y=363700
X734 1 93 1 UDB116SVT24_FILL2 $T=163560 391000 1 0 $X=162980 $Y=385300
X735 1 93 1 UDB116SVT24_FILL2 $T=177480 369400 0 0 $X=176900 $Y=369100
X736 1 93 1 UDB116SVT24_FILL2 $T=187920 347800 0 0 $X=187340 $Y=347500
X737 1 93 1 UDB116SVT24_FILL2 $T=200680 380200 1 0 $X=200100 $Y=374500
X738 1 93 1 UDB116SVT24_FILL2 $T=211120 337000 0 0 $X=210540 $Y=336700
X739 1 93 1 UDB116SVT24_FILL2 $T=212280 369400 0 0 $X=211700 $Y=369100
X740 1 93 1 UDB116SVT24_FILL2 $T=222720 358600 0 0 $X=222140 $Y=358300
X741 1 93 1 UDB116SVT24_FILL2 $T=227360 369400 0 0 $X=226780 $Y=369100
X742 1 93 1 UDB116SVT24_FILL2 $T=228520 358600 1 0 $X=227940 $Y=352900
X743 1 93 1 UDB116SVT24_FILL2 $T=236640 347800 0 0 $X=236060 $Y=347500
X744 1 93 1 UDB116SVT24_FILL2 $T=247080 347800 1 0 $X=246500 $Y=342100
X745 1 93 1 UDB116SVT24_FILL2 $T=259840 337000 0 0 $X=259260 $Y=336700
X746 1 93 1 UDB116SVT24_FILL2 $T=271440 380200 1 0 $X=270860 $Y=374500
X747 1 93 1 UDB116SVT24_FILL2 $T=273760 369400 0 0 $X=273180 $Y=369100
X748 1 93 1 UDB116SVT24_FILL2 $T=279560 358600 1 0 $X=278980 $Y=352900
X749 1 93 1 UDB116SVT24_FILL2 $T=288840 369400 0 0 $X=288260 $Y=369100
X750 1 93 1 UDB116SVT24_FILL2 $T=307400 391000 1 0 $X=306820 $Y=385300
X751 1 93 1 UDB116SVT24_FILL2 $T=310880 369400 1 0 $X=310300 $Y=363700
X752 1 93 1 UDB116SVT24_FILL2 $T=317840 358600 0 0 $X=317260 $Y=358300
X753 1 93 1 UDB116SVT24_FILL2 $T=319000 347800 0 0 $X=318420 $Y=347500
X754 1 93 1 UDB116SVT24_FILL2 $T=328280 369400 0 0 $X=327700 $Y=369100
X755 1 93 1 UDB116SVT24_FILL2 $T=332920 337000 0 0 $X=332340 $Y=336700
X756 1 93 1 UDB116SVT24_FILL2 $T=338720 358600 0 0 $X=338140 $Y=358300
X757 1 93 1 UDB116SVT24_FILL2 $T=348000 347800 1 0 $X=347420 $Y=342100
X758 1 93 1 UDB116SVT24_FILL2 $T=354960 369400 0 0 $X=354380 $Y=369100
X759 1 93 1 UDB116SVT24_FILL2 $T=361920 337000 0 0 $X=361340 $Y=336700
X760 1 93 1 UDB116SVT24_FILL2 $T=365400 380200 0 0 $X=364820 $Y=379900
X761 1 93 1 UDB116SVT24_FILL2 $T=372360 358600 1 0 $X=371780 $Y=352900
X762 1 93 1 UDB116SVT24_FILL2 $T=383960 337000 0 0 $X=383380 $Y=336700
X763 1 93 1 UDB116SVT24_FILL2 $T=383960 369400 0 0 $X=383380 $Y=369100
X764 1 93 1 UDB116SVT24_FILL2 $T=400200 391000 1 0 $X=399620 $Y=385300
X765 1 93 1 UDB116SVT24_FILL2 $T=404840 380200 1 0 $X=404260 $Y=374500
X766 1 93 1 UDB116SVT24_FILL2 $T=406000 391000 1 0 $X=405420 $Y=385300
X767 1 93 1 UDB116SVT24_FILL2 $T=408320 337000 0 0 $X=407740 $Y=336700
X768 1 93 1 UDB116SVT24_FILL2 $T=411800 380200 1 0 $X=411220 $Y=374500
X769 1 93 1 UDB116SVT24_FILL2 $T=411800 380200 0 0 $X=411220 $Y=379900
X770 1 93 1 UDB116SVT24_FILL2 $T=412960 391000 1 0 $X=412380 $Y=385300
X771 1 93 1 UDB116SVT24_FILL2 $T=414120 358600 1 0 $X=413540 $Y=352900
X772 1 93 1 UDB116SVT24_FILL2 $T=417600 369400 1 0 $X=417020 $Y=363700
X773 1 93 1 UDB116SVT24_FILL2 $T=418760 380200 1 0 $X=418180 $Y=374500
X774 1 93 1 UDB116SVT24_FILL2 $T=426880 358600 0 0 $X=426300 $Y=358300
X775 1 93 1 UDB116SVT24_FILL2 $T=430360 358600 1 0 $X=429780 $Y=352900
X776 1 93 1 UDB116SVT24_FILL2 $T=495320 380200 1 0 $X=494740 $Y=374500
X777 1 93 1 UDB116SVT24_FILL2 $T=566080 380200 0 0 $X=565500 $Y=379900
X778 1 93 1 UDB116SVT24_FILL2 $T=576520 380200 1 0 $X=575940 $Y=374500
X779 1 UDB116SVT24_TAPSS $T=49880 347800 1 0 $X=49300 $Y=342100
X780 1 UDB116SVT24_TAPSS $T=49880 358600 1 0 $X=49300 $Y=352900
X781 1 UDB116SVT24_TAPSS $T=49880 369400 1 0 $X=49300 $Y=363700
X782 1 UDB116SVT24_TAPSS $T=49880 380200 1 0 $X=49300 $Y=374500
X783 1 UDB116SVT24_TAPSS $T=49880 391000 1 0 $X=49300 $Y=385300
X784 1 UDB116SVT24_TAPSS $T=238960 337000 0 0 $X=238380 $Y=336700
X785 1 UDB116SVT24_TAPSS $T=238960 347800 0 0 $X=238380 $Y=347500
X786 1 UDB116SVT24_TAPSS $T=238960 358600 0 0 $X=238380 $Y=358300
X787 1 UDB116SVT24_TAPSS $T=238960 369400 0 0 $X=238380 $Y=369100
X788 1 UDB116SVT24_TAPSS $T=238960 380200 0 0 $X=238380 $Y=379900
X789 1 UDB116SVT24_TAPSS $T=438480 347800 1 0 $X=437900 $Y=342100
X790 1 UDB116SVT24_TAPSS $T=438480 358600 1 0 $X=437900 $Y=352900
X791 1 UDB116SVT24_TAPSS $T=438480 369400 1 0 $X=437900 $Y=363700
X792 1 UDB116SVT24_TAPSS $T=438480 380200 1 0 $X=437900 $Y=374500
X793 1 UDB116SVT24_TAPSS $T=438480 391000 1 0 $X=437900 $Y=385300
X794 1 UDB116SVT24_TAPSS $T=568400 337000 0 0 $X=567820 $Y=336700
X795 1 UDB116SVT24_TAPSS $T=568400 347800 0 0 $X=567820 $Y=347500
X796 1 UDB116SVT24_TAPSS $T=568400 358600 0 0 $X=567820 $Y=358300
X797 1 UDB116SVT24_TAPSS $T=568400 369400 0 0 $X=567820 $Y=369100
X798 1 UDB116SVT24_TAPSS $T=568400 380200 0 0 $X=567820 $Y=379900
X880 1 93 1 UDB116SVT24_FILL3 $T=132240 380200 1 0 $X=131660 $Y=374500
X881 1 93 1 UDB116SVT24_FILL3 $T=133400 358600 1 0 $X=132820 $Y=352900
X882 1 93 1 UDB116SVT24_FILL3 $T=139200 391000 1 0 $X=138620 $Y=385300
X883 1 93 1 UDB116SVT24_FILL3 $T=158920 369400 0 0 $X=158340 $Y=369100
X884 1 93 1 UDB116SVT24_FILL3 $T=163560 380200 1 0 $X=162980 $Y=374500
X885 1 93 1 UDB116SVT24_FILL3 $T=165880 358600 0 0 $X=165300 $Y=358300
X886 1 93 1 UDB116SVT24_FILL3 $T=187920 358600 1 0 $X=187340 $Y=352900
X887 1 93 1 UDB116SVT24_FILL3 $T=189080 369400 1 0 $X=188500 $Y=363700
X888 1 93 1 UDB116SVT24_FILL3 $T=199520 358600 1 0 $X=198940 $Y=352900
X889 1 93 1 UDB116SVT24_FILL3 $T=203000 337000 0 0 $X=202420 $Y=336700
X890 1 93 1 UDB116SVT24_FILL3 $T=211120 347800 0 0 $X=210540 $Y=347500
X891 1 93 1 UDB116SVT24_FILL3 $T=219240 380200 1 0 $X=218660 $Y=374500
X892 1 93 1 UDB116SVT24_FILL3 $T=235480 337000 0 0 $X=234900 $Y=336700
X893 1 93 1 UDB116SVT24_FILL3 $T=259840 358600 1 0 $X=259260 $Y=352900
X894 1 93 1 UDB116SVT24_FILL3 $T=270280 337000 0 0 $X=269700 $Y=336700
X895 1 93 1 UDB116SVT24_FILL3 $T=271440 380200 0 0 $X=270860 $Y=379900
X896 1 93 1 UDB116SVT24_FILL3 $T=310880 358600 1 0 $X=310300 $Y=352900
X897 1 93 1 UDB116SVT24_FILL3 $T=315520 391000 1 0 $X=314940 $Y=385300
X898 1 93 1 UDB116SVT24_FILL3 $T=325960 358600 0 0 $X=325380 $Y=358300
X899 1 93 1 UDB116SVT24_FILL3 $T=330600 391000 1 0 $X=330020 $Y=385300
X900 1 93 1 UDB116SVT24_FILL3 $T=334080 369400 1 0 $X=333500 $Y=363700
X901 1 93 1 UDB116SVT24_FILL3 $T=339880 380200 0 0 $X=339300 $Y=379900
X902 1 93 1 UDB116SVT24_FILL3 $T=349160 380200 0 0 $X=348580 $Y=379900
X903 1 93 1 UDB116SVT24_FILL3 $T=360760 358600 0 0 $X=360180 $Y=358300
X904 1 93 1 UDB116SVT24_FILL3 $T=368880 369400 1 0 $X=368300 $Y=363700
X905 1 93 1 UDB116SVT24_FILL3 $T=371200 347800 0 0 $X=370620 $Y=347500
X906 1 93 1 UDB116SVT24_FILL3 $T=371200 380200 0 0 $X=370620 $Y=379900
X907 1 93 1 UDB116SVT24_FILL3 $T=372360 337000 0 0 $X=371780 $Y=336700
X908 1 93 1 UDB116SVT24_FILL3 $T=377000 380200 1 0 $X=376420 $Y=374500
X909 1 93 1 UDB116SVT24_FILL3 $T=383960 380200 1 0 $X=383380 $Y=374500
X910 1 93 1 UDB116SVT24_FILL3 $T=385120 391000 1 0 $X=384540 $Y=385300
X911 1 93 1 UDB116SVT24_FILL3 $T=394400 369400 0 0 $X=393820 $Y=369100
X912 1 93 1 UDB116SVT24_FILL3 $T=396720 380200 0 0 $X=396140 $Y=379900
X913 1 93 1 UDB116SVT24_FILL3 $T=404840 347800 1 0 $X=404260 $Y=342100
X914 1 93 1 UDB116SVT24_FILL3 $T=414120 369400 0 0 $X=413540 $Y=369100
X915 1 93 1 UDB116SVT24_FILL3 $T=415280 358600 0 0 $X=414700 $Y=358300
X916 1 93 1 UDB116SVT24_FILL3 $T=417600 347800 0 0 $X=417020 $Y=347500
X917 1 93 1 UDB116SVT24_FILL3 $T=435000 347800 1 0 $X=434420 $Y=342100
X918 1 93 1 UDB116SVT24_FILL3 $T=564920 347800 0 0 $X=564340 $Y=347500
X919 1 93 1 UDB116SVT24_FILL3 $T=575360 347800 1 0 $X=574780 $Y=342100
X920 1 93 1 UDB116SVT24_FILL12 $T=423400 391000 1 0 $X=422820 $Y=385300
X921 1 93 1 UDB116SVT24_FILL12 $T=551000 347800 0 0 $X=550420 $Y=347500
X922 1 93 1 UDB116SVT24_FILL12 $T=562600 380200 1 0 $X=562020 $Y=374500
X923 1 93 1 UDB116SVT24_FILL6 $T=75400 369400 1 0 $X=74820 $Y=363700
X924 1 93 1 UDB116SVT24_FILL6 $T=97440 391000 1 0 $X=96860 $Y=385300
X925 1 93 1 UDB116SVT24_FILL6 $T=561440 369400 0 0 $X=560860 $Y=369100
X926 1 93 1 UDB116SVT24_FILL16 $T=60320 380200 1 0 $X=59740 $Y=374500
X927 1 93 1 UDB116SVT24_FILL16 $T=532440 347800 0 0 $X=531860 $Y=347500
X928 1 93 1 UDB116SVT24_FILL16 $T=544040 337000 0 0 $X=543460 $Y=336700
X929 1 93 1 UDB116SVT24_FILL16 $T=544040 380200 1 0 $X=543460 $Y=374500
X930 1 93 1 UDB116SVT24_FILL16 $T=560280 391000 1 0 $X=559700 $Y=385300
X931 1 93 1 UDB116SVT24_FILL8 $T=60320 369400 0 0 $X=59740 $Y=369100
X932 1 93 1 UDB116SVT24_FILL8 $T=486040 380200 1 0 $X=485460 $Y=374500
X933 1 93 1 UDB116SVT24_FILL8 $T=556800 380200 0 0 $X=556220 $Y=379900
X934 1 93 1 UDB116SVT24_FILL8 $T=568400 358600 1 0 $X=567820 $Y=352900
X935 1 93 1 UDB116SVT24_FILL32 $T=54520 380200 0 0 $X=53940 $Y=379900
X936 1 93 1 UDB116SVT24_FILL32 $T=60320 391000 1 0 $X=59740 $Y=385300
X937 1 93 1 UDB116SVT24_FILL32 $T=448920 380200 1 0 $X=448340 $Y=374500
X938 1 93 1 UDB116SVT24_FILL32 $T=523160 391000 1 0 $X=522580 $Y=385300
X939 1 93 1 UDB116SVT24_FILL32 $T=526640 358600 0 0 $X=526060 $Y=358300
X940 1 93 1 UDB116SVT24_FILL32 $T=531280 358600 1 0 $X=530700 $Y=352900
X941 1 93 1 UDB116SVT24_FILL32 $T=538240 347800 1 0 $X=537660 $Y=342100
X942 1 93 1 UDB116SVT24_DCAP_ECOCT_16 $T=436160 380200 0 0 $X=435580 $Y=379900
X943 1 93 1 UDB116SVT24_DCAP_ECOCT_16 $T=487200 369400 1 180 $X=440220 $Y=369100
X944 1 93 1 UDB116SVT24_DCAP_ECOCT_16 $T=497640 380200 1 0 $X=497060 $Y=374500
X945 1 93 1 UDB116SVT24_DCAP_ECOCT_16 $T=532440 369400 1 0 $X=531860 $Y=363700
X946 1 93 1 UDB116SVT24_FILL64 $T=448920 391000 1 0 $X=448340 $Y=385300
X947 1 93 1 UDB116SVT24_FILL64 $T=452400 358600 0 0 $X=451820 $Y=358300
X948 1 93 1 UDB116SVT24_FILL64 $T=452400 369400 1 0 $X=451820 $Y=363700
X949 1 93 1 UDB116SVT24_FILL64 $T=457040 358600 1 0 $X=456460 $Y=352900
X950 1 93 1 UDB116SVT24_FILL64 $T=458200 347800 0 0 $X=457620 $Y=347500
X951 1 93 1 UDB116SVT24_FILL64 $T=464000 347800 1 0 $X=463420 $Y=342100
X952 1 93 1 UDB116SVT24_FILL64 $T=469800 337000 0 0 $X=469220 $Y=336700
X953 1 93 1 UDB116SVT24_FILL64 $T=482560 380200 0 0 $X=481980 $Y=379900
X954 1 93 1 UDB116SVT24_FILL64 $T=487200 369400 0 0 $X=486620 $Y=369100
X955 1 93 1 1 UDB116SVT24_CAPL9_1 $T=39440 337000 0 0 $X=39440 $Y=336700
X956 1 93 1 1 UDB116SVT24_CAPL9_1 $T=39440 347800 1 0 $X=39440 $Y=342100
X957 1 93 1 1 UDB116SVT24_CAPL9_1 $T=39440 347800 0 0 $X=39440 $Y=347500
X958 1 93 1 1 UDB116SVT24_CAPL9_1 $T=39440 358600 1 0 $X=39440 $Y=352900
X959 1 93 1 1 UDB116SVT24_CAPL9_1 $T=39440 358600 0 0 $X=39440 $Y=358300
X960 1 93 1 1 UDB116SVT24_CAPL9_1 $T=39440 369400 1 0 $X=39440 $Y=363700
X961 1 93 1 1 UDB116SVT24_CAPL9_1 $T=39440 369400 0 0 $X=39440 $Y=369100
X962 1 93 1 1 UDB116SVT24_CAPL9_1 $T=39440 380200 1 0 $X=39440 $Y=374500
X963 1 93 1 1 UDB116SVT24_CAPL9_1 $T=39440 380200 0 0 $X=39440 $Y=379900
X964 1 93 1 1 UDB116SVT24_CAPL9_1 $T=39440 391000 1 0 $X=39440 $Y=385300
X965 1 93 1 UDB116SVT24_FILL5 $T=66120 347800 0 0 $X=65540 $Y=347500
X966 1 93 1 UDB116SVT24_FILL5 $T=417600 369400 0 0 $X=417020 $Y=369100
X967 1 93 1 UDB116SVT24_FILL5 $T=428040 369400 0 0 $X=427460 $Y=369100
X968 1 93 1 UDB116SVT24_FILL5 $T=526640 369400 1 0 $X=526060 $Y=363700
X969 1 93 1 UDB116SVT24_FILL5 $T=562600 337000 0 0 $X=562020 $Y=336700
X970 93 474 469 473 1 1 UDB116SVT24_NR2_MM_0P75 $T=360760 380200 0 180 $X=356700 $Y=374500
X971 93 471 468 480 1 1 UDB116SVT24_NR2_MM_0P75 $T=364240 358600 0 0 $X=363660 $Y=358300
X972 93 481 475 477 1 1 UDB116SVT24_NR2_MM_0P75 $T=367720 369400 1 180 $X=363660 $Y=369100
X973 93 485 484 483 1 1 UDB116SVT24_NR2_MM_0P75 $T=371200 380200 0 180 $X=367140 $Y=374500
X974 93 484 522 69 1 1 UDB116SVT24_NR2_MM_0P75 $T=367720 380200 0 0 $X=367140 $Y=379900
X975 93 508 514 509 1 1 UDB116SVT24_NR2_MM_0P75 $T=429200 369400 1 0 $X=428620 $Y=363700
X976 93 521 515 89 1 1 UDB116SVT24_NR2_MM_0P75 $T=451240 347800 0 0 $X=450660 $Y=347500
X977 93 519 520 91 1 1 UDB116SVT24_NR2_MM_0P75 $T=453560 358600 1 0 $X=452980 $Y=352900
X978 472 558 93 470 1614 734 1 1 UDB116SVT24_AOI21_MM_1 $T=357280 358600 1 0 $X=356700 $Y=352900
X979 478 483 93 474 1615 484 1 1 UDB116SVT24_AOI21_MM_1 $T=366560 380200 0 180 $X=361340 $Y=374500
X980 467 525 93 82 1628 493 1 1 UDB116SVT24_AOI21_MM_1 $T=404840 380200 0 180 $X=399620 $Y=374500
X981 476 503 93 501 1619 505 1 1 UDB116SVT24_AOI21_MM_1 $T=418760 380200 1 180 $X=413540 $Y=379900
X982 476 526 93 505 1620 503 1 1 UDB116SVT24_AOI21_MM_1 $T=425720 380200 0 180 $X=420500 $Y=374500
X983 1 93 1 UDB116SVT24_FILL4 $T=66120 358600 0 0 $X=65540 $Y=358300
X984 1 93 1 UDB116SVT24_FILL4 $T=66120 369400 1 0 $X=65540 $Y=363700
X985 1 93 1 UDB116SVT24_FILL4 $T=75400 358600 0 0 $X=74820 $Y=358300
X986 1 93 1 UDB116SVT24_FILL4 $T=95120 358600 1 0 $X=94540 $Y=352900
X987 1 93 1 UDB116SVT24_FILL4 $T=127600 380200 0 0 $X=127020 $Y=379900
X988 1 93 1 UDB116SVT24_FILL4 $T=150800 358600 0 0 $X=150220 $Y=358300
X989 1 93 1 UDB116SVT24_FILL4 $T=164720 358600 1 0 $X=164140 $Y=352900
X990 1 93 1 UDB116SVT24_FILL4 $T=208800 358600 1 0 $X=208220 $Y=352900
X991 1 93 1 UDB116SVT24_FILL4 $T=226200 337000 0 0 $X=225620 $Y=336700
X992 1 93 1 UDB116SVT24_FILL4 $T=240120 391000 1 0 $X=239540 $Y=385300
X993 1 93 1 UDB116SVT24_FILL4 $T=261000 391000 1 0 $X=260420 $Y=385300
X994 1 93 1 UDB116SVT24_FILL4 $T=317840 369400 1 0 $X=317260 $Y=363700
X995 1 93 1 UDB116SVT24_FILL4 $T=323640 380200 0 0 $X=323060 $Y=379900
X996 1 93 1 UDB116SVT24_FILL4 $T=339880 369400 1 0 $X=339300 $Y=363700
X997 1 93 1 UDB116SVT24_FILL4 $T=346840 380200 1 0 $X=346260 $Y=374500
X998 1 93 1 UDB116SVT24_FILL4 $T=368880 347800 1 0 $X=368300 $Y=342100
X999 1 93 1 UDB116SVT24_FILL4 $T=381640 380200 0 0 $X=381060 $Y=379900
X1000 1 93 1 UDB116SVT24_FILL4 $T=448920 337000 0 0 $X=448340 $Y=336700
X1001 1 93 1 UDB116SVT24_FILL4 $T=563760 358600 0 0 $X=563180 $Y=358300
X1002 93 451 448 9 1 1 UDB116SVT24_NR2_0P75 $T=165880 369400 1 180 $X=161820 $Y=369100
X1003 93 451 94 18 1 1 UDB116SVT24_NR2_0P75 $T=185600 369400 1 0 $X=185020 $Y=363700
X1004 93 505 95 506 1 1 UDB116SVT24_NR2_0P75 $T=419920 380200 0 0 $X=419340 $Y=379900
X1005 475 66 1 93 473 1 UDB116SVT24_AN2_MM_1 $T=363080 369400 1 180 $X=356700 $Y=369100
X1006 505 506 1 93 502 1 UDB116SVT24_AN2_MM_1 $T=424560 380200 0 0 $X=423980 $Y=379900
X1007 1 453 523 452 93 1 UDB116SVT24_ND2_MM_0P75 $T=177480 358600 0 180 $X=173420 $Y=352900
X1008 1 14 451 453 93 1 UDB116SVT24_ND2_MM_0P75 $T=176320 358600 0 0 $X=175740 $Y=358300
X1009 1 28 11 21 93 1 UDB116SVT24_ND2_MM_0P75 $T=211120 347800 0 180 $X=207060 $Y=342100
X1010 1 31 524 30 93 1 UDB116SVT24_ND2_MM_0P75 $T=221560 337000 1 180 $X=217500 $Y=336700
X1011 1 53 56 54 93 1 UDB116SVT24_ND2_MM_0P75 $T=330600 369400 1 0 $X=330020 $Y=363700
X1012 1 72 71 74 93 1 UDB116SVT24_ND2_MM_0P75 $T=374680 391000 1 0 $X=374100 $Y=385300
X1013 1 487 485 75 93 1 UDB116SVT24_ND2_MM_0P75 $T=380480 380200 1 0 $X=379900 $Y=374500
X1014 1 491 79 492 93 1 UDB116SVT24_ND2_MM_0P75 $T=387440 380200 1 0 $X=386860 $Y=374500
X1015 1 498 525 83 93 1 UDB116SVT24_ND2_MM_0P75 $T=406000 391000 0 180 $X=401940 $Y=385300
X1016 1 85 499 501 93 1 UDB116SVT24_ND2_MM_0P75 $T=408320 380200 0 0 $X=407740 $Y=379900
X1017 1 504 508 87 93 1 UDB116SVT24_ND2_MM_0P75 $T=419920 369400 1 0 $X=419340 $Y=363700
X1018 1 508 510 509 93 1 UDB116SVT24_ND2_MM_0P75 $T=424560 369400 1 0 $X=423980 $Y=363700
X1019 1 510 526 506 93 1 UDB116SVT24_ND2_MM_0P75 $T=435000 380200 1 180 $X=430940 $Y=379900
X1020 1 516 504 513 93 1 UDB116SVT24_ND2_MM_0P75 $T=437320 369400 0 180 $X=433260 $Y=363700
X1021 1 519 517 91 93 1 UDB116SVT24_ND2_MM_0P75 $T=448920 358600 1 0 $X=448340 $Y=352900
X1022 56 471 470 1 732 318 93 1 UDB116SVT24_OAI31_1 $T=356120 358600 0 180 $X=349740 $Y=352900
X1023 80 76 81 1 491 494 93 1 UDB116SVT24_OAI31_1 $T=396720 380200 1 180 $X=390340 $Y=379900
X1024 612 1271 93 1 96 1 UDB116SVT24_BUF_L_1 $T=49880 337000 0 0 $X=49300 $Y=336700
X1025 447 1273 93 1 97 1 UDB116SVT24_BUF_L_1 $T=49880 347800 0 0 $X=49300 $Y=347500
X1026 446 1275 93 1 98 1 UDB116SVT24_BUF_L_1 $T=49880 358600 0 0 $X=49300 $Y=358300
X1027 449 1277 93 1 99 1 UDB116SVT24_BUF_L_1 $T=49880 369400 0 0 $X=49300 $Y=369100
X1028 591 1279 93 1 100 1 UDB116SVT24_BUF_L_1 $T=49880 380200 0 0 $X=49300 $Y=379900
X1029 614 1280 93 1 101 1 UDB116SVT24_BUF_L_1 $T=60320 347800 1 0 $X=59740 $Y=342100
X1030 616 1281 93 1 527 1 UDB116SVT24_BUF_L_1 $T=60320 358600 1 0 $X=59740 $Y=352900
X1031 619 1282 93 1 528 1 UDB116SVT24_BUF_L_1 $T=67280 347800 1 0 $X=66700 $Y=342100
X1032 201 1284 93 1 529 1 UDB116SVT24_BUF_L_1 $T=67280 358600 1 0 $X=66700 $Y=352900
X1033 531 1286 93 1 530 1 UDB116SVT24_BUF_L_1 $T=70760 358600 0 0 $X=70180 $Y=358300
X1034 529 1287 93 1 531 1 UDB116SVT24_BUF_L_1 $T=70760 369400 1 0 $X=70180 $Y=363700
X1035 528 1288 93 1 532 1 UDB116SVT24_BUF_L_1 $T=71920 347800 0 0 $X=71340 $Y=347500
X1036 698 1290 93 1 533 1 UDB116SVT24_BUF_L_1 $T=80040 358600 0 0 $X=79460 $Y=358300
X1037 204 1293 93 1 534 1 UDB116SVT24_BUF_L_1 $T=83520 369400 0 0 $X=82940 $Y=369100
X1038 208 1296 93 1 102 1 UDB116SVT24_BUF_L_1 $T=93960 380200 1 0 $X=93380 $Y=374500
X1039 537 1298 93 1 535 1 UDB116SVT24_BUF_L_1 $T=99760 380200 0 0 $X=99180 $Y=379900
X1040 535 1300 93 1 536 1 UDB116SVT24_BUF_L_1 $T=104400 391000 1 0 $X=103820 $Y=385300
X1041 635 1302 93 1 537 1 UDB116SVT24_BUF_L_1 $T=106720 380200 1 0 $X=106140 $Y=374500
X1042 706 1304 93 1 538 1 UDB116SVT24_BUF_L_1 $T=134560 391000 1 0 $X=133980 $Y=385300
X1043 707 1305 93 1 539 1 UDB116SVT24_BUF_L_1 $T=140360 358600 0 0 $X=139780 $Y=358300
X1044 710 1307 93 1 540 1 UDB116SVT24_BUF_L_1 $T=155440 358600 0 0 $X=154860 $Y=358300
X1045 598 1309 93 1 541 1 UDB116SVT24_BUF_L_1 $T=169360 358600 1 0 $X=168780 $Y=352900
X1046 236 1310 93 1 542 1 UDB116SVT24_BUF_L_1 $T=179800 369400 0 0 $X=179220 $Y=369100
X1047 714 1312 93 1 543 1 UDB116SVT24_BUF_L_1 $T=203000 380200 1 0 $X=202420 $Y=374500
X1048 661 1314 93 1 103 1 UDB116SVT24_BUF_L_1 $T=213440 337000 0 0 $X=212860 $Y=336700
X1049 524 1315 93 1 104 1 UDB116SVT24_BUF_L_1 $T=221560 337000 0 0 $X=220980 $Y=336700
X1050 256 1317 93 1 105 1 UDB116SVT24_BUF_L_1 $T=221560 358600 1 0 $X=220980 $Y=352900
X1051 257 1320 93 1 106 1 UDB116SVT24_BUF_L_1 $T=222720 369400 0 0 $X=222140 $Y=369100
X1052 715 1322 93 1 544 1 UDB116SVT24_BUF_L_1 $T=230840 380200 1 0 $X=230260 $Y=374500
X1053 717 1324 93 1 107 1 UDB116SVT24_BUF_L_1 $T=244760 391000 1 0 $X=244180 $Y=385300
X1054 266 1326 93 1 545 1 UDB116SVT24_BUF_L_1 $T=249400 337000 0 0 $X=248820 $Y=336700
X1055 601 1328 93 1 546 1 UDB116SVT24_BUF_L_1 $T=249400 369400 0 0 $X=248820 $Y=369100
X1056 653 1330 93 1 108 1 UDB116SVT24_BUF_L_1 $T=265640 391000 1 0 $X=265060 $Y=385300
X1057 679 1332 93 1 547 1 UDB116SVT24_BUF_L_1 $T=273760 380200 1 0 $X=273180 $Y=374500
X1058 696 1334 93 1 109 1 UDB116SVT24_BUF_L_1 $T=291160 369400 0 0 $X=290580 $Y=369100
X1059 728 1337 93 1 548 1 UDB116SVT24_BUF_L_1 $T=334080 358600 0 0 $X=333500 $Y=358300
X1060 295 1339 93 1 549 1 UDB116SVT24_BUF_L_1 $T=338720 391000 1 0 $X=338140 $Y=385300
X1061 732 1341 93 1 550 1 UDB116SVT24_BUF_L_1 $T=350320 347800 1 0 $X=349740 $Y=342100
X1062 553 1343 93 1 551 1 UDB116SVT24_BUF_L_1 $T=373520 347800 1 0 $X=372940 $Y=342100
X1063 555 1345 93 1 552 1 UDB116SVT24_BUF_L_1 $T=374680 358600 1 0 $X=374100 $Y=352900
X1064 736 1348 93 1 553 1 UDB116SVT24_BUF_L_1 $T=386280 347800 1 0 $X=385700 $Y=342100
X1065 686 1350 93 1 110 1 UDB116SVT24_BUF_L_1 $T=386280 380200 0 0 $X=385700 $Y=379900
X1066 687 1352 93 1 554 1 UDB116SVT24_BUF_L_1 $T=395560 391000 1 0 $X=394980 $Y=385300
X1067 740 1354 93 1 555 1 UDB116SVT24_BUF_L_1 $T=400200 358600 1 0 $X=399620 $Y=352900
X1068 587 1357 93 1 556 1 UDB116SVT24_BUF_L_1 $T=440800 347800 0 0 $X=440220 $Y=347500
X1069 610 1359 93 1 557 1 UDB116SVT24_BUF_L_1 $T=453560 337000 0 0 $X=452980 $Y=336700
X1070 1 93 450 444 1 UDB116SVT24_INV_0P75 $T=154280 369400 0 180 $X=151380 $Y=363700
X1071 1 93 452 111 1 UDB116SVT24_INV_0P75 $T=171680 358600 1 180 $X=168780 $Y=358300
X1072 1 93 12 6 1 UDB116SVT24_INV_0P75 $T=175160 347800 1 180 $X=172260 $Y=347500
X1073 1 93 16 9 1 UDB116SVT24_INV_0P75 $T=182120 369400 0 180 $X=179220 $Y=363700
X1074 1 93 11 17 1 UDB116SVT24_INV_0P75 $T=182120 369400 1 0 $X=181540 $Y=363700
X1075 1 93 455 7 1 UDB116SVT24_INV_0P75 $T=190240 347800 0 0 $X=189660 $Y=347500
X1076 1 93 25 4 1 UDB116SVT24_INV_0P75 $T=226200 358600 1 0 $X=225620 $Y=352900
X1077 1 93 460 112 1 UDB116SVT24_INV_0P75 $T=230840 380200 0 180 $X=227940 $Y=374500
X1078 1 93 31 113 1 UDB116SVT24_INV_0P75 $T=249400 347800 0 0 $X=248820 $Y=347500
X1079 1 93 37 114 1 UDB116SVT24_INV_0P75 $T=270280 337000 1 180 $X=267380 $Y=336700
X1080 1 93 463 462 1 UDB116SVT24_INV_0P75 $T=274920 358600 1 0 $X=274340 $Y=352900
X1081 1 93 38 35 1 UDB116SVT24_INV_0P75 $T=274920 380200 0 0 $X=274340 $Y=379900
X1082 1 93 40 115 1 UDB116SVT24_INV_0P75 $T=277240 358600 1 0 $X=276660 $Y=352900
X1083 1 93 39 461 1 UDB116SVT24_INV_0P75 $T=277240 369400 1 0 $X=276660 $Y=363700
X1084 1 93 46 116 1 UDB116SVT24_INV_0P75 $T=309720 337000 1 180 $X=306820 $Y=336700
X1085 1 93 465 62 1 UDB116SVT24_INV_0P75 $T=317840 358600 1 180 $X=314940 $Y=358300
X1086 1 93 54 47 1 UDB116SVT24_INV_0P75 $T=337560 369400 1 0 $X=336980 $Y=363700
X1087 1 93 56 489 1 UDB116SVT24_INV_0P75 $T=354960 369400 1 180 $X=352060 $Y=369100
X1088 1 93 477 558 1 UDB116SVT24_INV_0P75 $T=372360 358600 0 180 $X=369460 $Y=352900
X1089 1 93 75 486 1 UDB116SVT24_INV_0P75 $T=380480 369400 0 180 $X=377580 $Y=363700
X1090 1 93 489 559 1 UDB116SVT24_INV_0P75 $T=381640 369400 0 0 $X=381060 $Y=369100
X1091 1 93 492 117 1 UDB116SVT24_INV_0P75 $T=394400 369400 1 180 $X=391500 $Y=369100
X1092 1 93 497 560 1 UDB116SVT24_INV_0P75 $T=400200 358600 0 180 $X=397300 $Y=352900
X1093 1 93 500 561 1 UDB116SVT24_INV_0P75 $T=410640 369400 1 180 $X=407740 $Y=369100
X1094 1 93 501 118 1 UDB116SVT24_INV_0P75 $T=415280 391000 1 0 $X=414700 $Y=385300
X1095 1 93 86 562 1 UDB116SVT24_INV_0P75 $T=418760 358600 0 0 $X=418180 $Y=358300
X1096 1 93 87 511 1 UDB116SVT24_INV_0P75 $T=426880 358600 0 180 $X=423980 $Y=352900
X1097 1 93 514 512 1 UDB116SVT24_INV_0P75 $T=435000 380200 1 0 $X=434420 $Y=374500
X1098 1 93 520 518 1 UDB116SVT24_INV_0P75 $T=452400 369400 0 180 $X=449500 $Y=363700
X1099 1 93 521 563 1 UDB116SVT24_INV_0P75 $T=455880 347800 0 0 $X=455300 $Y=347500
X1100 477 472 1629 481 93 473 1 480 1 UDB116SVT24_OAOI211_0P75 $T=367720 369400 0 0 $X=367140 $Y=369100
X1101 9 1383 523 93 1 450 1 UDB116SVT24_OR2_0P75 $T=160080 369400 0 180 $X=154860 $Y=363700
X1102 18 1385 523 93 1 44 1 UDB116SVT24_OR2_0P75 $T=183280 358600 1 0 $X=182700 $Y=352900
X1103 53 1386 47 93 1 465 1 UDB116SVT24_OR2_0P75 $T=313200 369400 1 0 $X=312620 $Y=363700
X1104 485 1387 522 93 1 478 1 UDB116SVT24_OR2_0P75 $T=377000 380200 0 180 $X=371780 $Y=374500
X1105 493 1388 525 93 1 466 1 UDB116SVT24_OR2_0P75 $T=402520 369400 1 180 $X=397300 $Y=369100
X1106 501 1389 85 93 1 498 1 UDB116SVT24_OR2_0P75 $T=412960 391000 0 180 $X=407740 $Y=385300
X1107 503 1390 526 93 1 67 1 UDB116SVT24_OR2_0P75 $T=423400 369400 0 0 $X=422820 $Y=369100
X1108 468 56 1 728 578 93 1 UDB116SVT24_OAI21_0P75 $T=334080 358600 1 180 $X=328860 $Y=358300
X1109 469 56 1 726 301 93 1 UDB116SVT24_OAI21_0P75 $T=334080 380200 0 180 $X=328860 $Y=374500
X1110 56 522 1 302 303 93 1 UDB116SVT24_OAI21_0P75 $T=338720 391000 0 180 $X=333500 $Y=385300
X1111 57 54 1 723 304 93 1 UDB116SVT24_OAI21_0P75 $T=339880 337000 1 180 $X=334660 $Y=336700
X1112 56 316 1 729 313 93 1 UDB116SVT24_OAI21_0P75 $T=349160 358600 0 180 $X=343940 $Y=352900
X1113 56 515 1 733 319 93 1 UDB116SVT24_OAI21_0P75 $T=357280 380200 1 180 $X=352060 $Y=379900
X1114 474 475 1 472 66 93 1 UDB116SVT24_OAI21_0P75 $T=363080 369400 0 180 $X=357860 $Y=363700
X1115 474 66 1 479 472 93 1 UDB116SVT24_OAI21_0P75 $T=364240 369400 1 0 $X=363660 $Y=363700
X1116 499 95 1 467 744 93 1 UDB116SVT24_OAI21_0P75 $T=411800 380200 0 180 $X=406580 $Y=374500
X1117 502 95 1 744 499 93 1 UDB116SVT24_OAI21_0P75 $T=418760 380200 0 180 $X=413540 $Y=374500
X1118 89 88 1 509 519 93 1 UDB116SVT24_OAI21_0P75 $T=450080 347800 1 180 $X=444860 $Y=347500
X1119 119 1394 1 93 120 1 UDB116SVT24_BUF_1 $T=122960 347800 0 0 $X=122380 $Y=347500
X1120 121 1395 1 93 122 1 UDB116SVT24_BUF_1 $T=124120 347800 1 0 $X=123540 $Y=342100
X1121 564 1398 1 93 565 1 UDB116SVT24_BUF_1 $T=148480 391000 1 0 $X=147900 $Y=385300
X1122 566 1401 1 93 567 1 UDB116SVT24_BUF_1 $T=164720 380200 0 0 $X=164140 $Y=379900
X1123 123 1403 1 93 124 1 UDB116SVT24_BUF_1 $T=169360 337000 1 180 $X=165300 $Y=336700
X1124 568 1404 1 93 569 1 UDB116SVT24_BUF_1 $T=175160 358600 1 180 $X=171100 $Y=358300
X1125 570 1405 1 93 571 1 UDB116SVT24_BUF_1 $T=175160 347800 0 0 $X=174580 $Y=347500
X1126 572 1407 1 93 573 1 UDB116SVT24_BUF_1 $T=196040 380200 0 0 $X=195460 $Y=379900
X1127 574 1409 1 93 575 1 UDB116SVT24_BUF_1 $T=238960 369400 1 180 $X=234900 $Y=369100
X1128 576 1411 1 93 125 1 UDB116SVT24_BUF_1 $T=238960 380200 1 180 $X=234900 $Y=379900
X1129 126 1413 1 93 127 1 UDB116SVT24_BUF_1 $T=266800 358600 1 180 $X=262740 $Y=358300
X1130 128 1415 1 93 577 1 UDB116SVT24_BUF_1 $T=279560 347800 0 180 $X=275500 $Y=342100
X1131 129 1417 1 93 130 1 UDB116SVT24_BUF_1 $T=279560 369400 1 180 $X=275500 $Y=369100
X1132 131 1419 1 93 132 1 UDB116SVT24_BUF_1 $T=290000 337000 1 180 $X=285940 $Y=336700
X1133 133 1421 1 93 464 1 UDB116SVT24_BUF_1 $T=291160 347800 1 180 $X=287100 $Y=347500
X1134 134 1423 1 93 42 1 UDB116SVT24_BUF_1 $T=292320 347800 0 180 $X=288260 $Y=342100
X1135 135 1424 1 93 578 1 UDB116SVT24_BUF_1 $T=302760 337000 0 0 $X=302180 $Y=336700
X1136 136 1425 1 93 579 1 UDB116SVT24_BUF_1 $T=310880 358600 0 0 $X=310300 $Y=358300
X1137 580 1427 1 93 137 1 UDB116SVT24_BUF_1 $T=331760 347800 1 180 $X=327700 $Y=347500
X1138 579 1428 1 93 581 1 UDB116SVT24_BUF_1 $T=339880 369400 1 180 $X=335820 $Y=369100
X1139 582 1430 1 93 138 1 UDB116SVT24_BUF_1 $T=348000 369400 0 0 $X=347420 $Y=369100
X1140 583 1431 1 93 139 1 UDB116SVT24_BUF_1 $T=380480 369400 1 0 $X=379900 $Y=363700
X1141 140 1434 1 93 584 1 UDB116SVT24_BUF_1 $T=393240 358600 1 0 $X=392660 $Y=352900
X1142 585 1435 1 93 586 1 UDB116SVT24_BUF_1 $T=407160 369400 1 180 $X=403100 $Y=369100
X1143 587 1436 1 93 500 1 UDB116SVT24_BUF_1 $T=410640 369400 0 0 $X=410060 $Y=369100
X1144 588 1437 1 93 589 1 UDB116SVT24_BUF_1 $T=430360 358600 0 180 $X=426300 $Y=352900
X1145 5 459 1596 53 1 93 27 258 1 UDB116SVT24_AOAI211_0P75 $T=232000 358600 1 180 $X=224460 $Y=358300
X1146 466 467 1604 559 1 93 300 299 1 UDB116SVT24_AOAI211_0P75 $T=322480 369400 1 0 $X=321900 $Y=363700
X1147 67 476 1630 56 1 93 322 323 1 UDB116SVT24_AOAI211_0P75 $T=365400 380200 1 180 $X=357860 $Y=379900
X1148 75 69 1616 487 1 93 478 481 1 UDB116SVT24_AOAI211_0P75 $T=381640 380200 1 180 $X=374100 $Y=379900
X1149 499 498 1618 334 1 93 466 494 1 UDB116SVT24_AOAI211_0P75 $T=407160 380200 1 180 $X=399620 $Y=379900
X1150 512 510 1621 502 1 93 67 339 1 UDB116SVT24_AOAI211_0P75 $T=433840 380200 0 180 $X=426300 $Y=374500
X1151 517 518 1623 514 1 93 516 476 1 UDB116SVT24_AOAI211_0P75 $T=440800 369400 1 180 $X=433260 $Y=369100
X1152 90 92 1624 520 1 93 563 513 1 UDB116SVT24_AOAI211_0P75 $T=464000 347800 0 180 $X=456460 $Y=342100
X1153 1 93 141 445 ICV_12 $T=54520 369400 0 0 $X=53940 $Y=369100
X1154 1 93 590 199 ICV_12 $T=60320 369400 1 0 $X=59740 $Y=363700
X1155 1 93 591 142 ICV_12 $T=91640 380200 0 0 $X=91060 $Y=379900
X1156 1 93 592 636 ICV_12 $T=93960 369400 1 0 $X=93380 $Y=363700
X1157 1 93 593 538 ICV_12 $T=95120 347800 1 0 $X=94540 $Y=342100
X1158 1 93 594 633 ICV_12 $T=98600 380200 1 0 $X=98020 $Y=374500
X1159 1 93 443 643 ICV_12 $T=121800 369400 1 0 $X=121220 $Y=363700
X1160 1 93 445 641 ICV_12 $T=121800 369400 0 0 $X=121220 $Y=369100
X1161 1 93 595 628 ICV_12 $T=122960 337000 0 0 $X=122380 $Y=336700
X1162 1 93 596 224 ICV_12 $T=136880 337000 0 0 $X=136300 $Y=336700
X1163 1 93 142 227 ICV_12 $T=145000 358600 0 0 $X=144420 $Y=358300
X1164 1 93 449 565 ICV_12 $T=157760 380200 1 0 $X=157180 $Y=374500
X1165 1 93 452 681 ICV_12 $T=158920 358600 1 0 $X=158340 $Y=352900
X1166 1 93 597 647 ICV_12 $T=160080 358600 0 0 $X=159500 $Y=358300
X1167 1 93 598 231 ICV_12 $T=162400 347800 1 0 $X=161820 $Y=342100
X1168 1 93 599 712 ICV_12 $T=184440 369400 0 0 $X=183860 $Y=369100
X1169 1 93 454 569 ICV_12 $T=190240 347800 1 0 $X=189660 $Y=342100
X1170 1 93 570 648 ICV_12 $T=201840 347800 1 0 $X=201260 $Y=342100
X1171 1 93 600 542 ICV_12 $T=203000 358600 0 0 $X=202420 $Y=358300
X1172 1 93 576 672 ICV_12 $T=216920 358600 0 0 $X=216340 $Y=358300
X1173 1 93 143 259 ICV_12 $T=226200 391000 1 0 $X=225620 $Y=385300
X1174 1 93 29 545 ICV_12 $T=241280 347800 1 0 $X=240700 $Y=342100
X1175 1 93 601 674 ICV_12 $T=243600 380200 1 0 $X=243020 $Y=374500
X1176 1 93 144 269 ICV_12 $T=254040 337000 0 0 $X=253460 $Y=336700
X1177 1 93 602 720 ICV_12 $T=269120 358600 1 0 $X=268540 $Y=352900
X1178 1 93 603 693 ICV_12 $T=271440 369400 1 0 $X=270860 $Y=363700
X1179 1 93 580 602 ICV_12 $T=313200 347800 0 0 $X=312620 $Y=347500
X1180 1 93 604 548 ICV_12 $T=314360 347800 1 0 $X=313780 $Y=342100
X1181 1 93 605 726 ICV_12 $T=323640 380200 1 0 $X=323060 $Y=374500
X1182 1 93 145 666 ICV_12 $T=328280 347800 1 0 $X=327700 $Y=342100
X1183 1 93 606 729 ICV_12 $T=331760 347800 0 0 $X=331180 $Y=347500
X1184 1 93 146 307 ICV_12 $T=342200 347800 1 0 $X=341620 $Y=342100
X1185 1 93 50 730 ICV_12 $T=354960 358600 0 0 $X=354380 $Y=358300
X1186 1 93 147 325 ICV_12 $T=363080 347800 1 0 $X=362500 $Y=342100
X1187 1 93 582 731 ICV_12 $T=367720 358600 0 0 $X=367140 $Y=358300
X1188 1 93 607 551 ICV_12 $T=379320 358600 1 0 $X=378740 $Y=352900
X1189 1 93 583 737 ICV_12 $T=381640 358600 0 0 $X=381060 $Y=358300
X1190 1 93 585 608 ICV_12 $T=383960 369400 1 0 $X=383380 $Y=363700
X1191 1 93 497 555 ICV_12 $T=399040 347800 1 0 $X=398460 $Y=342100
X1192 1 93 608 742 ICV_12 $T=409480 358600 0 0 $X=408900 $Y=358300
X1193 1 93 587 743 ICV_12 $T=411800 369400 1 0 $X=411220 $Y=363700
X1194 1 93 84 561 ICV_12 $T=417600 391000 1 0 $X=417020 $Y=385300
X1195 1 93 609 746 ICV_12 $T=421080 358600 0 0 $X=420500 $Y=358300
X1196 1 93 610 609 ICV_12 $T=429200 347800 1 0 $X=428620 $Y=342100
X1197 1 93 611 607 ICV_12 $T=443120 337000 0 0 $X=442540 $Y=336700
X1198 1 93 507 511 ICV_12 $T=446600 358600 0 0 $X=446020 $Y=358300
X1199 1 93 612 613 613 200 ICV_13 $T=54520 337000 0 0 $X=53940 $Y=336700
X1200 1 93 614 615 615 527 ICV_13 $T=54520 347800 0 0 $X=53940 $Y=347500
X1201 1 93 148 616 443 590 ICV_13 $T=54520 358600 0 0 $X=53940 $Y=358300
X1202 1 93 149 617 530 626 ICV_13 $T=66120 337000 0 0 $X=65540 $Y=336700
X1203 1 93 150 618 620 629 ICV_13 $T=71920 347800 1 0 $X=71340 $Y=342100
X1204 1 93 151 619 202 632 ICV_13 $T=71920 358600 1 0 $X=71340 $Y=352900
X1205 1 93 620 152 533 203 ICV_13 $T=76560 347800 0 0 $X=75980 $Y=347500
X1206 1 93 621 622 617 625 ICV_13 $T=77720 337000 0 0 $X=77140 $Y=336700
X1207 1 93 623 624 534 592 ICV_13 $T=82360 369400 1 0 $X=81780 $Y=363700
X1208 1 93 625 153 618 621 ICV_13 $T=83520 347800 1 0 $X=82940 $Y=342100
X1209 1 93 626 627 532 593 ICV_13 $T=83520 358600 1 0 $X=82940 $Y=352900
X1210 1 93 628 629 205 206 ICV_13 $T=84680 358600 0 0 $X=84100 $Y=358300
X1211 1 93 630 631 699 630 ICV_13 $T=88160 347800 0 0 $X=87580 $Y=347500
X1212 1 93 632 633 623 209 ICV_13 $T=88160 369400 0 0 $X=87580 $Y=369100
X1213 1 93 154 634 622 210 ICV_13 $T=89320 337000 0 0 $X=88740 $Y=336700
X1214 1 93 635 636 211 700 ICV_13 $T=96280 358600 0 0 $X=95700 $Y=358300
X1215 1 93 637 638 536 212 ICV_13 $T=104400 380200 0 0 $X=103820 $Y=379900
X1216 1 93 639 447 701 659 ICV_13 $T=107880 358600 0 0 $X=107300 $Y=358300
X1217 1 93 155 640 640 642 ICV_13 $T=109040 391000 1 0 $X=108460 $Y=385300
X1218 1 93 156 157 644 703 ICV_13 $T=111360 380200 1 0 $X=110780 $Y=374500
X1219 1 93 641 642 638 639 ICV_13 $T=116000 380200 0 0 $X=115420 $Y=379900
X1220 1 93 643 158 215 704 ICV_13 $T=120640 391000 1 0 $X=120060 $Y=385300
X1221 1 93 446 644 637 702 ICV_13 $T=121800 358600 1 0 $X=121220 $Y=352900
X1222 1 93 645 455 217 645 ICV_13 $T=127600 347800 1 0 $X=127020 $Y=342100
X1223 1 93 159 160 688 708 ICV_13 $T=146160 380200 0 0 $X=145580 $Y=379900
X1224 1 93 564 646 646 228 ICV_13 $T=151960 391000 1 0 $X=151380 $Y=385300
X1225 1 93 12 647 680 711 ICV_13 $T=160080 347800 0 0 $X=159500 $Y=347500
X1226 1 93 161 162 599 238 ICV_13 $T=177480 380200 0 0 $X=176900 $Y=379900
X1227 1 93 18 566 241 690 ICV_13 $T=189080 380200 1 0 $X=188500 $Y=374500
X1228 1 93 33 648 571 239 ICV_13 $T=191400 337000 0 0 $X=190820 $Y=336700
X1229 1 93 649 568 713 649 ICV_13 $T=192560 347800 0 0 $X=191980 $Y=347500
X1230 1 93 163 164 245 247 ICV_13 $T=199520 380200 0 0 $X=198940 $Y=379900
X1231 1 93 457 572 573 543 ICV_13 $T=207640 380200 1 0 $X=207060 $Y=374500
X1232 1 93 165 574 575 716 ICV_13 $T=236640 369400 1 0 $X=236060 $Y=363700
X1233 1 93 166 167 718 270 ICV_13 $T=249400 391000 1 0 $X=248820 $Y=385300
X1234 1 93 41 650 655 547 ICV_13 $T=262160 369400 0 0 $X=261580 $Y=369100
X1235 1 93 651 652 677 694 ICV_13 $T=266800 358600 0 0 $X=266220 $Y=358300
X1236 1 93 653 168 675 282 ICV_13 $T=277240 380200 0 0 $X=276660 $Y=379900
X1237 1 93 169 38 650 286 ICV_13 $T=288840 380200 0 0 $X=288260 $Y=379900
X1238 1 93 654 170 721 676 ICV_13 $T=290000 337000 0 0 $X=289420 $Y=336700
X1239 1 93 655 171 288 722 ICV_13 $T=300440 380200 1 0 $X=299860 $Y=374500
X1240 1 93 172 656 290 581 ICV_13 $T=303920 369400 0 0 $X=303340 $Y=369100
X1241 1 93 173 657 657 685 ICV_13 $T=312040 380200 1 0 $X=311460 $Y=374500
X1242 1 93 658 174 340 658 ICV_13 $T=431520 337000 0 0 $X=430940 $Y=336700
X1243 1 93 493 503 560 562 ICV_13 $T=435000 358600 0 0 $X=434420 $Y=358300
X1244 1 93 175 176 557 341 ICV_13 $T=458200 337000 0 0 $X=457620 $Y=336700
X1245 515 1 519 88 93 1 UDB116SVT24_ND2B_0P75 $T=435000 347800 0 0 $X=434420 $Y=347500
X1246 1 93 659 219 ICV_15 $T=127600 369400 0 0 $X=127020 $Y=369100
X1247 1 93 177 220 ICV_15 $T=128760 337000 0 0 $X=128180 $Y=336700
X1248 1 93 660 709 ICV_15 $T=150800 369400 0 0 $X=150220 $Y=369100
X1249 1 93 178 567 ICV_15 $T=179800 358600 0 0 $X=179220 $Y=358300
X1250 1 93 661 671 ICV_15 $T=211120 347800 1 0 $X=210540 $Y=342100
X1251 1 93 662 546 ICV_15 $T=235480 380200 1 0 $X=234900 $Y=374500
X1252 1 93 663 719 ICV_15 $T=254040 369400 0 0 $X=253460 $Y=369100
X1253 1 93 664 663 ICV_15 $T=261000 347800 1 0 $X=260420 $Y=342100
X1254 1 93 665 678 ICV_15 $T=263320 369400 1 0 $X=262740 $Y=363700
X1255 1 93 179 684 ICV_15 $T=295800 369400 0 0 $X=295220 $Y=369100
X1256 1 93 666 297 ICV_15 $T=320160 347800 1 0 $X=319580 $Y=342100
X1257 1 93 667 606 ICV_15 $T=334080 347800 1 0 $X=333500 $Y=342100
X1258 1 93 668 550 ICV_15 $T=346840 358600 0 0 $X=346260 $Y=358300
X1259 1 93 59 321 ICV_15 $T=354960 347800 1 0 $X=354380 $Y=342100
X1260 1 93 669 328 ICV_15 $T=373520 358600 0 0 $X=372940 $Y=358300
X1261 1 93 492 584 ICV_15 $T=390920 347800 1 0 $X=390340 $Y=342100
X1262 631 749 343 213 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=99760 347800 0 0 $X=99180 $Y=347500
X1263 627 750 343 702 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=99760 358600 1 0 $X=99180 $Y=352900
X1264 624 751 343 701 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=99760 369400 1 0 $X=99180 $Y=363700
X1265 594 752 343 703 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=99760 369400 0 0 $X=99180 $Y=369100
X1266 634 753 343 206 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=100920 337000 0 0 $X=100340 $Y=336700
X1267 595 754 343 698 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=100920 347800 1 0 $X=100340 $Y=342100
X1268 216 755 343 707 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=127600 369400 1 0 $X=127020 $Y=363700
X1269 221 756 343 709 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=135720 380200 1 0 $X=135140 $Y=374500
X1270 222 757 343 710 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=136880 358600 1 0 $X=136300 $Y=352900
X1271 223 758 344 711 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=138040 347800 0 0 $X=137460 $Y=347500
X1272 229 759 344 225 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=162400 347800 0 180 $X=139780 $Y=342100
X1273 226 760 344 230 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=142680 337000 0 0 $X=142100 $Y=336700
X1274 232 761 344 238 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=165880 391000 1 0 $X=165300 $Y=385300
X1275 233 762 344 712 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=167040 380200 1 0 $X=166460 $Y=374500
X1276 234 763 344 713 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=168200 347800 1 0 $X=167620 $Y=342100
X1277 689 764 344 239 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=169360 337000 0 0 $X=168780 $Y=336700
X1278 240 765 344 714 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=190240 369400 0 0 $X=189660 $Y=369100
X1279 243 766 344 249 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=192560 369400 1 0 $X=191980 $Y=363700
X1280 250 767 344 715 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=212280 380200 0 0 $X=211700 $Y=379900
X1281 251 768 344 262 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=214600 347800 0 0 $X=214020 $Y=347500
X1282 252 769 344 716 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=214600 369400 1 0 $X=214020 $Y=363700
X1283 255 770 344 265 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=219240 347800 1 0 $X=218660 $Y=342100
X1284 692 771 344 267 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=230840 358600 1 0 $X=230260 $Y=352900
X1285 662 772 344 274 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=249400 380200 1 0 $X=248820 $Y=374500
X1286 268 773 344 273 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=249400 380200 0 0 $X=248820 $Y=379900
X1287 683 774 344 275 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=251720 347800 0 0 $X=251140 $Y=347500
X1288 277 775 348 287 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=278400 380200 1 0 $X=277820 $Y=374500
X1289 695 776 348 289 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=285360 391000 1 0 $X=284780 $Y=385300
X1290 652 777 348 291 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=287680 358600 0 0 $X=287100 $Y=358300
X1291 293 778 348 46 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=310880 358600 0 180 $X=288260 $Y=352900
X1292 603 779 348 722 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=288840 369400 1 0 $X=288260 $Y=363700
X1293 284 780 348 292 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=291160 347800 0 0 $X=290580 $Y=347500
X1294 285 781 348 294 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=292320 347800 1 0 $X=291740 $Y=342100
X1295 605 782 348 296 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=301600 380200 0 0 $X=301020 $Y=379900
X1296 723 783 348 297 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=310880 337000 0 0 $X=310300 $Y=336700
X1297 604 784 348 730 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=314360 358600 1 0 $X=313780 $Y=352900
X1298 305 785 348 63 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=337560 347800 0 0 $X=336980 $Y=347500
X1299 668 786 348 321 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=339880 337000 0 0 $X=339300 $Y=336700
X1300 308 787 348 324 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=343360 391000 1 0 $X=342780 $Y=385300
X1301 611 788 351 335 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=386280 337000 0 0 $X=385700 $Y=336700
X1302 554 789 351 740 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=387440 358600 0 0 $X=386860 $Y=358300
X1303 333 790 351 743 214 93 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=389760 369400 1 0 $X=389180 $Y=363700
X1304 11 10 93 17 235 5 1589 1 1 UDB116SVT24_AOI22_0P75 $T=172840 369400 0 180 $X=166460 $Y=363700
X1305 11 13 93 17 708 4 1590 1 1 UDB116SVT24_AOI22_0P75 $T=177480 369400 1 180 $X=171100 $Y=369100
X1306 31 35 93 113 717 5 1597 1 1 UDB116SVT24_AOI22_0P75 $T=259840 358600 0 180 $X=253460 $Y=352900
X1307 31 461 93 113 718 6 1598 1 1 UDB116SVT24_AOI22_0P75 $T=261000 347800 0 180 $X=254620 $Y=342100
X1308 31 36 93 113 271 4 1599 1 1 UDB116SVT24_AOI22_0P75 $T=262160 358600 1 180 $X=255780 $Y=358300
X1309 31 462 93 113 719 7 1600 1 1 UDB116SVT24_AOI22_0P75 $T=269120 358600 0 180 $X=262740 $Y=352900
X1310 44 42 93 261 278 36 1601 1 1 UDB116SVT24_AOI22_0P75 $T=285360 337000 1 180 $X=278980 $Y=336700
X1311 44 43 93 261 721 461 1602 1 1 UDB116SVT24_AOI22_0P75 $T=286520 347800 1 180 $X=280140 $Y=347500
X1312 44 464 93 261 720 462 1603 1 1 UDB116SVT24_AOI22_0P75 $T=287680 358600 0 180 $X=281300 $Y=352900
X1313 47 48 93 143 295 62 1631 1 1 UDB116SVT24_AOI22_0P75 $T=309720 391000 1 0 $X=309140 $Y=385300
X1314 47 49 93 165 725 62 1632 1 1 UDB116SVT24_AOI22_0P75 $T=320160 358600 0 0 $X=319580 $Y=358300
X1315 47 50 93 105 724 62 1607 1 1 UDB116SVT24_AOI22_0P75 $T=321320 347800 0 0 $X=320740 $Y=347500
X1316 47 51 93 600 727 62 1605 1 1 UDB116SVT24_AOI22_0P75 $T=322480 369400 0 0 $X=321900 $Y=369100
X1317 47 52 93 264 298 62 1606 1 1 UDB116SVT24_AOI22_0P75 $T=330600 391000 0 180 $X=324220 $Y=385300
X1318 47 55 93 279 306 62 1608 1 1 UDB116SVT24_AOI22_0P75 $T=334080 380200 0 0 $X=333500 $Y=379900
X1319 47 59 93 62 731 656 1609 1 1 UDB116SVT24_AOI22_0P75 $T=343360 358600 0 180 $X=336980 $Y=352900
X1320 60 62 93 489 309 314 1633 1 1 UDB116SVT24_AOI22_0P75 $T=341040 358600 0 0 $X=340460 $Y=358300
X1321 61 62 93 489 310 491 1610 1 1 UDB116SVT24_AOI22_0P75 $T=341040 369400 0 0 $X=340460 $Y=369100
X1322 58 62 93 489 311 72 1611 1 1 UDB116SVT24_AOI22_0P75 $T=341040 380200 1 0 $X=340460 $Y=374500
X1323 47 64 93 315 312 62 1634 1 1 UDB116SVT24_AOI22_0P75 $T=349160 380200 1 180 $X=342780 $Y=379900
X1324 47 63 93 280 317 62 1612 1 1 UDB116SVT24_AOI22_0P75 $T=344520 369400 1 0 $X=343940 $Y=363700
X1325 65 62 93 489 320 504 1613 1 1 UDB116SVT24_AOI22_0P75 $T=351480 369400 1 0 $X=350900 $Y=363700
X1326 12 11 194 17 1 93 180 1 UDB116SVT24_OA22_1 $T=177480 380200 1 180 $X=168780 $Y=379900
X1327 455 11 457 17 1 93 181 1 UDB116SVT24_OA22_1 $T=203000 358600 1 180 $X=194300 $Y=358300
X1328 20 11 244 17 1 93 182 1 UDB116SVT24_OA22_1 $T=194880 391000 1 0 $X=194300 $Y=385300
X1329 23 11 246 17 1 93 183 1 UDB116SVT24_OA22_1 $T=203000 391000 1 0 $X=202420 $Y=385300
X1330 455 27 600 94 1 93 670 1 UDB116SVT24_OA22_1 $T=208800 358600 0 0 $X=208220 $Y=358300
X1331 25 27 253 94 1 93 671 1 UDB116SVT24_OA22_1 $T=221560 358600 0 180 $X=212860 $Y=352900
X1332 32 27 254 94 1 93 672 1 UDB116SVT24_OA22_1 $T=222720 369400 1 180 $X=214020 $Y=369100
X1333 12 27 143 94 1 93 673 1 UDB116SVT24_OA22_1 $T=226200 391000 0 180 $X=217500 $Y=385300
X1334 34 27 264 94 1 93 184 1 UDB116SVT24_OA22_1 $T=232000 391000 1 0 $X=231420 $Y=385300
X1335 20 31 41 113 1 93 674 1 UDB116SVT24_OA22_1 $T=263320 369400 0 180 $X=254620 $Y=363700
X1336 45 27 279 94 1 93 675 1 UDB116SVT24_OA22_1 $T=285360 391000 0 180 $X=276660 $Y=385300
X1337 33 27 656 94 1 93 676 1 UDB116SVT24_OA22_1 $T=279560 347800 1 0 $X=278980 $Y=342100
X1338 37 27 281 94 1 93 677 1 UDB116SVT24_OA22_1 $T=287680 358600 1 180 $X=278980 $Y=358300
X1339 463 27 283 94 1 93 678 1 UDB116SVT24_OA22_1 $T=288840 369400 0 180 $X=280140 $Y=363700
X1340 41 27 280 94 1 93 679 1 UDB116SVT24_OA22_1 $T=280720 369400 0 0 $X=280140 $Y=369100
X1341 2 1 1 UDB116SVT24_TIEDIN_1 $T=70760 369400 0 0 $X=70180 $Y=369100
X1342 3 1 1 UDB116SVT24_TIEDIN_1 $T=81200 380200 1 0 $X=80620 $Y=374500
X1343 90 88 93 521 91 1 1 UDB116SVT24_AN3B_0P75 $T=450080 347800 1 0 $X=449500 $Y=342100
X1344 22 1555 26 1 456 454 93 1 UDB116SVT24_OR3B_0P75 $T=201840 347800 0 180 $X=195460 $Y=342100
X1345 511 1556 509 1 516 517 93 1 UDB116SVT24_OR3B_0P75 $T=432680 358600 1 0 $X=432100 $Y=352900
X1346 513 506 511 1 93 508 1557 1 2068 UDB116SVT24_AOI21B_0P75 $T=435000 358600 1 180 $X=428620 $Y=358300
X1347 1 93 185 705 1558 ICV_18 $T=132240 380200 0 0 $X=131660 $Y=379900
X1348 1 93 186 225 1560 ICV_18 $T=142680 391000 1 0 $X=142100 $Y=385300
X1349 1 93 680 597 1561 ICV_18 $T=165880 369400 0 0 $X=165300 $Y=369100
X1350 1 93 681 540 1562 ICV_18 $T=177480 358600 1 0 $X=176900 $Y=352900
X1351 1 93 460 682 1563 ICV_18 $T=222720 380200 1 0 $X=222140 $Y=374500
X1352 1 93 682 544 1564 ICV_18 $T=229680 369400 0 0 $X=229100 $Y=369100
X1353 1 93 683 664 1565 ICV_18 $T=249400 347800 1 0 $X=248820 $Y=342100
X1354 1 93 37 272 1566 ICV_18 $T=262160 337000 0 0 $X=261580 $Y=336700
X1355 1 93 187 132 1567 ICV_18 $T=273760 337000 0 0 $X=273180 $Y=336700
X1356 1 93 188 697 1568 ICV_18 $T=319000 391000 1 0 $X=318420 $Y=385300
X1357 1 93 684 725 1569 ICV_18 $T=328280 380200 0 0 $X=327700 $Y=379900
X1358 1 93 685 727 1570 ICV_18 $T=330600 369400 0 0 $X=330020 $Y=369100
X1359 1 93 189 733 1571 ICV_18 $T=351480 380200 1 0 $X=350900 $Y=374500
X1360 1 93 686 586 1572 ICV_18 $T=372360 369400 1 0 $X=371780 $Y=363700
X1361 1 93 687 669 1573 ICV_18 $T=386280 369400 0 0 $X=385700 $Y=369100
X1362 1 93 190 747 1575 ICV_18 $T=429200 347800 0 0 $X=428620 $Y=347500
X1363 73 486 330 1 331 77 93 1 UDB116SVT24_AO2BB2_0P75 $T=375840 337000 0 0 $X=375260 $Y=336700
X1364 73 76 736 1 332 77 93 1 UDB116SVT24_AO2BB2_0P75 $T=378160 347800 1 0 $X=377580 $Y=342100
X1365 73 493 737 1 738 77 93 1 UDB116SVT24_AO2BB2_0P75 $T=393240 358600 0 180 $X=384540 $Y=352900
X1366 73 84 742 1 745 77 93 1 UDB116SVT24_AO2BB2_0P75 $T=404840 358600 1 0 $X=404260 $Y=352900
X1367 73 503 746 1 589 77 93 1 UDB116SVT24_AO2BB2_0P75 $T=416440 358600 1 0 $X=415860 $Y=352900
X1368 73 507 747 1 748 77 93 1 UDB116SVT24_AO2BB2_0P75 $T=421080 347800 0 0 $X=420500 $Y=347500
X1369 735 350 552 329 1 93 738 1 UDB116SVT24_ADDF_V1_1 $T=374680 347800 0 0 $X=374100 $Y=347500
X1370 739 352 556 735 1 93 745 1 UDB116SVT24_ADDF_V1_1 $T=396720 347800 0 0 $X=396140 $Y=347500
X1371 741 86 337 739 1 93 588 1 UDB116SVT24_ADDF_V1_1 $T=408320 347800 1 0 $X=407740 $Y=342100
X1372 336 87 338 741 1 93 748 1 UDB116SVT24_ADDF_V1_1 $T=410640 337000 0 0 $X=410060 $Y=336700
X1373 79 191 494 1 76 93 1 UDB116SVT24_AO21B_0P75 $T=388600 391000 1 0 $X=388020 $Y=385300
X1374 482 1 479 558 734 472 93 1 UDB116SVT24_OAI22_0P75 $T=368880 358600 0 180 $X=362500 $Y=352900
X1375 75 1 69 486 477 522 93 1 UDB116SVT24_OAI22_0P75 $T=380480 369400 1 180 $X=374100 $Y=369100
X1376 71 70 1 483 93 1 UDB116SVT24_EN2_V2_0P75 $T=374680 391000 0 180 $X=365980 $Y=385300
X1377 93 479 68 471 477 1 1 UDB116SVT24_NR3_0P75 $T=366560 347800 0 0 $X=365980 $Y=347500
X1378 327 326 480 482 1 93 1 2069 UDB116SVT24_MAJI3_1 $T=372360 337000 1 180 $X=363660 $Y=336700
X1379 1 93 192 596 ICV_19 $T=135720 369400 0 0 $X=135140 $Y=369100
X1380 1 93 193 660 ICV_19 $T=157760 380200 0 0 $X=157180 $Y=379900
X1381 1 93 688 539 ICV_19 $T=160080 369400 1 0 $X=159500 $Y=363700
X1382 1 93 689 541 ICV_19 $T=172840 369400 1 0 $X=172260 $Y=363700
X1383 1 93 690 670 ICV_19 $T=187920 358600 0 0 $X=187340 $Y=358300
X1384 1 93 194 691 ICV_19 $T=187920 391000 1 0 $X=187340 $Y=385300
X1385 1 93 691 242 ICV_19 $T=189080 380200 0 0 $X=188500 $Y=379900
X1386 1 93 195 673 ICV_19 $T=211120 391000 1 0 $X=210540 $Y=385300
X1387 1 93 692 263 ICV_19 $T=232000 358600 0 0 $X=231420 $Y=358300
X1388 1 93 693 665 ICV_19 $T=248240 369400 1 0 $X=247660 $Y=363700
X1389 1 93 694 651 ICV_19 $T=249400 358600 0 0 $X=248820 $Y=358300
X1390 1 93 463 577 ICV_19 $T=269120 347800 1 0 $X=268540 $Y=342100
X1391 1 93 695 276 ICV_19 $T=270280 391000 1 0 $X=269700 $Y=385300
X1392 1 93 696 654 ICV_19 $T=273760 347800 0 0 $X=273180 $Y=347500
X1393 1 93 196 724 ICV_19 $T=315520 369400 0 0 $X=314940 $Y=369100
X1394 1 93 697 549 ICV_19 $T=334080 380200 1 0 $X=333500 $Y=374500
X1395 1 93 197 667 ICV_19 $T=359600 347800 0 0 $X=359020 $Y=347500
X1396 33 459 93 260 1595 261 1 1 UDB116SVT24_AOI21_0P75 $T=230840 337000 0 0 $X=230260 $Y=336700
X1397 1 22 26 31 21 93 1 UDB116SVT24_ND3_0P75 $T=206480 337000 0 0 $X=205900 $Y=336700
X1398 93 24 7 11 459 25 1 1 UDB116SVT24_NR4_0P75 $T=203000 358600 1 0 $X=202420 $Y=352900
X1399 93 24 4 455 248 29 1 1 UDB116SVT24_NR4_0P75 $T=205320 347800 0 0 $X=204740 $Y=347500
X1400 4 1586 700 444 444 93 1578 443 1 1 UDB116SVT24_OA2BB2_0P75 $T=128760 358600 1 180 $X=120060 $Y=358300
X1401 5 1635 218 444 444 93 1579 445 1 1 UDB116SVT24_OA2BB2_0P75 $T=132240 380200 0 180 $X=123540 $Y=374500
X1402 6 1636 699 444 444 93 1580 446 1 1 UDB116SVT24_OA2BB2_0P75 $T=135720 347800 1 180 $X=127020 $Y=347500
X1403 7 1637 706 444 444 93 1581 447 1 1 UDB116SVT24_OA2BB2_0P75 $T=138040 358600 1 180 $X=129340 $Y=358300
X1404 5 1588 704 448 448 93 1582 8 1 1 UDB116SVT24_OA2BB2_0P75 $T=146160 380200 1 180 $X=137460 $Y=379900
X1405 4 1587 705 448 448 93 1583 449 1 1 UDB116SVT24_OA2BB2_0P75 $T=142680 369400 0 0 $X=142100 $Y=369100
X1406 15 1591 237 17 17 93 1584 454 1 1 UDB116SVT24_OA2BB2_0P75 $T=179800 347800 0 0 $X=179220 $Y=347500
.ENDS
***************************************
.SUBCKT ICV_21 1 2 3 4 7
** N=10 EP=5 IP=17 FDC=7
M0 2 2 3 1 pfet_cnrx $X=4500 $Y=3500 $D=646
X1 1 2 1 UDB116SVT24_FILL2 $T=4640 0 0 0 $X=4060 $Y=-300
X2 4 7 2 1 3 1 UDB116SVT24_BUF_L_1 $T=0 0 0 0 $X=-580 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_AOI32_1 A3 A2 VDD A1 B1 X B2 VSS VNW_P 14
** N=20 EP=10 IP=0 FDC=10
*.CALIBRE ISOLATED NETS: VPW_N
M0 17 A3 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 18 A2 17 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X A1 18 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 19 B1 X VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M4 VSS B2 19 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=500 $D=533
M5 14 A3 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3200 $D=641
M6 VDD A2 14 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3200 $D=641
M7 14 A1 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3200 $D=641
M8 X B1 14 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3200 $D=641
M9 14 B2 X VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=3200 $D=641
.ENDS
***************************************
.SUBCKT ICV_22 1 2 3 4 7
** N=9 EP=5 IP=17 FDC=5
M0 4 2 2 1 pfet_cnrx $X=1020 $Y=3200 $D=645
X2 3 7 1 2 4 1 UDB116SVT24_BUF_1 $T=4640 0 1 180 $X=580 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_AO22_1 B2 B1 A1 A2 5 VDD VSS X VNW_P
** N=19 EP=9 IP=0 FDC=12
*.CALIBRE ISOLATED NETS: VPW_N
M0 16 B2 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 14 B1 16 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 17 A1 14 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 VSS A2 17 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 X 14 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=500 $D=533
M5 VDD B2 5 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3300 $D=641
M6 5 B1 VDD VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3300 $D=641
M7 14 A1 5 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3300 $D=641
M8 5 A2 14 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3300 $D=641
M9 X 14 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=3200 $D=641
M10 VSS 15 VSS VNW_P nfet_auxpc2 $X=5660 $Y=500 $D=537
M11 VDD VDD 5 VNW_P pfet_cnrx $X=5660 $Y=3300 $D=646
.ENDS
***************************************
.SUBCKT ICV_23 1 2 3 4 5 6 7 8 9 10
** N=14 EP=10 IP=18 FDC=23
M0 2 2 4 1 pfet_cnrx $X=11460 $Y=3200 $D=645
X1 1 2 3 4 7 8 ICV_13 $T=0 0 0 0 $X=-580 $Y=-300
X2 1 2 5 6 9 10 ICV_13 $T=11600 0 0 0 $X=11020 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_AOI2222_V2_0P75 D1 X D2 C2 C1 6 VDD B2 B1 A1 A2 12 VSS VNW_P
** N=27 EP=14 IP=0 FDC=18
*.CALIBRE ISOLATED NETS: VPW_N
M0 22 D1 X VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 VSS D2 22 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 23 C2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 X C1 23 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 24 B2 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=7980 $Y=500 $D=533
M5 X B1 24 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=9140 $Y=500 $D=533
M6 25 A1 X VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=10300 $Y=500 $D=533
M7 VSS A2 25 VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=11460 $Y=500 $D=533
M8 VDD D1 6 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3300 $D=641
M9 6 D2 VDD VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3300 $D=641
M10 19 C2 6 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3300 $D=641
M11 6 C1 19 VNW_P pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3300 $D=641
M12 19 B2 12 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=7980 $Y=3400 $D=641
M13 12 B1 19 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=9140 $Y=3400 $D=641
M14 X A1 12 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=10300 $Y=3400 $D=641
M15 12 A2 X VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=11460 $Y=3400 $D=641
M16 12 VDD VDD VNW_P pfet_cnrx $X=6820 $Y=3400 $D=645
M17 VDD VDD 6 VNW_P pfet_cnrx $X=5660 $Y=3400 $D=646
.ENDS
***************************************
.SUBCKT UDB116SVT24_AOI31_0P75 A3 A2 A1 VDD X B VSS VNW_P
** N=16 EP=8 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 14 A3 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 15 A2 14 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 X A1 15 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 VSS B X VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 13 A3 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M5 VDD A2 13 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M6 13 A1 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M7 X B 13 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT ICV_24 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
+ 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
+ 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80
+ 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100
+ 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120
+ 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140
+ 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160
+ 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180
+ 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200
+ 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220
+ 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240
+ 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260
+ 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280
+ 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300
+ 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320
+ 321 322 323 324 325 326 327 328 329 330 332 333 334 335 336 337 338 339 340 341
+ 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361
+ 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381
+ 382 383 384 386 389 391
*.CALIBRE ICV_CELL 2
** N=3032 EP=386 IP=9011 FDC=10513
M0 102 415 413 102 nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=115860 $Y=315900 $D=533
M1 2279 414 102 102 nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=117020 $Y=315900 $D=533
M2 415 2 2279 102 nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=118180 $Y=315900 $D=533
M3 2280 420 415 102 nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=119340 $Y=315900 $D=533
M4 102 417 2280 102 nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=120500 $Y=315900 $D=533
M5 102 414 102 102 nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=121660 $Y=315900 $D=533
M6 420 414 102 102 nfet L=2.8e-08 W=1.4e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=122820 $Y=315900 $D=533
M7 466 465 102 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=297980 $Y=291800 $D=533
M8 2281 48 466 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=300300 $Y=291800 $D=533
M9 102 50 2281 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=301460 $Y=291800 $D=533
M10 2282 469 466 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=303780 $Y=291800 $D=533
M11 102 470 2282 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=304940 $Y=291800 $D=533
M12 498 497 505 102 nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=340900 $Y=270150 $D=533
M13 505 499 498 102 nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=342060 $Y=270150 $D=533
M14 102 502 505 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=344380 $Y=270200 $D=533
M15 505 469 102 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=345540 $Y=270200 $D=533
M16 102 507 505 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=346700 $Y=270200 $D=533
M17 102 538 95 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=448780 $Y=305100 $D=533
M18 98 533 540 102 nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=449940 $Y=334950 $D=533
M19 542 525 102 102 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=451100 $Y=270700 $D=533
M20 2283 541 95 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=451100 $Y=305100 $D=533
M21 540 95 98 102 nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=451100 $Y=334950 $D=533
M22 102 94 542 102 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=452260 $Y=270700 $D=533
M23 102 547 2283 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=452260 $Y=305100 $D=533
M24 102 550 540 102 nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=452260 $Y=334950 $D=533
M25 538 547 102 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=453420 $Y=305100 $D=533
M26 550 548 102 102 nfet L=2.8e-08 W=1.55e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=453420 $Y=334950 $D=533
M27 549 542 102 102 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=454580 $Y=270700 $D=533
M28 102 541 538 102 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=454580 $Y=305100 $D=533
M29 102 552 549 102 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=455740 $Y=270700 $D=533
M30 1 415 413 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=115860 $Y=318800 $D=641
M31 1 414 1 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=117020 $Y=318800 $D=641
M32 2285 2 1 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=118180 $Y=318800 $D=641
M33 415 420 2285 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=119340 $Y=318800 $D=641
M34 2287 417 415 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=120500 $Y=318800 $D=641
M35 1 414 2287 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=121660 $Y=318800 $D=641
M36 420 414 1 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=122820 $Y=318800 $D=641
M37 468 465 466 102 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=297980 $Y=288900 $D=641
M38 467 48 468 102 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=300300 $Y=288900 $D=641
M39 468 50 467 102 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=301460 $Y=288900 $D=641
M40 467 469 1 102 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=303780 $Y=288900 $D=641
M41 1 470 467 102 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=304940 $Y=288900 $D=641
M42 2343 497 1 102 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=340900 $Y=267300 $D=641
M43 498 499 2343 102 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=342060 $Y=267300 $D=641
M44 2347 502 498 102 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=344380 $Y=267300 $D=641
M45 2348 469 2347 102 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=345540 $Y=267300 $D=641
M46 1 507 2348 102 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=346700 $Y=267300 $D=641
M47 544 538 95 102 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=448780 $Y=307800 $D=641
M48 2366 533 1 102 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=449940 $Y=332100 $D=641
M49 2367 525 542 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=451100 $Y=267300 $D=641
M50 544 541 1 102 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=451100 $Y=307800 $D=641
M51 98 95 2366 102 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=451100 $Y=332100 $D=641
M52 1 94 2367 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=452260 $Y=267300 $D=641
M53 1 547 544 102 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=452260 $Y=307800 $D=641
M54 1 550 98 102 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=452260 $Y=332100 $D=641
M55 2368 547 1 102 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=453420 $Y=307800 $D=641
M56 550 548 1 102 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=453420 $Y=332100 $D=641
M57 2370 542 549 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=454580 $Y=267300 $D=641
M58 538 541 2368 102 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=454580 $Y=307800 $D=641
M59 1 552 2370 102 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=455740 $Y=267300 $D=641
M60 102 1121 102 102 nfet_auxpc2 $X=453420 $Y=270700 $D=537
M61 1 1 568 102 pfet_cnrx $X=54380 $Y=307800 $D=645
M62 1 1 791 102 pfet_cnrx $X=57860 $Y=275400 $D=645
M63 132 1 1 102 pfet_cnrx $X=57860 $Y=297000 $D=645
M64 1944 1 1 102 pfet_cnrx $X=60180 $Y=310500 $D=645
M65 1 1 105 102 pfet_cnrx $X=61340 $Y=286200 $D=645
M66 1 1 1942 102 pfet_cnrx $X=61340 $Y=297000 $D=645
M67 1947 1 1 102 pfet_cnrx $X=61340 $Y=307800 $D=645
M68 1 1 569 102 pfet_cnrx $X=61340 $Y=318600 $D=645
M69 1 1 637 102 pfet_cnrx $X=63660 $Y=310500 $D=645
M70 1 1 570 102 pfet_cnrx $X=64820 $Y=267300 $D=645
M71 1 1 639 102 pfet_cnrx $X=64820 $Y=307800 $D=645
M72 1 1 106 102 pfet_cnrx $X=64820 $Y=332100 $D=645
M73 1950 1 1 102 pfet_cnrx $X=65980 $Y=256500 $D=645
M74 1 1 723 102 pfet_cnrx $X=65980 $Y=264600 $D=645
M75 1 1 590 102 pfet_cnrx $X=67140 $Y=278100 $D=645
M76 1 1 792 102 pfet_cnrx $X=68300 $Y=288900 $D=645
M77 1 1 793 102 pfet_cnrx $X=68300 $Y=299700 $D=645
M78 1 1 189 102 pfet_cnrx $X=68300 $Y=321300 $D=645
M79 1 1 134 102 pfet_cnrx $X=69460 $Y=256500 $D=645
M80 1 1 681 102 pfet_cnrx $X=70620 $Y=267300 $D=645
M81 1 1 601 102 pfet_cnrx $X=70620 $Y=286200 $D=645
M82 1 1 794 102 pfet_cnrx $X=72940 $Y=329400 $D=645
M83 1 1 430 102 pfet_cnrx $X=74100 $Y=332100 $D=645
M84 1 1 602 102 pfet_cnrx $X=75260 $Y=264600 $D=645
M85 1 1 2250 102 pfet_cnrx $X=75260 $Y=267300 $D=645
M86 1 1 603 102 pfet_cnrx $X=76420 $Y=278100 $D=645
M87 1 1 572 102 pfet_cnrx $X=77580 $Y=275400 $D=645
M88 1 1 682 102 pfet_cnrx $X=78740 $Y=329400 $D=645
M89 1 1 683 102 pfet_cnrx $X=83380 $Y=275400 $D=645
M90 1 1 2251 102 pfet_cnrx $X=83380 $Y=329400 $D=645
M91 1 1 120 102 pfet_cnrx $X=83380 $Y=332100 $D=645
M92 1 1 868 102 pfet_cnrx $X=84540 $Y=297000 $D=645
M93 1 1 872 102 pfet_cnrx $X=84540 $Y=318600 $D=645
M94 1 1 604 102 pfet_cnrx $X=85700 $Y=278100 $D=645
M95 1 1 725 102 pfet_cnrx $X=86860 $Y=267300 $D=645
M96 1 1 876 102 pfet_cnrx $X=86860 $Y=310500 $D=645
M97 1 1 880 102 pfet_cnrx $X=88020 $Y=307800 $D=645
M98 1 1 2252 102 pfet_cnrx $X=91500 $Y=267300 $D=645
M99 1 1 884 102 pfet_cnrx $X=91500 $Y=288900 $D=645
M100 1 1 888 102 pfet_cnrx $X=91500 $Y=299700 $D=645
M101 1 1 892 102 pfet_cnrx $X=91500 $Y=321300 $D=645
M102 1 1 229 102 pfet_cnrx $X=92660 $Y=256500 $D=645
M103 1 1 605 102 pfet_cnrx $X=92660 $Y=275400 $D=645
M104 1 1 897 102 pfet_cnrx $X=93820 $Y=286200 $D=645
M105 1 1 726 102 pfet_cnrx $X=94980 $Y=329400 $D=645
M106 1 1 424 102 pfet_cnrx $X=96140 $Y=297000 $D=645
M107 1 1 899 102 pfet_cnrx $X=98460 $Y=264600 $D=645
M108 1 1 729 102 pfet_cnrx $X=98460 $Y=310500 $D=645
M109 1 1 730 102 pfet_cnrx $X=99620 $Y=307800 $D=645
M110 1 1 732 102 pfet_cnrx $X=103100 $Y=288900 $D=645
M111 1 1 737 102 pfet_cnrx $X=105420 $Y=286200 $D=645
M112 1 1 232 102 pfet_cnrx $X=106580 $Y=332100 $D=645
M113 1 1 904 102 pfet_cnrx $X=107740 $Y=318600 $D=645
M114 1 1 233 102 pfet_cnrx $X=108900 $Y=278100 $D=645
M115 1 1 1 102 pfet_cnrx $X=113540 $Y=288900 $D=645
M116 1 1 908 102 pfet_cnrx $X=114700 $Y=267300 $D=645
M117 1 1 911 102 pfet_cnrx $X=115860 $Y=275400 $D=645
M118 1 1 1047 102 pfet_cnrx $X=122820 $Y=329400 $D=645
M119 1 1 1048 102 pfet_cnrx $X=123980 $Y=297000 $D=645
M120 1 1 1 102 pfet_cnrx $X=125140 $Y=288900 $D=645
M121 1 1 1050 102 pfet_cnrx $X=125140 $Y=321300 $D=645
M122 1 1 1051 102 pfet_cnrx $X=126300 $Y=256500 $D=645
M123 1 1 1052 102 pfet_cnrx $X=126300 $Y=264600 $D=645
M124 1 1 1053 102 pfet_cnrx $X=126300 $Y=310500 $D=645
M125 1952 1 1 102 pfet_cnrx $X=127460 $Y=256500 $D=645
M126 1954 1 1 102 pfet_cnrx $X=127460 $Y=264600 $D=645
M127 1 1 1 102 pfet_cnrx $X=129780 $Y=288900 $D=645
M128 2234 1 1 102 pfet_cnrx $X=129780 $Y=310500 $D=645
M129 1 1 236 102 pfet_cnrx $X=129780 $Y=332100 $D=645
M130 1 1 641 102 pfet_cnrx $X=130940 $Y=256500 $D=645
M131 1 1 135 102 pfet_cnrx $X=130940 $Y=264600 $D=645
M132 1 1 116 102 pfet_cnrx $X=130940 $Y=318600 $D=645
M133 1 1 1 102 pfet_cnrx $X=133260 $Y=288900 $D=645
M134 1 1 796 102 pfet_cnrx $X=137900 $Y=297000 $D=645
M135 1 1 107 102 pfet_cnrx $X=141380 $Y=310500 $D=645
M136 1 1 239 102 pfet_cnrx $X=148340 $Y=321300 $D=645
M137 1060 1 1 102 pfet_cnrx $X=151820 $Y=264600 $D=645
M138 1 1 1955 102 pfet_cnrx $X=151820 $Y=288900 $D=645
M139 1 1 1055 102 pfet_cnrx $X=151820 $Y=307800 $D=645
M140 1 1 798 102 pfet_cnrx $X=152980 $Y=256500 $D=645
M141 1 1 593 102 pfet_cnrx $X=156460 $Y=318600 $D=645
M142 1 1 422 102 pfet_cnrx $X=162260 $Y=275400 $D=645
M143 1 1 1056 102 pfet_cnrx $X=162260 $Y=299700 $D=645
M144 1 1 2254 102 pfet_cnrx $X=166900 $Y=299700 $D=645
M145 645 1 1 102 pfet_cnrx $X=166900 $Y=321300 $D=645
M146 1 1 643 102 pfet_cnrx $X=169220 $Y=286200 $D=645
M147 1 1 1057 102 pfet_cnrx $X=169220 $Y=297000 $D=645
M148 1 1 436 102 pfet_cnrx $X=170380 $Y=288900 $D=645
M149 1 1 1059 102 pfet_cnrx $X=171540 $Y=267300 $D=645
M150 1725 1 1 102 pfet_cnrx $X=173860 $Y=264800 $D=645
M151 1 1 2255 102 pfet_cnrx $X=173860 $Y=297000 $D=645
M152 963 1 1 102 pfet_cnrx $X=175020 $Y=286200 $D=645
M153 1 1 1061 102 pfet_cnrx $X=175020 $Y=329400 $D=645
M154 1 1 573 102 pfet_cnrx $X=178500 $Y=264600 $D=645
M155 1960 1 1 102 pfet_cnrx $X=178500 $Y=267300 $D=645
M156 1 1 2302 102 pfet_cnrx $X=179660 $Y=286200 $D=645
M157 1 1 594 102 pfet_cnrx $X=179660 $Y=310500 $D=645
M158 649 1 1 102 pfet_cnrx $X=180820 $Y=288900 $D=645
M159 1 1 644 102 pfet_cnrx $X=180820 $Y=318600 $D=645
M160 1 1 1062 102 pfet_cnrx $X=181980 $Y=256500 $D=645
M161 1 1 647 102 pfet_cnrx $X=181980 $Y=267300 $D=645
M162 1 1 159 102 pfet_cnrx $X=184300 $Y=264600 $D=645
M163 1 1 2257 102 pfet_cnrx $X=185460 $Y=297000 $D=645
M164 1 1 1 102 pfet_cnrx $X=186620 $Y=286400 $D=645
M165 1966 1 1 102 pfet_cnrx $X=186620 $Y=310500 $D=645
M166 1 1 744 102 pfet_cnrx $X=186620 $Y=329400 $D=645
M167 1 1 2258 102 pfet_cnrx $X=188940 $Y=264600 $D=645
M168 1 1 607 102 pfet_cnrx $X=190100 $Y=307800 $D=645
M169 1 1 651 102 pfet_cnrx $X=190100 $Y=310500 $D=645
M170 2184 1 1 102 pfet_cnrx $X=190100 $Y=329600 $D=645
M171 1 1 1063 102 pfet_cnrx $X=191260 $Y=332100 $D=645
M172 1 1 1064 102 pfet_cnrx $X=192420 $Y=321300 $D=645
M173 1 1 1065 102 pfet_cnrx $X=193580 $Y=275400 $D=645
M174 1 1 117 102 pfet_cnrx $X=194740 $Y=256500 $D=645
M175 1 1 1066 102 pfet_cnrx $X=195900 $Y=278100 $D=645
M176 1 1 1067 102 pfet_cnrx $X=197060 $Y=299700 $D=645
M177 1 1 118 102 pfet_cnrx $X=198220 $Y=297000 $D=645
M178 1 1 595 102 pfet_cnrx $X=201700 $Y=264600 $D=645
M179 1 1 1967 102 pfet_cnrx $X=201700 $Y=307800 $D=645
M180 1 1 745 102 pfet_cnrx $X=202860 $Y=332100 $D=645
M181 1 1 1068 102 pfet_cnrx $X=204020 $Y=318600 $D=645
M182 1 1 751 102 pfet_cnrx $X=206340 $Y=256500 $D=645
M183 1072 1 1 102 pfet_cnrx $X=206340 $Y=267300 $D=645
M184 1 1 1069 102 pfet_cnrx $X=206340 $Y=288900 $D=645
M185 1 1 2259 102 pfet_cnrx $X=207500 $Y=332100 $D=645
M186 1 1 1070 102 pfet_cnrx $X=208660 $Y=286200 $D=645
M187 2305 1 1 102 pfet_cnrx $X=210980 $Y=318600 $D=645
M188 1 1 444 102 pfet_cnrx $X=212140 $Y=288900 $D=645
M189 1 1 700 102 pfet_cnrx $X=214460 $Y=286200 $D=645
M190 1 1 447 102 pfet_cnrx $X=215620 $Y=318600 $D=645
M191 1 1 1 102 pfet_cnrx $X=215620 $Y=321300 $D=645
M192 1 1 655 102 pfet_cnrx $X=216780 $Y=310500 $D=645
M193 1 1 2262 102 pfet_cnrx $X=219100 $Y=286200 $D=645
M194 1 1 1 102 pfet_cnrx $X=219100 $Y=321300 $D=645
M195 1 1 753 102 pfet_cnrx $X=223740 $Y=329400 $D=645
M196 1 1 755 102 pfet_cnrx $X=224900 $Y=275400 $D=645
M197 1 1 799 102 pfet_cnrx $X=227220 $Y=307800 $D=645
M198 1971 1 1 102 pfet_cnrx $X=227220 $Y=332100 $D=645
M199 1732 1 1 102 pfet_cnrx $X=228380 $Y=318800 $D=645
M200 1 1 136 102 pfet_cnrx $X=230700 $Y=332100 $D=645
M201 1 1 1073 102 pfet_cnrx $X=233020 $Y=264600 $D=645
M202 1 1 1 102 pfet_cnrx $X=236500 $Y=297300 $D=645
M203 1 1 1075 102 pfet_cnrx $X=236500 $Y=299700 $D=645
M204 1 1 1 102 pfet_cnrx $X=236500 $Y=318900 $D=645
M205 1 1 757 102 pfet_cnrx $X=237660 $Y=286200 $D=645
M206 1738 1 1 102 pfet_cnrx $X=238820 $Y=256500 $D=645
M207 1 1 191 102 pfet_cnrx $X=242300 $Y=332100 $D=645
M208 1 1 578 102 pfet_cnrx $X=243460 $Y=256500 $D=645
M209 1 1 1076 102 pfet_cnrx $X=243460 $Y=321300 $D=645
M210 138 1 1 102 pfet_cnrx $X=249260 $Y=278100 $D=645
M211 1975 1 1 102 pfet_cnrx $X=249260 $Y=307800 $D=645
M212 1977 1 1 102 pfet_cnrx $X=249260 $Y=318600 $D=645
M213 1979 1 1 102 pfet_cnrx $X=249260 $Y=329400 $D=645
M214 1 1 1973 102 pfet_cnrx $X=252740 $Y=278100 $D=645
M215 1 1 657 102 pfet_cnrx $X=252740 $Y=307800 $D=645
M216 1 1 659 102 pfet_cnrx $X=252740 $Y=318600 $D=645
M217 1 1 660 102 pfet_cnrx $X=252740 $Y=329400 $D=645
M218 1 1 579 102 pfet_cnrx $X=253900 $Y=297000 $D=645
M219 1084 1 1 102 pfet_cnrx $X=259700 $Y=286200 $D=645
M220 1 1 917 102 pfet_cnrx $X=259700 $Y=299700 $D=645
M221 807 1 1 102 pfet_cnrx $X=260860 $Y=329400 $D=645
M222 1 1 192 102 pfet_cnrx $X=262020 $Y=264600 $D=645
M223 1 1 806 102 pfet_cnrx $X=267820 $Y=288900 $D=645
M224 1 1 180 102 pfet_cnrx $X=273620 $Y=264600 $D=645
M225 1 1 119 102 pfet_cnrx $X=274780 $Y=307800 $D=645
M226 1 1 1080 102 pfet_cnrx $X=274780 $Y=310500 $D=645
M227 1 1 1081 102 pfet_cnrx $X=275940 $Y=321300 $D=645
M228 1 1 1082 102 pfet_cnrx $X=277100 $Y=256500 $D=645
M229 1 1 761 102 pfet_cnrx $X=277100 $Y=318600 $D=645
M230 1 1 763 102 pfet_cnrx $X=278260 $Y=299700 $D=645
M231 1 1 705 102 pfet_cnrx $X=279420 $Y=264600 $D=645
M232 1 1 1083 102 pfet_cnrx $X=281740 $Y=278100 $D=645
M233 1 1 166 102 pfet_cnrx $X=282900 $Y=267300 $D=645
M234 1 1 2266 102 pfet_cnrx $X=284060 $Y=264600 $D=645
M235 1 1 611 102 pfet_cnrx $X=286380 $Y=318600 $D=645
M236 1 1 765 102 pfet_cnrx $X=287540 $Y=321300 $D=645
M237 1087 1 1 102 pfet_cnrx $X=287540 $Y=332100 $D=645
M238 1 1 619 102 pfet_cnrx $X=291020 $Y=275600 $D=645
M239 1 1 52 102 pfet_cnrx $X=291020 $Y=288900 $D=645
M240 2239 1 1 102 pfet_cnrx $X=291020 $Y=310500 $D=645
M241 1 1 168 102 pfet_cnrx $X=292180 $Y=318600 $D=645
M242 1 1 1980 102 pfet_cnrx $X=293340 $Y=278100 $D=645
M243 1 1 707 102 pfet_cnrx $X=293340 $Y=297000 $D=645
M244 1 1 2269 102 pfet_cnrx $X=295660 $Y=288900 $D=645
M245 466 1 1 102 pfet_cnrx $X=296820 $Y=288900 $D=645
M246 1 1 169 102 pfet_cnrx $X=297980 $Y=307800 $D=645
M247 664 1 1 102 pfet_cnrx $X=297980 $Y=321300 $D=645
M248 1984 1 1 102 pfet_cnrx $X=299140 $Y=286200 $D=645
M249 1 1 1086 102 pfet_cnrx $X=299140 $Y=329400 $D=645
M250 1 1 1 102 pfet_cnrx $X=300300 $Y=278100 $D=645
M251 1 1 1982 102 pfet_cnrx $X=301460 $Y=321300 $D=645
M252 1 1 140 102 pfet_cnrx $X=302620 $Y=286200 $D=645
M253 1 1 468 102 pfet_cnrx $X=302620 $Y=288900 $D=645
M254 1 1 1 102 pfet_cnrx $X=302620 $Y=299700 $D=645
M255 1 1 1 102 pfet_cnrx $X=303780 $Y=278100 $D=645
M256 2244 1 1 102 pfet_cnrx $X=309580 $Y=318800 $D=645
M257 1 1 1088 102 pfet_cnrx $X=311900 $Y=264600 $D=645
M258 1 1 597 102 pfet_cnrx $X=317700 $Y=275400 $D=645
M259 1746 1 1 102 pfet_cnrx $X=318860 $Y=264800 $D=645
M260 1 1 1 102 pfet_cnrx $X=322340 $Y=308100 $D=645
M261 1 1 580 102 pfet_cnrx $X=323500 $Y=264600 $D=645
M262 1 1 492 102 pfet_cnrx $X=325820 $Y=275600 $D=645
M263 1749 1 1 102 pfet_cnrx $X=325820 $Y=299700 $D=645
M264 1 1 1 102 pfet_cnrx $X=330460 $Y=275700 $D=645
M265 1 1 144 102 pfet_cnrx $X=330460 $Y=321300 $D=645
M266 1 1 1089 102 pfet_cnrx $X=335100 $Y=267300 $D=645
M267 1 1 1091 102 pfet_cnrx $X=338580 $Y=329400 $D=645
M268 1990 1 1 102 pfet_cnrx $X=339740 $Y=329400 $D=645
M269 1 1 1 102 pfet_cnrx $X=340900 $Y=332100 $D=645
M270 1 1 503 102 pfet_cnrx $X=343220 $Y=329400 $D=645
M271 2247 1 1 102 pfet_cnrx $X=347860 $Y=275600 $D=645
M272 1 1 1 102 pfet_cnrx $X=350180 $Y=264900 $D=645
M273 2201 1 1 102 pfet_cnrx $X=350180 $Y=321300 $D=645
M274 1 1 509 102 pfet_cnrx $X=352500 $Y=297200 $D=645
M275 1 1 506 102 pfet_cnrx $X=354820 $Y=297200 $D=645
M276 1995 1 1 102 pfet_cnrx $X=355980 $Y=321300 $D=645
M277 1999 1 1 102 pfet_cnrx $X=357140 $Y=299700 $D=645
M278 1 1 148 102 pfet_cnrx $X=359460 $Y=310500 $D=645
M279 1 1 149 102 pfet_cnrx $X=359460 $Y=321300 $D=645
M280 1 1 668 102 pfet_cnrx $X=359460 $Y=332100 $D=645
M281 1 1 581 102 pfet_cnrx $X=360620 $Y=264600 $D=645
M282 1 1 670 102 pfet_cnrx $X=360620 $Y=299700 $D=645
M283 1022 1 1 102 pfet_cnrx $X=360620 $Y=310500 $D=645
M284 359 1 1 102 pfet_cnrx $X=360620 $Y=332100 $D=645
M285 1 1 671 102 pfet_cnrx $X=361780 $Y=286200 $D=645
M286 1023 1 1 102 pfet_cnrx $X=362940 $Y=307800 $D=645
M287 1 1 1 102 pfet_cnrx $X=364100 $Y=267300 $D=645
M288 1 1 1 102 pfet_cnrx $X=365260 $Y=288900 $D=645
M289 1026 1 1 102 pfet_cnrx $X=367580 $Y=299700 $D=645
M290 1 1 599 102 pfet_cnrx $X=371060 $Y=329400 $D=645
M291 1 1 802 102 pfet_cnrx $X=372220 $Y=267300 $D=645
M292 1 1 672 102 pfet_cnrx $X=373380 $Y=275400 $D=645
M293 2357 1 1 102 pfet_cnrx $X=374540 $Y=275400 $D=645
M294 1 1 1 102 pfet_cnrx $X=375700 $Y=278100 $D=645
M295 1 1 1 102 pfet_cnrx $X=375700 $Y=288900 $D=645
M296 1 1 1092 102 pfet_cnrx $X=378020 $Y=256500 $D=645
M297 1 1 500 102 pfet_cnrx $X=379180 $Y=264600 $D=645
M298 1 1 1029 102 pfet_cnrx $X=379180 $Y=275400 $D=645
M299 1 1 1 102 pfet_cnrx $X=379180 $Y=288900 $D=645
M300 1 1 803 102 pfet_cnrx $X=379180 $Y=318600 $D=645
M301 1 1 364 102 pfet_cnrx $X=381500 $Y=310500 $D=645
M302 1 1 921 102 pfet_cnrx $X=382660 $Y=321300 $D=645
M303 1 1 771 102 pfet_cnrx $X=382660 $Y=329400 $D=645
M304 1 1 522 102 pfet_cnrx $X=383820 $Y=307800 $D=645
M305 1098 1 1 102 pfet_cnrx $X=383820 $Y=321300 $D=645
M306 1 1 524 102 pfet_cnrx $X=388460 $Y=299700 $D=645
M307 1 1 2274 102 pfet_cnrx $X=388460 $Y=307800 $D=645
M308 526 1 1 102 pfet_cnrx $X=389620 $Y=307800 $D=645
M309 1100 1 1 102 pfet_cnrx $X=389620 $Y=329400 $D=645
M310 1 1 613 102 pfet_cnrx $X=390780 $Y=256500 $D=645
M311 1 1 185 102 pfet_cnrx $X=390780 $Y=318600 $D=645
M312 1 1 861 102 pfet_cnrx $X=397740 $Y=297000 $D=645
M313 1 1 862 102 pfet_cnrx $X=397740 $Y=299700 $D=645
M314 1 1 1093 102 pfet_cnrx $X=400060 $Y=267300 $D=645
M315 1 1 1094 102 pfet_cnrx $X=401220 $Y=278100 $D=645
M316 1 1 1095 102 pfet_cnrx $X=401220 $Y=286200 $D=645
M317 1 1 773 102 pfet_cnrx $X=402380 $Y=256500 $D=645
M318 1 1 925 102 pfet_cnrx $X=402380 $Y=264600 $D=645
M319 1 1 1096 102 pfet_cnrx $X=403540 $Y=288900 $D=645
M320 1 1 600 102 pfet_cnrx $X=403540 $Y=318600 $D=645
M321 1 1 1097 102 pfet_cnrx $X=404700 $Y=310500 $D=645
M322 1757 1 1 102 pfet_cnrx $X=407020 $Y=332100 $D=645
M323 1 1 775 102 pfet_cnrx $X=409340 $Y=297000 $D=645
M324 527 1 1 102 pfet_cnrx $X=410500 $Y=278100 $D=645
M325 2004 1 1 102 pfet_cnrx $X=411660 $Y=310500 $D=645
M326 1762 1 1 102 pfet_cnrx $X=411660 $Y=329600 $D=645
M327 1 1 776 102 pfet_cnrx $X=412820 $Y=286200 $D=645
M328 1 1 674 102 pfet_cnrx $X=415140 $Y=310500 $D=645
M329 1 1 778 102 pfet_cnrx $X=415140 $Y=318600 $D=645
M330 1 1 114 102 pfet_cnrx $X=416300 $Y=329400 $D=645
M331 2006 1 1 102 pfet_cnrx $X=417460 $Y=264600 $D=645
M332 1 1 805 102 pfet_cnrx $X=418620 $Y=275400 $D=645
M333 673 1 1 102 pfet_cnrx $X=419780 $Y=307800 $D=645
M334 1 1 153 102 pfet_cnrx $X=420940 $Y=264600 $D=645
M335 534 1 1 102 pfet_cnrx $X=422100 $Y=264600 $D=645
M336 865 1 1 102 pfet_cnrx $X=423260 $Y=286200 $D=645
M337 1 1 864 102 pfet_cnrx $X=424420 $Y=310500 $D=645
M338 1 1 614 102 pfet_cnrx $X=425580 $Y=329400 $D=645
M339 1 1 2363 102 pfet_cnrx $X=426740 $Y=264600 $D=645
M340 676 1 1 102 pfet_cnrx $X=429060 $Y=318600 $D=645
M341 1 1 1101 102 pfet_cnrx $X=430220 $Y=321300 $D=645
M342 1 1 530 102 pfet_cnrx $X=431380 $Y=278100 $D=645
M343 1 1 1042 102 pfet_cnrx $X=431380 $Y=299700 $D=645
M344 1 1 2010 102 pfet_cnrx $X=432540 $Y=318600 $D=645
M345 1 1 1 102 pfet_cnrx $X=433700 $Y=275700 $D=645
M346 1 1 1102 102 pfet_cnrx $X=433700 $Y=332100 $D=645
M347 1 1 121 102 pfet_cnrx $X=434860 $Y=329400 $D=645
M348 1 1 1105 102 pfet_cnrx $X=436020 $Y=297000 $D=645
M349 1 1 583 102 pfet_cnrx $X=436020 $Y=307800 $D=645
M350 1 1 584 102 pfet_cnrx $X=441820 $Y=264600 $D=645
M351 1 1 718 102 pfet_cnrx $X=441820 $Y=307800 $D=645
M352 1 1 785 102 pfet_cnrx $X=442980 $Y=286200 $D=645
M353 1 1 1 102 pfet_cnrx $X=446460 $Y=318600 $D=645
M354 95 1 1 102 pfet_cnrx $X=447620 $Y=307800 $D=645
M355 1 1 1 102 pfet_cnrx $X=448780 $Y=267300 $D=645
M356 1773 1 1 102 pfet_cnrx $X=448780 $Y=275600 $D=645
M357 1 1 1 102 pfet_cnrx $X=448780 $Y=278100 $D=645
M358 1 1 719 102 pfet_cnrx $X=448780 $Y=286200 $D=645
M359 1 1 1 102 pfet_cnrx $X=448780 $Y=321300 $D=645
M360 541 1 1 102 pfet_cnrx $X=449940 $Y=278100 $D=645
M361 1 1 544 102 pfet_cnrx $X=449940 $Y=307800 $D=645
M362 1 1 3032 102 pfet_cnrx $X=449940 $Y=264600 $D=645
M363 1 1 1 102 pfet_cnrx $X=451100 $Y=297000 $D=645
M364 1 1 585 102 pfet_cnrx $X=453420 $Y=256500 $D=645
M365 549 1 1 102 pfet_cnrx $X=453420 $Y=267300 $D=645
M366 1 1 2369 102 pfet_cnrx $X=454580 $Y=278100 $D=645
M367 1 1 1 102 pfet_cnrx $X=455740 $Y=299700 $D=645
M368 1 1 538 102 pfet_cnrx $X=455740 $Y=307800 $D=645
M369 1774 1 1 102 pfet_cnrx $X=456900 $Y=267300 $D=645
M370 1 1 1 102 pfet_cnrx $X=456900 $Y=275700 $D=645
M371 1 1 1 102 pfet_cnrx $X=456900 $Y=329600 $D=645
M372 1 1 1 102 pfet_cnrx $X=459220 $Y=264600 $D=645
M373 1 1 379 102 pfet_cnrx $X=460380 $Y=321300 $D=645
M374 2013 1 1 102 pfet_cnrx $X=463860 $Y=310500 $D=645
M375 1 1 188 102 pfet_cnrx $X=465020 $Y=256500 $D=645
M376 1787 1 1 102 pfet_cnrx $X=465020 $Y=278100 $D=645
M377 1788 1 1 102 pfet_cnrx $X=465020 $Y=297200 $D=645
M378 1790 1 1 102 pfet_cnrx $X=465020 $Y=329600 $D=645
M379 1 1 587 102 pfet_cnrx $X=466180 $Y=299700 $D=645
M380 1 1 528 102 pfet_cnrx $X=466180 $Y=307800 $D=645
M381 1 1 720 102 pfet_cnrx $X=466180 $Y=321300 $D=645
M382 1 1 535 102 pfet_cnrx $X=467340 $Y=275400 $D=645
M383 1 1 789 102 pfet_cnrx $X=468500 $Y=318600 $D=645
M384 1 1 497 102 pfet_cnrx $X=469660 $Y=264600 $D=645
M385 1 1 489 102 pfet_cnrx $X=469660 $Y=267300 $D=645
M386 1 1 514 102 pfet_cnrx $X=469660 $Y=278100 $D=645
M387 1 1 588 102 pfet_cnrx $X=469660 $Y=297000 $D=645
M388 1 1 589 102 pfet_cnrx $X=469660 $Y=329400 $D=645
M389 1 1 115 102 pfet_cnrx $X=469660 $Y=332100 $D=645
M390 1 1 93 102 pfet_cnrx $X=470820 $Y=256500 $D=645
M391 1 1 537 102 pfet_cnrx $X=473140 $Y=275400 $D=645
M392 1 1 678 102 pfet_cnrx $X=474300 $Y=286200 $D=645
M393 1 1 721 102 pfet_cnrx $X=475460 $Y=264600 $D=645
M394 2014 1 1 102 pfet_cnrx $X=475460 $Y=278100 $D=645
M395 1 1 722 102 pfet_cnrx $X=480100 $Y=286200 $D=645
M396 1 1 1 102 pfet_cnrx $X=480100 $Y=288900 $D=645
M397 1 1 1 102 pfet_cnrx $X=482420 $Y=267300 $D=645
M398 1 1 1 102 pfet_cnrx $X=489380 $Y=310500 $D=645
M399 1 1 1 102 pfet_cnrx $X=496340 $Y=310500 $D=645
M400 2373 1 1 102 pfet_cnrx $X=497500 $Y=310500 $D=645
M401 1 1 1 102 pfet_cnrx $X=503300 $Y=299700 $D=645
M402 1 1 1 102 pfet_cnrx $X=517220 $Y=288900 $D=645
M403 1 1 1 102 pfet_cnrx $X=521860 $Y=299700 $D=645
M404 1 1 1 102 pfet_cnrx $X=531140 $Y=299700 $D=645
M405 2374 1 1 102 pfet_cnrx $X=532300 $Y=299700 $D=645
M406 1 1 1 102 pfet_cnrx $X=535780 $Y=288900 $D=645
M407 1 1 1 102 pfet_cnrx $X=540420 $Y=307800 $D=645
M408 1 1 1 102 pfet_cnrx $X=540420 $Y=321300 $D=645
M409 1 1 1 102 pfet_cnrx $X=541580 $Y=288900 $D=645
M410 1 1 1 102 pfet_cnrx $X=542740 $Y=318600 $D=645
M411 1 1 1 102 pfet_cnrx $X=543900 $Y=297000 $D=645
M412 1 1 1 102 pfet_cnrx $X=543900 $Y=310500 $D=645
M413 1 1 1 102 pfet_cnrx $X=543900 $Y=329400 $D=645
M414 1 1 1 102 pfet_cnrx $X=543900 $Y=332100 $D=645
M415 1 1 1 102 pfet_cnrx $X=545060 $Y=256500 $D=645
M416 1 1 1 102 pfet_cnrx $X=547380 $Y=275400 $D=645
M417 1 1 1 102 pfet_cnrx $X=549700 $Y=264600 $D=645
M418 1 1 1 102 pfet_cnrx $X=554340 $Y=286200 $D=645
M419 1 1 1 102 pfet_cnrx $X=555500 $Y=278100 $D=645
M420 1 1 1 102 pfet_cnrx $X=556660 $Y=267300 $D=645
M421 1 1 1 102 pfet_cnrx $X=558980 $Y=307800 $D=645
M422 1 1 1 102 pfet_cnrx $X=561300 $Y=318600 $D=645
M423 1 1 1 102 pfet_cnrx $X=562460 $Y=297000 $D=645
M424 1 1 1 102 pfet_cnrx $X=562460 $Y=310500 $D=645
M425 1 1 1 102 pfet_cnrx $X=562460 $Y=329400 $D=645
M426 1 1 1 102 pfet_cnrx $X=562460 $Y=332100 $D=645
M427 1 1 1 102 pfet_cnrx $X=563620 $Y=256500 $D=645
M428 1 1 1 102 pfet_cnrx $X=574060 $Y=278100 $D=645
M429 1 1 1 102 pfet_cnrx $X=577540 $Y=256500 $D=645
M430 1 1 1 102 pfet_cnrx $X=577540 $Y=321300 $D=645
M431 1 1 1 102 pfet_cnrx $X=578700 $Y=256500 $D=645
M432 1 1 1 102 pfet_cnrx $X=578700 $Y=264600 $D=645
M433 1 1 1 102 pfet_cnrx $X=578700 $Y=275400 $D=645
M434 1 1 1 102 pfet_cnrx $X=578700 $Y=278100 $D=645
M435 1 1 1 102 pfet_cnrx $X=578700 $Y=286200 $D=645
M436 1 1 1 102 pfet_cnrx $X=578700 $Y=288900 $D=645
M437 1 1 1 102 pfet_cnrx $X=578700 $Y=297000 $D=645
M438 1 1 1 102 pfet_cnrx $X=578700 $Y=299700 $D=645
M439 1 1 1 102 pfet_cnrx $X=578700 $Y=307800 $D=645
M440 1 1 1 102 pfet_cnrx $X=578700 $Y=318600 $D=645
M441 1 1 1 102 pfet_cnrx $X=578700 $Y=321300 $D=645
M442 1 1 1 102 pfet_cnrx $X=578700 $Y=329400 $D=645
M443 1 1 1 102 pfet_cnrx $X=49740 $Y=256500 $D=646
M444 1 1 1 102 pfet_cnrx $X=49740 $Y=267300 $D=646
M445 1 1 1 102 pfet_cnrx $X=49740 $Y=275700 $D=646
M446 1 1 1 102 pfet_cnrx $X=49740 $Y=278100 $D=646
M447 2230 1 1 102 pfet_cnrx $X=49740 $Y=286400 $D=646
M448 1 1 1 102 pfet_cnrx $X=49740 $Y=288900 $D=646
M449 1 1 1 102 pfet_cnrx $X=49740 $Y=297300 $D=646
M450 1 1 1 102 pfet_cnrx $X=49740 $Y=299700 $D=646
M451 1703 1 1 102 pfet_cnrx $X=49740 $Y=308000 $D=646
M452 1 1 1 102 pfet_cnrx $X=49740 $Y=310500 $D=646
M453 2231 1 1 102 pfet_cnrx $X=49740 $Y=318800 $D=646
M454 1 1 1 102 pfet_cnrx $X=49740 $Y=321300 $D=646
M455 1 1 1 102 pfet_cnrx $X=49740 $Y=329700 $D=646
M456 1 1 1 102 pfet_cnrx $X=49740 $Y=332100 $D=646
M457 245 1 1 102 pfet_cnrx $X=49740 $Y=264800 $D=646
M458 2176 1 1 102 pfet_cnrx $X=52060 $Y=297300 $D=646
M459 2232 1 1 102 pfet_cnrx $X=53220 $Y=329700 $D=646
M460 1 1 1910 102 pfet_cnrx $X=54380 $Y=264800 $D=646
M461 1706 1 1 102 pfet_cnrx $X=56700 $Y=286500 $D=646
M462 1709 1 1 102 pfet_cnrx $X=56700 $Y=318900 $D=646
M463 2177 1 1 102 pfet_cnrx $X=60180 $Y=256500 $D=646
M464 1711 1 1 102 pfet_cnrx $X=60180 $Y=267300 $D=646
M465 1 1 1 102 pfet_cnrx $X=60180 $Y=278100 $D=646
M466 1 1 1 102 pfet_cnrx $X=60180 $Y=288900 $D=646
M467 1 1 1 102 pfet_cnrx $X=60180 $Y=299700 $D=646
M468 1 1 1 102 pfet_cnrx $X=60180 $Y=321300 $D=646
M469 1714 1 1 102 pfet_cnrx $X=60180 $Y=329700 $D=646
M470 1716 1 1 102 pfet_cnrx $X=60180 $Y=332100 $D=646
M471 1 1 680 102 pfet_cnrx $X=63660 $Y=275700 $D=646
M472 1 1 571 102 pfet_cnrx $X=64820 $Y=329700 $D=646
M473 2233 1 1 102 pfet_cnrx $X=65980 $Y=275700 $D=646
M474 1719 1 1 102 pfet_cnrx $X=72940 $Y=275700 $D=646
M475 1 1 684 102 pfet_cnrx $X=100780 $Y=329600 $D=646
M476 1 1 685 102 pfet_cnrx $X=101940 $Y=297200 $D=646
M477 1 1 638 102 pfet_cnrx $X=103100 $Y=299700 $D=646
M478 1 1 735 102 pfet_cnrx $X=103100 $Y=321300 $D=646
M479 1 1 736 102 pfet_cnrx $X=104260 $Y=256500 $D=646
M480 1 1 686 102 pfet_cnrx $X=104260 $Y=264800 $D=646
M481 1 1 687 102 pfet_cnrx $X=104260 $Y=310500 $D=646
M482 1 1 688 102 pfet_cnrx $X=105420 $Y=308000 $D=646
M483 1 1 689 102 pfet_cnrx $X=108900 $Y=288900 $D=646
M484 615 1 1 102 pfet_cnrx $X=112380 $Y=286400 $D=646
M485 1 1 690 102 pfet_cnrx $X=114700 $Y=278100 $D=646
M486 1 1 1 102 pfet_cnrx $X=114700 $Y=286500 $D=646
M487 413 1 1 102 pfet_cnrx $X=114700 $Y=318800 $D=646
M488 2284 1 1 102 pfet_cnrx $X=117020 $Y=275500 $D=646
M489 616 1 1 102 pfet_cnrx $X=118180 $Y=286500 $D=646
M490 1 1 1 102 pfet_cnrx $X=119340 $Y=278100 $D=646
M491 1 1 1 102 pfet_cnrx $X=120500 $Y=286400 $D=646
M492 1 1 591 102 pfet_cnrx $X=120500 $Y=288900 $D=646
M493 2286 1 1 102 pfet_cnrx $X=120500 $Y=278100 $D=646
M494 2288 1 1 102 pfet_cnrx $X=121660 $Y=286300 $D=646
M495 1 1 2284 102 pfet_cnrx $X=122820 $Y=275700 $D=646
M496 1 1 420 102 pfet_cnrx $X=123980 $Y=318900 $D=646
M497 1 1 1049 102 pfet_cnrx $X=125140 $Y=299700 $D=646
M498 1 1 738 102 pfet_cnrx $X=126300 $Y=267300 $D=646
M499 1 1 2286 102 pfet_cnrx $X=126300 $Y=278100 $D=646
M500 1 1 1 102 pfet_cnrx $X=127460 $Y=299700 $D=646
M501 1 1 1054 102 pfet_cnrx $X=127460 $Y=308100 $D=646
M502 426 1 1 102 pfet_cnrx $X=127460 $Y=310500 $D=646
M503 1 1 1 102 pfet_cnrx $X=127460 $Y=278100 $D=646
M504 1 1 2288 102 pfet_cnrx $X=127460 $Y=286300 $D=646
M505 1 1 427 102 pfet_cnrx $X=128620 $Y=267300 $D=646
M506 2289 1 1 102 pfet_cnrx $X=128620 $Y=286300 $D=646
M507 1 1 691 102 pfet_cnrx $X=129780 $Y=297300 $D=646
M508 1 1 418 102 pfet_cnrx $X=129780 $Y=299700 $D=646
M509 1 1 1 102 pfet_cnrx $X=129780 $Y=308100 $D=646
M510 1 1 795 102 pfet_cnrx $X=130940 $Y=275700 $D=646
M511 1 1 421 102 pfet_cnrx $X=130940 $Y=278100 $D=646
M512 617 1 1 102 pfet_cnrx $X=132100 $Y=278100 $D=646
M513 2290 1 1 102 pfet_cnrx $X=132100 $Y=264700 $D=646
M514 1 1 1 102 pfet_cnrx $X=134420 $Y=278100 $D=646
M515 1 1 740 102 pfet_cnrx $X=134420 $Y=329700 $D=646
M516 2225 1 1 102 pfet_cnrx $X=134420 $Y=332100 $D=646
M517 1 1 2289 102 pfet_cnrx $X=134420 $Y=286500 $D=646
M518 2178 1 1 102 pfet_cnrx $X=135580 $Y=275700 $D=646
M519 1 1 692 102 pfet_cnrx $X=135580 $Y=299700 $D=646
M520 2291 1 1 102 pfet_cnrx $X=135580 $Y=267300 $D=646
M521 2292 1 1 102 pfet_cnrx $X=135580 $Y=278100 $D=646
M522 1 1 693 102 pfet_cnrx $X=136740 $Y=256500 $D=646
M523 2376 1 1 102 pfet_cnrx $X=136740 $Y=286500 $D=646
M524 1722 1 1 102 pfet_cnrx $X=136740 $Y=310500 $D=646
M525 2235 1 1 102 pfet_cnrx $X=137900 $Y=288900 $D=646
M526 2295 1 1 102 pfet_cnrx $X=137900 $Y=329700 $D=646
M527 1 1 2290 102 pfet_cnrx $X=137900 $Y=264700 $D=646
M528 2293 1 1 102 pfet_cnrx $X=137900 $Y=318700 $D=646
M529 1 1 432 102 pfet_cnrx $X=139060 $Y=256500 $D=646
M530 1 1 1 102 pfet_cnrx $X=140220 $Y=299700 $D=646
M531 1 1 1 102 pfet_cnrx $X=141380 $Y=275700 $D=646
M532 1 1 2291 102 pfet_cnrx $X=141380 $Y=267300 $D=646
M533 1 1 2292 102 pfet_cnrx $X=141380 $Y=278100 $D=646
M534 1 1 2376 102 pfet_cnrx $X=142540 $Y=286500 $D=646
M535 1 1 2294 102 pfet_cnrx $X=142540 $Y=332100 $D=646
M536 1 1 156 102 pfet_cnrx $X=143700 $Y=264900 $D=646
M537 1 1 694 102 pfet_cnrx $X=143700 $Y=297200 $D=646
M538 1 1 2293 102 pfet_cnrx $X=143700 $Y=318700 $D=646
M539 1 1 2295 102 pfet_cnrx $X=143700 $Y=329500 $D=646
M540 1 1 157 102 pfet_cnrx $X=144860 $Y=256500 $D=646
M541 2179 1 1 102 pfet_cnrx $X=144860 $Y=286500 $D=646
M542 104 1 1 102 pfet_cnrx $X=144860 $Y=288900 $D=646
M543 2180 1 1 102 pfet_cnrx $X=146020 $Y=264900 $D=646
M544 2236 1 1 102 pfet_cnrx $X=146020 $Y=275700 $D=646
M545 1 1 433 102 pfet_cnrx $X=146020 $Y=297200 $D=646
M546 1 1 1 102 pfet_cnrx $X=147180 $Y=297200 $D=646
M547 1 1 592 102 pfet_cnrx $X=148340 $Y=278100 $D=646
M548 640 1 1 102 pfet_cnrx $X=148340 $Y=288900 $D=646
M549 1 1 797 102 pfet_cnrx $X=149500 $Y=267300 $D=646
M550 1 1 695 102 pfet_cnrx $X=149500 $Y=318900 $D=646
M551 1 1 1 102 pfet_cnrx $X=149500 $Y=321300 $D=646
M552 416 1 1 102 pfet_cnrx $X=150660 $Y=286400 $D=646
M553 423 1 1 102 pfet_cnrx $X=152980 $Y=275700 $D=646
M554 1 1 1 102 pfet_cnrx $X=152980 $Y=288900 $D=646
M555 1 1 742 102 pfet_cnrx $X=152980 $Y=310500 $D=646
M556 1 1 606 102 pfet_cnrx $X=152980 $Y=329600 $D=646
M557 1 1 1 102 pfet_cnrx $X=155300 $Y=275700 $D=646
M558 2181 1 1 102 pfet_cnrx $X=155300 $Y=310500 $D=646
M559 1 1 2296 102 pfet_cnrx $X=157620 $Y=286400 $D=646
M560 1 1 190 102 pfet_cnrx $X=157620 $Y=321300 $D=646
M561 1 1 414 102 pfet_cnrx $X=158780 $Y=288900 $D=646
M562 1 1 1 102 pfet_cnrx $X=159940 $Y=256500 $D=646
M563 1 1 1 102 pfet_cnrx $X=161100 $Y=288900 $D=646
M564 2182 1 1 102 pfet_cnrx $X=161100 $Y=321300 $D=646
M565 2297 1 1 102 pfet_cnrx $X=161100 $Y=310500 $D=646
M566 1 1 434 102 pfet_cnrx $X=163420 $Y=288900 $D=646
M567 1 1 437 102 pfet_cnrx $X=163420 $Y=308100 $D=646
M568 2298 1 1 102 pfet_cnrx $X=163420 $Y=318700 $D=646
M569 2227 1 1 102 pfet_cnrx $X=165740 $Y=308100 $D=646
M570 1 1 242 102 pfet_cnrx $X=165740 $Y=332100 $D=646
M571 1 1 2297 102 pfet_cnrx $X=166900 $Y=310500 $D=646
M572 1 1 158 102 pfet_cnrx $X=168060 $Y=275700 $D=646
M573 2299 1 1 102 pfet_cnrx $X=168060 $Y=299700 $D=646
M574 1 1 1 102 pfet_cnrx $X=169220 $Y=332100 $D=646
M575 1 1 2298 102 pfet_cnrx $X=169220 $Y=318700 $D=646
M576 1 1 1058 102 pfet_cnrx $X=170380 $Y=278100 $D=646
M577 1 1 1957 102 pfet_cnrx $X=170380 $Y=321300 $D=646
M578 440 1 1 102 pfet_cnrx $X=170380 $Y=286300 $D=646
M579 1 1 1 102 pfet_cnrx $X=171540 $Y=275700 $D=646
M580 1 1 696 102 pfet_cnrx $X=172700 $Y=310500 $D=646
M581 1 1 1 102 pfet_cnrx $X=173860 $Y=278100 $D=646
M582 1 1 1 102 pfet_cnrx $X=173860 $Y=286300 $D=646
M583 1 1 2299 102 pfet_cnrx $X=173860 $Y=299700 $D=646
M584 1 1 2300 102 pfet_cnrx $X=173860 $Y=307900 $D=646
M585 2183 1 1 102 pfet_cnrx $X=175020 $Y=288900 $D=646
M586 1 1 1 102 pfet_cnrx $X=175020 $Y=299700 $D=646
M587 2301 1 1 102 pfet_cnrx $X=175020 $Y=297100 $D=646
M588 1 1 2256 102 pfet_cnrx $X=178500 $Y=308000 $D=646
M589 1 1 428 102 pfet_cnrx $X=180820 $Y=308000 $D=646
M590 1 1 2301 102 pfet_cnrx $X=180820 $Y=297100 $D=646
M591 1 1 1 102 pfet_cnrx $X=181980 $Y=318800 $D=646
M592 20 1 1 102 pfet_cnrx $X=184300 $Y=286400 $D=646
M593 1 1 1963 102 pfet_cnrx $X=184300 $Y=288900 $D=646
M594 1 1 160 102 pfet_cnrx $X=187780 $Y=256500 $D=646
M595 1 1 697 102 pfet_cnrx $X=187780 $Y=267300 $D=646
M596 10 1 1 102 pfet_cnrx $X=187780 $Y=329600 $D=646
M597 1 1 698 102 pfet_cnrx $X=191260 $Y=297300 $D=646
M598 438 1 1 102 pfet_cnrx $X=191260 $Y=310500 $D=646
M599 2237 1 1 102 pfet_cnrx $X=192420 $Y=267300 $D=646
M600 1 1 1 102 pfet_cnrx $X=193580 $Y=310500 $D=646
M601 1 1 646 102 pfet_cnrx $X=194740 $Y=264900 $D=646
M602 1 1 1 102 pfet_cnrx $X=194740 $Y=275700 $D=646
M603 1 1 650 102 pfet_cnrx $X=195900 $Y=308100 $D=646
M604 1 1 1 102 pfet_cnrx $X=195900 $Y=329700 $D=646
M605 1 1 1 102 pfet_cnrx $X=197060 $Y=278100 $D=646
M606 653 1 1 102 pfet_cnrx $X=198220 $Y=308100 $D=646
M607 1 1 1 102 pfet_cnrx $X=198220 $Y=299700 $D=646
M608 2303 1 1 102 pfet_cnrx $X=199380 $Y=267300 $D=646
M609 1728 1 1 102 pfet_cnrx $X=199380 $Y=275700 $D=646
M610 2238 1 1 102 pfet_cnrx $X=201700 $Y=329700 $D=646
M611 1 1 1 102 pfet_cnrx $X=202860 $Y=307900 $D=646
M612 1 1 108 102 pfet_cnrx $X=204020 $Y=275700 $D=646
M613 1 1 747 102 pfet_cnrx $X=204020 $Y=321300 $D=646
M614 1 1 24 102 pfet_cnrx $X=204020 $Y=299700 $D=646
M615 1 1 749 102 pfet_cnrx $X=205180 $Y=310500 $D=646
M616 1 1 2303 102 pfet_cnrx $X=205180 $Y=267300 $D=646
M617 1 1 1 102 pfet_cnrx $X=206340 $Y=321300 $D=646
M618 1 1 443 102 pfet_cnrx $X=206340 $Y=307900 $D=646
M619 2306 1 1 102 pfet_cnrx $X=207500 $Y=275700 $D=646
M620 1 1 608 102 pfet_cnrx $X=207500 $Y=297300 $D=646
M621 1 1 439 102 pfet_cnrx $X=207500 $Y=310500 $D=646
M622 1 1 2260 102 pfet_cnrx $X=208660 $Y=299700 $D=646
M623 1 1 1 102 pfet_cnrx $X=208660 $Y=329700 $D=646
M624 2304 1 1 102 pfet_cnrx $X=208660 $Y=332100 $D=646
M625 1 1 609 102 pfet_cnrx $X=210980 $Y=264800 $D=646
M626 1 1 699 102 pfet_cnrx $X=212140 $Y=256500 $D=646
M627 1 1 1 102 pfet_cnrx $X=212140 $Y=297300 $D=646
M628 1 1 654 102 pfet_cnrx $X=212140 $Y=308100 $D=646
M629 1 1 1 102 pfet_cnrx $X=212140 $Y=321300 $D=646
M630 1 1 103 102 pfet_cnrx $X=212140 $Y=329500 $D=646
M631 1 1 1 102 pfet_cnrx $X=213300 $Y=299700 $D=646
M632 1969 1 1 102 pfet_cnrx $X=213300 $Y=310500 $D=646
M633 1 1 2306 102 pfet_cnrx $X=213300 $Y=275500 $D=646
M634 1 1 1 102 pfet_cnrx $X=214460 $Y=299700 $D=646
M635 1 1 2304 102 pfet_cnrx $X=214460 $Y=332100 $D=646
M636 1 1 2261 102 pfet_cnrx $X=216780 $Y=288900 $D=646
M637 1 1 701 102 pfet_cnrx $X=217940 $Y=297300 $D=646
M638 1 1 1071 102 pfet_cnrx $X=219100 $Y=278100 $D=646
M639 1 1 596 102 pfet_cnrx $X=219100 $Y=308100 $D=646
M640 2185 1 1 102 pfet_cnrx $X=220260 $Y=318800 $D=646
M641 1 1 161 102 pfet_cnrx $X=220260 $Y=332100 $D=646
M642 2307 1 1 102 pfet_cnrx $X=220260 $Y=286300 $D=646
M643 2377 1 1 102 pfet_cnrx $X=221420 $Y=278100 $D=646
M644 1730 1 1 102 pfet_cnrx $X=221420 $Y=288900 $D=646
M645 1 1 1 102 pfet_cnrx $X=221420 $Y=321300 $D=646
M646 2186 1 1 102 pfet_cnrx $X=222580 $Y=297300 $D=646
M647 1 1 702 102 pfet_cnrx $X=222580 $Y=310500 $D=646
M648 1 1 1 102 pfet_cnrx $X=223740 $Y=332100 $D=646
M649 1 1 574 102 pfet_cnrx $X=226060 $Y=288900 $D=646
M650 7 1 1 102 pfet_cnrx $X=226060 $Y=318800 $D=646
M651 1 1 445 102 pfet_cnrx $X=226060 $Y=332100 $D=646
M652 1 1 2307 102 pfet_cnrx $X=226060 $Y=286300 $D=646
M653 1 1 2377 102 pfet_cnrx $X=227220 $Y=278100 $D=646
M654 1 1 1 102 pfet_cnrx $X=228380 $Y=267300 $D=646
M655 1 1 1 102 pfet_cnrx $X=228380 $Y=297300 $D=646
M656 1 1 2263 102 pfet_cnrx $X=229540 $Y=275700 $D=646
M657 2308 1 1 102 pfet_cnrx $X=229540 $Y=278100 $D=646
M658 2378 1 1 102 pfet_cnrx $X=229540 $Y=288900 $D=646
M659 1 1 703 102 pfet_cnrx $X=229540 $Y=329700 $D=646
M660 2309 1 1 102 pfet_cnrx $X=230700 $Y=267300 $D=646
M661 29 1 1 102 pfet_cnrx $X=231860 $Y=332100 $D=646
M662 1 1 575 102 pfet_cnrx $X=233020 $Y=318900 $D=646
M663 1 1 1074 102 pfet_cnrx $X=234180 $Y=256500 $D=646
M664 1734 1 1 102 pfet_cnrx $X=234180 $Y=275700 $D=646
M665 1736 1 1 102 pfet_cnrx $X=234180 $Y=329700 $D=646
M666 1 1 1 102 pfet_cnrx $X=234180 $Y=332100 $D=646
M667 1 1 2308 102 pfet_cnrx $X=235340 $Y=278100 $D=646
M668 1 1 2378 102 pfet_cnrx $X=235340 $Y=288900 $D=646
M669 442 1 1 102 pfet_cnrx $X=236500 $Y=256500 $D=646
M670 1 1 2309 102 pfet_cnrx $X=236500 $Y=267300 $D=646
M671 1 1 1 102 pfet_cnrx $X=237660 $Y=267300 $D=646
M672 1 1 1 102 pfet_cnrx $X=237660 $Y=288900 $D=646
M673 1 1 162 102 pfet_cnrx $X=238820 $Y=265000 $D=646
M674 1 1 576 102 pfet_cnrx $X=238820 $Y=275800 $D=646
M675 1 1 1 102 pfet_cnrx $X=238820 $Y=286600 $D=646
M676 1 1 1 102 pfet_cnrx $X=238820 $Y=297400 $D=646
M677 1 1 179 102 pfet_cnrx $X=238820 $Y=308200 $D=646
M678 1 1 1 102 pfet_cnrx $X=238820 $Y=319000 $D=646
M679 1 1 577 102 pfet_cnrx $X=238820 $Y=329800 $D=646
M680 1 1 163 102 pfet_cnrx $X=241140 $Y=278100 $D=646
M681 1740 1 1 102 pfet_cnrx $X=242300 $Y=267300 $D=646
M682 2188 1 1 102 pfet_cnrx $X=243460 $Y=278100 $D=646
M683 1 1 1077 102 pfet_cnrx $X=244620 $Y=310500 $D=646
M684 1 1 109 102 pfet_cnrx $X=246940 $Y=267300 $D=646
M685 562 1 1 102 pfet_cnrx $X=248100 $Y=256500 $D=646
M686 1741 1 1 102 pfet_cnrx $X=249260 $Y=264800 $D=646
M687 1 1 1 102 pfet_cnrx $X=249260 $Y=275700 $D=646
M688 1 1 1 102 pfet_cnrx $X=249260 $Y=286500 $D=646
M689 1743 1 1 102 pfet_cnrx $X=249260 $Y=297200 $D=646
M690 2189 1 1 102 pfet_cnrx $X=250420 $Y=267300 $D=646
M691 1 1 1 102 pfet_cnrx $X=250420 $Y=321300 $D=646
M692 2190 1 1 102 pfet_cnrx $X=251580 $Y=275700 $D=646
M693 1 1 610 102 pfet_cnrx $X=251580 $Y=332100 $D=646
M694 1 1 1 102 pfet_cnrx $X=251580 $Y=256500 $D=646
M695 2313 1 1 102 pfet_cnrx $X=252740 $Y=286500 $D=646
M696 1 1 800 102 pfet_cnrx $X=252740 $Y=310500 $D=646
M697 1 1 122 102 pfet_cnrx $X=252740 $Y=321300 $D=646
M698 1 1 110 102 pfet_cnrx $X=253900 $Y=264900 $D=646
M699 1 1 1 102 pfet_cnrx $X=253900 $Y=321300 $D=646
M700 2310 1 1 102 pfet_cnrx $X=253900 $Y=329500 $D=646
M701 1 1 1 102 pfet_cnrx $X=255060 $Y=256500 $D=646
M702 2311 1 1 102 pfet_cnrx $X=256220 $Y=267300 $D=646
M703 2312 1 1 102 pfet_cnrx $X=257380 $Y=275500 $D=646
M704 1 1 164 102 pfet_cnrx $X=258540 $Y=308100 $D=646
M705 1 1 2313 102 pfet_cnrx $X=258540 $Y=286300 $D=646
M706 1 1 1 102 pfet_cnrx $X=259700 $Y=278100 $D=646
M707 1 1 1078 102 pfet_cnrx $X=259700 $Y=288900 $D=646
M708 1 1 704 102 pfet_cnrx $X=259700 $Y=297200 $D=646
M709 2314 1 1 102 pfet_cnrx $X=259700 $Y=318700 $D=646
M710 1 1 2310 102 pfet_cnrx $X=259700 $Y=329500 $D=646
M711 2315 1 1 102 pfet_cnrx $X=260860 $Y=299700 $D=646
M712 2379 1 1 102 pfet_cnrx $X=262020 $Y=308100 $D=646
M713 1 1 2311 102 pfet_cnrx $X=262020 $Y=267300 $D=646
M714 1 1 2312 102 pfet_cnrx $X=263180 $Y=275500 $D=646
M715 1 1 2314 102 pfet_cnrx $X=265500 $Y=318700 $D=646
M716 1 1 2315 102 pfet_cnrx $X=266660 $Y=299700 $D=646
M717 1 1 165 102 pfet_cnrx $X=267820 $Y=267300 $D=646
M718 1 1 2379 102 pfet_cnrx $X=267820 $Y=308100 $D=646
M719 1 1 48 102 pfet_cnrx $X=268980 $Y=275700 $D=646
M720 1 1 1 102 pfet_cnrx $X=268980 $Y=329700 $D=646
M721 2316 1 1 102 pfet_cnrx $X=271300 $Y=267300 $D=646
M722 2317 1 1 102 pfet_cnrx $X=271300 $Y=275700 $D=646
M723 1 1 1079 102 pfet_cnrx $X=273620 $Y=332100 $D=646
M724 1 1 801 102 pfet_cnrx $X=277100 $Y=329600 $D=646
M725 2319 1 1 102 pfet_cnrx $X=277100 $Y=332100 $D=646
M726 1 1 2316 102 pfet_cnrx $X=277100 $Y=267300 $D=646
M727 1 1 2317 102 pfet_cnrx $X=277100 $Y=275500 $D=646
M728 1 1 1 102 pfet_cnrx $X=278260 $Y=256500 $D=646
M729 1 1 2264 102 pfet_cnrx $X=279420 $Y=310500 $D=646
M730 2318 1 1 102 pfet_cnrx $X=279420 $Y=307900 $D=646
M731 1 1 618 102 pfet_cnrx $X=280580 $Y=256500 $D=646
M732 1 1 1 102 pfet_cnrx $X=281740 $Y=256500 $D=646
M733 1 1 1 102 pfet_cnrx $X=281740 $Y=286500 $D=646
M734 1 1 1085 102 pfet_cnrx $X=281740 $Y=297300 $D=646
M735 1 1 123 102 pfet_cnrx $X=281740 $Y=310500 $D=646
M736 1 1 2265 102 pfet_cnrx $X=282900 $Y=299700 $D=646
M737 1 1 2319 102 pfet_cnrx $X=282900 $Y=332100 $D=646
M738 1 1 124 102 pfet_cnrx $X=284060 $Y=256500 $D=646
M739 2383 1 1 102 pfet_cnrx $X=285220 $Y=286500 $D=646
M740 1 1 1 102 pfet_cnrx $X=285220 $Y=297300 $D=646
M741 1 1 125 102 pfet_cnrx $X=285220 $Y=299700 $D=646
M742 1 1 2267 102 pfet_cnrx $X=287540 $Y=267300 $D=646
M743 1 1 706 102 pfet_cnrx $X=287540 $Y=278100 $D=646
M744 1 1 454 102 pfet_cnrx $X=287540 $Y=297200 $D=646
M745 2191 1 1 102 pfet_cnrx $X=288700 $Y=256500 $D=646
M746 1 1 181 102 pfet_cnrx $X=288700 $Y=275600 $D=646
M747 481 1 1 102 pfet_cnrx $X=288700 $Y=310500 $D=646
M748 1 1 167 102 pfet_cnrx $X=289860 $Y=264800 $D=646
M749 1 1 126 102 pfet_cnrx $X=289860 $Y=267300 $D=646
M750 662 1 1 102 pfet_cnrx $X=289860 $Y=278100 $D=646
M751 2193 1 1 102 pfet_cnrx $X=292180 $Y=321300 $D=646
M752 1 1 2320 102 pfet_cnrx $X=292180 $Y=308000 $D=646
M753 2384 1 1 102 pfet_cnrx $X=293340 $Y=267300 $D=646
M754 1 1 475 102 pfet_cnrx $X=293340 $Y=275700 $D=646
M755 1 1 1 102 pfet_cnrx $X=294500 $Y=278100 $D=646
M756 2321 1 1 102 pfet_cnrx $X=294500 $Y=256500 $D=646
M757 1 1 1 102 pfet_cnrx $X=296820 $Y=275700 $D=646
M758 1 1 768 102 pfet_cnrx $X=296820 $Y=299700 $D=646
M759 1 1 2270 102 pfet_cnrx $X=296820 $Y=318800 $D=646
M760 2385 1 1 102 pfet_cnrx $X=297980 $Y=310500 $D=646
M761 1 1 2322 102 pfet_cnrx $X=297980 $Y=286400 $D=646
M762 1 1 620 102 pfet_cnrx $X=299140 $Y=275600 $D=646
M763 1 1 127 102 pfet_cnrx $X=299140 $Y=318800 $D=646
M764 1 1 612 102 pfet_cnrx $X=302620 $Y=297300 $D=646
M765 2241 1 1 102 pfet_cnrx $X=302620 $Y=308000 $D=646
M766 1 1 2271 102 pfet_cnrx $X=303780 $Y=329600 $D=646
M767 1002 1 1 102 pfet_cnrx $X=303780 $Y=286400 $D=646
M768 1 1 708 102 pfet_cnrx $X=304940 $Y=318900 $D=646
M769 2194 1 1 102 pfet_cnrx $X=306100 $Y=288900 $D=646
M770 1 1 1 102 pfet_cnrx $X=306100 $Y=299700 $D=646
M771 1 1 128 102 pfet_cnrx $X=306100 $Y=329600 $D=646
M772 1 1 2323 102 pfet_cnrx $X=306100 $Y=267300 $D=646
M773 1 1 1 102 pfet_cnrx $X=307260 $Y=267300 $D=646
M774 478 1 1 102 pfet_cnrx $X=307260 $Y=318900 $D=646
M775 1 1 2324 102 pfet_cnrx $X=307260 $Y=256500 $D=646
M776 1 1 1 102 pfet_cnrx $X=308420 $Y=256500 $D=646
M777 1 1 46 102 pfet_cnrx $X=308420 $Y=275600 $D=646
M778 1 1 1 102 pfet_cnrx $X=308420 $Y=297300 $D=646
M779 1 1 621 102 pfet_cnrx $X=308420 $Y=299700 $D=646
M780 2325 1 1 102 pfet_cnrx $X=308420 $Y=321300 $D=646
M781 1 1 622 102 pfet_cnrx $X=309580 $Y=267300 $D=646
M782 1 1 1 102 pfet_cnrx $X=309580 $Y=278100 $D=646
M783 1 1 1 102 pfet_cnrx $X=309580 $Y=286400 $D=646
M784 2243 1 1 102 pfet_cnrx $X=309580 $Y=308100 $D=646
M785 1 1 1 102 pfet_cnrx $X=309580 $Y=332100 $D=646
M786 2326 1 1 102 pfet_cnrx $X=309580 $Y=297200 $D=646
M787 2327 1 1 102 pfet_cnrx $X=309580 $Y=299700 $D=646
M788 1 1 58 102 pfet_cnrx $X=310740 $Y=256500 $D=646
M789 1 1 129 102 pfet_cnrx $X=310740 $Y=275700 $D=646
M790 1 1 1 102 pfet_cnrx $X=310740 $Y=278100 $D=646
M791 2329 1 1 102 pfet_cnrx $X=310740 $Y=286400 $D=646
M792 1 1 2328 102 pfet_cnrx $X=310740 $Y=310500 $D=646
M793 1 1 1 102 pfet_cnrx $X=311900 $Y=256500 $D=646
M794 1 1 1 102 pfet_cnrx $X=311900 $Y=288900 $D=646
M795 1 1 709 102 pfet_cnrx $X=311900 $Y=329600 $D=646
M796 2330 1 1 102 pfet_cnrx $X=311900 $Y=310500 $D=646
M797 1 1 1 102 pfet_cnrx $X=313060 $Y=267300 $D=646
M798 1 1 623 102 pfet_cnrx $X=314220 $Y=288900 $D=646
M799 1 1 130 102 pfet_cnrx $X=314220 $Y=329700 $D=646
M800 1 1 710 102 pfet_cnrx $X=315380 $Y=332100 $D=646
M801 2331 1 1 102 pfet_cnrx $X=315380 $Y=288900 $D=646
M802 65 1 1 102 pfet_cnrx $X=316540 $Y=264800 $D=646
M803 2245 1 1 102 pfet_cnrx $X=316540 $Y=278100 $D=646
M804 624 1 1 102 pfet_cnrx $X=316540 $Y=308100 $D=646
M805 142 1 1 102 pfet_cnrx $X=316540 $Y=318900 $D=646
M806 1 1 1 102 pfet_cnrx $X=316540 $Y=329700 $D=646
M807 1 1 1 102 pfet_cnrx $X=317700 $Y=256500 $D=646
M808 1 1 1 102 pfet_cnrx $X=318860 $Y=256500 $D=646
M809 1 1 1 102 pfet_cnrx $X=318860 $Y=308100 $D=646
M810 1 1 1985 102 pfet_cnrx $X=320020 $Y=318900 $D=646
M811 1 1 2386 102 pfet_cnrx $X=321180 $Y=321300 $D=646
M812 1 1 1 102 pfet_cnrx $X=322340 $Y=256500 $D=646
M813 2380 1 1 102 pfet_cnrx $X=322340 $Y=318900 $D=646
M814 1 1 2387 102 pfet_cnrx $X=322340 $Y=297300 $D=646
M815 1 1 2332 102 pfet_cnrx $X=322340 $Y=299700 $D=646
M816 1 1 1 102 pfet_cnrx $X=323500 $Y=256500 $D=646
M817 1 1 170 102 pfet_cnrx $X=323500 $Y=275600 $D=646
M818 143 1 1 102 pfet_cnrx $X=323500 $Y=278100 $D=646
M819 625 1 1 102 pfet_cnrx $X=323500 $Y=299700 $D=646
M820 1 1 2333 102 pfet_cnrx $X=323500 $Y=286300 $D=646
M821 1 1 1 102 pfet_cnrx $X=324660 $Y=286400 $D=646
M822 2388 1 1 102 pfet_cnrx $X=324660 $Y=297300 $D=646
M823 131 1 1 102 pfet_cnrx $X=324660 $Y=321300 $D=646
M824 1 1 2334 102 pfet_cnrx $X=324660 $Y=310500 $D=646
M825 1 1 1987 102 pfet_cnrx $X=326980 $Y=278100 $D=646
M826 1 1 626 102 pfet_cnrx $X=326980 $Y=286500 $D=646
M827 1989 1 1 102 pfet_cnrx $X=326980 $Y=321300 $D=646
M828 1 1 487 102 pfet_cnrx $X=328140 $Y=275700 $D=646
M829 1 1 1 102 pfet_cnrx $X=328140 $Y=308100 $D=646
M830 1 1 2335 102 pfet_cnrx $X=328140 $Y=288900 $D=646
M831 1 1 2380 102 pfet_cnrx $X=328140 $Y=318900 $D=646
M832 1 1 171 102 pfet_cnrx $X=329300 $Y=264900 $D=646
M833 2339 1 1 102 pfet_cnrx $X=329300 $Y=278100 $D=646
M834 1009 1 1 102 pfet_cnrx $X=329300 $Y=308000 $D=646
M835 349 1 1 102 pfet_cnrx $X=330460 $Y=286500 $D=646
M836 1 1 111 102 pfet_cnrx $X=330460 $Y=299700 $D=646
M837 1 1 711 102 pfet_cnrx $X=330460 $Y=310500 $D=646
M838 1 1 2336 102 pfet_cnrx $X=330460 $Y=256500 $D=646
M839 2195 1 1 102 pfet_cnrx $X=331620 $Y=264900 $D=646
M840 2196 1 1 102 pfet_cnrx $X=331620 $Y=318900 $D=646
M841 2337 1 1 102 pfet_cnrx $X=331620 $Y=256500 $D=646
M842 2338 1 1 102 pfet_cnrx $X=331620 $Y=321300 $D=646
M843 1 1 172 102 pfet_cnrx $X=333940 $Y=288900 $D=646
M844 2389 1 1 102 pfet_cnrx $X=333940 $Y=310500 $D=646
M845 2246 1 1 102 pfet_cnrx $X=335100 $Y=275700 $D=646
M846 1 1 1 102 pfet_cnrx $X=335100 $Y=308100 $D=646
M847 1 1 2339 102 pfet_cnrx $X=335100 $Y=278100 $D=646
M848 1 1 344 102 pfet_cnrx $X=336260 $Y=256500 $D=646
M849 1 1 1 102 pfet_cnrx $X=336260 $Y=278100 $D=646
M850 1 1 1 102 pfet_cnrx $X=336260 $Y=299700 $D=646
M851 1 1 1 102 pfet_cnrx $X=336260 $Y=286400 $D=646
M852 74 1 1 102 pfet_cnrx $X=337420 $Y=264800 $D=646
M853 1 1 1 102 pfet_cnrx $X=337420 $Y=286400 $D=646
M854 2390 1 1 102 pfet_cnrx $X=337420 $Y=288900 $D=646
M855 2198 1 1 102 pfet_cnrx $X=337420 $Y=308100 $D=646
M856 1 1 1090 102 pfet_cnrx $X=337420 $Y=332100 $D=646
M857 1 1 2340 102 pfet_cnrx $X=337420 $Y=297100 $D=646
M858 2341 1 1 102 pfet_cnrx $X=337420 $Y=299700 $D=646
M859 2342 1 1 102 pfet_cnrx $X=337420 $Y=318700 $D=646
M860 1 1 2338 102 pfet_cnrx $X=337420 $Y=321300 $D=646
M861 66 1 1 102 pfet_cnrx $X=339740 $Y=256500 $D=646
M862 1 1 2272 102 pfet_cnrx $X=339740 $Y=267300 $D=646
M863 1 1 1 102 pfet_cnrx $X=340900 $Y=264900 $D=646
M864 1 1 1 102 pfet_cnrx $X=342060 $Y=256500 $D=646
M865 476 1 1 102 pfet_cnrx $X=342060 $Y=275700 $D=646
M866 1 1 1 102 pfet_cnrx $X=342060 $Y=278100 $D=646
M867 1 1 2273 102 pfet_cnrx $X=342060 $Y=321300 $D=646
M868 2344 1 1 102 pfet_cnrx $X=343220 $Y=256500 $D=646
M869 499 1 1 102 pfet_cnrx $X=343220 $Y=264900 $D=646
M870 2345 1 1 102 pfet_cnrx $X=343220 $Y=278100 $D=646
M871 1 1 1013 102 pfet_cnrx $X=343220 $Y=286500 $D=646
M872 2346 1 1 102 pfet_cnrx $X=343220 $Y=307900 $D=646
M873 469 1 1 102 pfet_cnrx $X=344380 $Y=297200 $D=646
M874 1 1 627 102 pfet_cnrx $X=344380 $Y=321300 $D=646
M875 628 1 1 102 pfet_cnrx $X=344380 $Y=329600 $D=646
M876 2200 1 1 102 pfet_cnrx $X=345540 $Y=332100 $D=646
M877 2381 1 1 102 pfet_cnrx $X=346700 $Y=286500 $D=646
M878 1991 1 1 102 pfet_cnrx $X=346700 $Y=297200 $D=646
M879 1 1 1 102 pfet_cnrx $X=346700 $Y=329700 $D=646
M880 1 1 2349 102 pfet_cnrx $X=346700 $Y=310500 $D=646
M881 1 1 1 102 pfet_cnrx $X=347860 $Y=267300 $D=646
M882 493 1 1 102 pfet_cnrx $X=347860 $Y=321300 $D=646
M883 1 1 2382 102 pfet_cnrx $X=347860 $Y=264900 $D=646
M884 1 1 1 102 pfet_cnrx $X=349020 $Y=267300 $D=646
M885 1 1 2345 102 pfet_cnrx $X=349020 $Y=278100 $D=646
M886 1 1 1 102 pfet_cnrx $X=350180 $Y=278100 $D=646
M887 1 1 502 102 pfet_cnrx $X=350180 $Y=297200 $D=646
M888 1 1 1 102 pfet_cnrx $X=350180 $Y=329700 $D=646
M889 1 1 516 102 pfet_cnrx $X=350180 $Y=256500 $D=646
M890 1 1 2391 102 pfet_cnrx $X=350180 $Y=288900 $D=646
M891 1 1 2350 102 pfet_cnrx $X=350180 $Y=299700 $D=646
M892 1 1 2351 102 pfet_cnrx $X=350180 $Y=318800 $D=646
M893 1 1 1 102 pfet_cnrx $X=351340 $Y=256500 $D=646
M894 1 1 1 102 pfet_cnrx $X=351340 $Y=332100 $D=646
M895 38 1 1 102 pfet_cnrx $X=352500 $Y=288900 $D=646
M896 1 1 629 102 pfet_cnrx $X=352500 $Y=329600 $D=646
M897 1 1 510 102 pfet_cnrx $X=352500 $Y=267300 $D=646
M898 1 1 2381 102 pfet_cnrx $X=352500 $Y=286500 $D=646
M899 630 1 1 102 pfet_cnrx $X=353660 $Y=310500 $D=646
M900 2352 1 1 102 pfet_cnrx $X=353660 $Y=267300 $D=646
M901 2228 1 1 102 pfet_cnrx $X=354820 $Y=275700 $D=646
M902 515 1 1 102 pfet_cnrx $X=354820 $Y=286500 $D=646
M903 1 1 507 102 pfet_cnrx $X=354820 $Y=278100 $D=646
M904 1 1 1 102 pfet_cnrx $X=355980 $Y=256500 $D=646
M905 1752 1 1 102 pfet_cnrx $X=355980 $Y=264900 $D=646
M906 1 1 1 102 pfet_cnrx $X=355980 $Y=278100 $D=646
M907 1 1 1992 102 pfet_cnrx $X=355980 $Y=288900 $D=646
M908 1993 1 1 102 pfet_cnrx $X=355980 $Y=310500 $D=646
M909 1997 1 1 102 pfet_cnrx $X=355980 $Y=332100 $D=646
M910 1 1 2353 102 pfet_cnrx $X=355980 $Y=308000 $D=646
M911 1 1 473 102 pfet_cnrx $X=357140 $Y=297300 $D=646
M912 1 1 1018 102 pfet_cnrx $X=358300 $Y=267300 $D=646
M913 1 1 518 102 pfet_cnrx $X=358300 $Y=278100 $D=646
M914 2001 1 1 102 pfet_cnrx $X=358300 $Y=286400 $D=646
M915 631 1 1 102 pfet_cnrx $X=358300 $Y=288900 $D=646
M916 1 1 1 102 pfet_cnrx $X=359460 $Y=267300 $D=646
M917 1 1 1 102 pfet_cnrx $X=359460 $Y=278100 $D=646
M918 1 1 1 102 pfet_cnrx $X=360620 $Y=288900 $D=646
M919 1021 1 1 102 pfet_cnrx $X=360620 $Y=297300 $D=646
M920 1 1 1 102 pfet_cnrx $X=361780 $Y=288900 $D=646
M921 1 1 183 102 pfet_cnrx $X=361780 $Y=318900 $D=646
M922 1 1 2354 102 pfet_cnrx $X=362940 $Y=275500 $D=646
M923 2355 1 1 102 pfet_cnrx $X=362940 $Y=286300 $D=646
M924 1 1 513 102 pfet_cnrx $X=364100 $Y=288900 $D=646
M925 1 1 184 102 pfet_cnrx $X=364100 $Y=329700 $D=646
M926 1 1 1 102 pfet_cnrx $X=365260 $Y=278100 $D=646
M927 2356 1 1 102 pfet_cnrx $X=365260 $Y=264800 $D=646
M928 1 1 1 102 pfet_cnrx $X=366420 $Y=278100 $D=646
M929 511 1 1 102 pfet_cnrx $X=367580 $Y=275600 $D=646
M930 1 1 598 102 pfet_cnrx $X=368740 $Y=318800 $D=646
M931 1 1 2355 102 pfet_cnrx $X=368740 $Y=286300 $D=646
M932 1 1 1016 102 pfet_cnrx $X=369900 $Y=264800 $D=646
M933 2002 1 1 102 pfet_cnrx $X=369900 $Y=275600 $D=646
M934 1 1 1 102 pfet_cnrx $X=369900 $Y=278100 $D=646
M935 1 1 1 102 pfet_cnrx $X=369900 $Y=286500 $D=646
M936 1 1 1 102 pfet_cnrx $X=371060 $Y=278100 $D=646
M937 1 1 86 102 pfet_cnrx $X=371060 $Y=318900 $D=646
M938 1 1 3031 102 pfet_cnrx $X=373380 $Y=288900 $D=646
M939 1754 1 1 102 pfet_cnrx $X=374540 $Y=286500 $D=646
M940 1 1 712 102 pfet_cnrx $X=378020 $Y=267300 $D=646
M941 1 1 1 102 pfet_cnrx $X=379180 $Y=256500 $D=646
M942 1 1 1 102 pfet_cnrx $X=379180 $Y=278100 $D=646
M943 1 1 112 102 pfet_cnrx $X=379180 $Y=286400 $D=646
M944 1 1 50 102 pfet_cnrx $X=381500 $Y=256500 $D=646
M945 1 1 1 102 pfet_cnrx $X=381500 $Y=288900 $D=646
M946 1 1 523 102 pfet_cnrx $X=381500 $Y=297300 $D=646
M947 1 1 363 102 pfet_cnrx $X=381500 $Y=332100 $D=646
M948 1 1 1 102 pfet_cnrx $X=382660 $Y=310500 $D=646
M949 2202 1 1 102 pfet_cnrx $X=383820 $Y=297300 $D=646
M950 1099 1 1 102 pfet_cnrx $X=384980 $Y=332100 $D=646
M951 2358 1 1 102 pfet_cnrx $X=389620 $Y=297100 $D=646
M952 2359 1 1 102 pfet_cnrx $X=389620 $Y=299700 $D=646
M953 1 1 713 102 pfet_cnrx $X=396580 $Y=318900 $D=646
M954 2360 1 1 102 pfet_cnrx $X=398900 $Y=299700 $D=646
M955 1 1 504 102 pfet_cnrx $X=402380 $Y=275700 $D=646
M956 1037 1 1 102 pfet_cnrx $X=403540 $Y=264800 $D=646
M957 1 1 81 102 pfet_cnrx $X=405860 $Y=267300 $D=646
M958 1 1 1 102 pfet_cnrx $X=405860 $Y=321300 $D=646
M959 1 1 714 102 pfet_cnrx $X=407020 $Y=278100 $D=646
M960 1 1 863 102 pfet_cnrx $X=407020 $Y=299700 $D=646
M961 1759 1 1 102 pfet_cnrx $X=408180 $Y=256500 $D=646
M962 525 1 1 102 pfet_cnrx $X=408180 $Y=267300 $D=646
M963 1 1 1 102 pfet_cnrx $X=408180 $Y=321300 $D=646
M964 1 1 89 102 pfet_cnrx $X=409340 $Y=278100 $D=646
M965 1 1 173 102 pfet_cnrx $X=409340 $Y=288900 $D=646
M966 1 1 2361 102 pfet_cnrx $X=410500 $Y=264800 $D=646
M967 1 1 804 102 pfet_cnrx $X=410500 $Y=275700 $D=646
M968 1039 1 1 102 pfet_cnrx $X=410500 $Y=299700 $D=646
M969 1 1 1038 102 pfet_cnrx $X=410500 $Y=308100 $D=646
M970 1 1 632 102 pfet_cnrx $X=411660 $Y=288900 $D=646
M971 1 1 113 102 pfet_cnrx $X=411660 $Y=332100 $D=646
M972 1 1 582 102 pfet_cnrx $X=412820 $Y=256500 $D=646
M973 1 1 1912 102 pfet_cnrx $X=412820 $Y=267300 $D=646
M974 1 1 1 102 pfet_cnrx $X=413980 $Y=288900 $D=646
M975 1 1 2275 102 pfet_cnrx $X=413980 $Y=297200 $D=646
M976 2204 1 1 102 pfet_cnrx $X=413980 $Y=308100 $D=646
M977 2362 1 1 102 pfet_cnrx $X=416300 $Y=310500 $D=646
M978 2205 1 1 102 pfet_cnrx $X=417460 $Y=286400 $D=646
M979 1 1 715 102 pfet_cnrx $X=420940 $Y=318900 $D=646
M980 1 1 2008 102 pfet_cnrx $X=423260 $Y=308100 $D=646
M981 2207 1 1 102 pfet_cnrx $X=423260 $Y=318900 $D=646
M982 1 1 779 102 pfet_cnrx $X=424420 $Y=267300 $D=646
M983 1 1 529 102 pfet_cnrx $X=426740 $Y=267300 $D=646
M984 1 1 781 102 pfet_cnrx $X=430220 $Y=275700 $D=646
M985 1 1 2276 102 pfet_cnrx $X=431380 $Y=264900 $D=646
M986 1765 1 1 102 pfet_cnrx $X=431380 $Y=308100 $D=646
M987 1 1 2364 102 pfet_cnrx $X=431380 $Y=286300 $D=646
M988 1 1 1103 102 pfet_cnrx $X=434860 $Y=256500 $D=646
M989 1 1 193 102 pfet_cnrx $X=434860 $Y=267300 $D=646
M990 1 1 1104 102 pfet_cnrx $X=436020 $Y=288900 $D=646
M991 1 1 783 102 pfet_cnrx $X=436020 $Y=310500 $D=646
M992 1 1 716 102 pfet_cnrx $X=436020 $Y=321300 $D=646
M993 1768 1 1 102 pfet_cnrx $X=437180 $Y=264900 $D=646
M994 1 1 633 102 pfet_cnrx $X=437180 $Y=267300 $D=646
M995 2248 1 1 102 pfet_cnrx $X=437180 $Y=275700 $D=646
M996 1 1 1 102 pfet_cnrx $X=438340 $Y=256500 $D=646
M997 1 1 1 102 pfet_cnrx $X=438340 $Y=267300 $D=646
M998 1 1 1 102 pfet_cnrx $X=438340 $Y=278100 $D=646
M999 1 1 1 102 pfet_cnrx $X=438340 $Y=288900 $D=646
M1000 1 1 1 102 pfet_cnrx $X=438340 $Y=299700 $D=646
M1001 1 1 546 102 pfet_cnrx $X=438340 $Y=310500 $D=646
M1002 1 1 1 102 pfet_cnrx $X=438340 $Y=321300 $D=646
M1003 1 1 1 102 pfet_cnrx $X=438340 $Y=332100 $D=646
M1004 1 1 717 102 pfet_cnrx $X=441820 $Y=297300 $D=646
M1005 837 1 1 102 pfet_cnrx $X=444140 $Y=275700 $D=646
M1006 1 1 1 102 pfet_cnrx $X=445300 $Y=297300 $D=646
M1007 1 1 787 102 pfet_cnrx $X=446460 $Y=329700 $D=646
M1008 1770 1 1 102 pfet_cnrx $X=448780 $Y=256500 $D=646
M1009 2249 1 1 102 pfet_cnrx $X=448780 $Y=299700 $D=646
M1010 1 1 1 102 pfet_cnrx $X=448780 $Y=310500 $D=646
M1011 1 1 1 102 pfet_cnrx $X=448780 $Y=332100 $D=646
M1012 2365 1 1 102 pfet_cnrx $X=448780 $Y=288900 $D=646
M1013 542 1 1 102 pfet_cnrx $X=449940 $Y=267300 $D=646
M1014 1 1 1 102 pfet_cnrx $X=449940 $Y=321300 $D=646
M1015 548 1 1 102 pfet_cnrx $X=449940 $Y=329700 $D=646
M1016 552 1 1 102 pfet_cnrx $X=451100 $Y=264800 $D=646
M1017 1 1 1 102 pfet_cnrx $X=452260 $Y=297300 $D=646
M1018 1 1 1 102 pfet_cnrx $X=452260 $Y=310500 $D=646
M1019 1 1 155 102 pfet_cnrx $X=452260 $Y=318800 $D=646
M1020 1 1 586 102 pfet_cnrx $X=453420 $Y=275700 $D=646
M1021 1 1 1 102 pfet_cnrx $X=453420 $Y=286500 $D=646
M1022 1 1 1045 102 pfet_cnrx $X=453420 $Y=288900 $D=646
M1023 1 1 1 102 pfet_cnrx $X=453420 $Y=310500 $D=646
M1024 1 1 99 102 pfet_cnrx $X=453420 $Y=321300 $D=646
M1025 1 1 1 102 pfet_cnrx $X=453420 $Y=329500 $D=646
M1026 561 1 1 102 pfet_cnrx $X=454580 $Y=329600 $D=646
M1027 1 1 550 102 pfet_cnrx $X=454580 $Y=332100 $D=646
M1028 539 1 1 102 pfet_cnrx $X=455740 $Y=278100 $D=646
M1029 1 1 1 102 pfet_cnrx $X=455740 $Y=297300 $D=646
M1030 2375 1 1 102 pfet_cnrx $X=455740 $Y=321300 $D=646
M1031 1913 1 1 102 pfet_cnrx $X=455740 $Y=332100 $D=646
M1032 1 1 1 102 pfet_cnrx $X=456900 $Y=297300 $D=646
M1033 1 1 1 102 pfet_cnrx $X=456900 $Y=308100 $D=646
M1034 1 1 545 102 pfet_cnrx $X=456900 $Y=318800 $D=646
M1035 1 1 2371 102 pfet_cnrx $X=458060 $Y=264800 $D=646
M1036 1 1 1 102 pfet_cnrx $X=458060 $Y=278100 $D=646
M1037 560 1 1 102 pfet_cnrx $X=458060 $Y=286500 $D=646
M1038 1 1 1 102 pfet_cnrx $X=458060 $Y=288900 $D=646
M1039 2208 1 1 102 pfet_cnrx $X=458060 $Y=310500 $D=646
M1040 1 1 1 102 pfet_cnrx $X=459220 $Y=278100 $D=646
M1041 1 1 1 102 pfet_cnrx $X=460380 $Y=297300 $D=646
M1042 1 1 382 102 pfet_cnrx $X=460380 $Y=332100 $D=646
M1043 1 1 532 102 pfet_cnrx $X=461540 $Y=267300 $D=646
M1044 1 1 634 102 pfet_cnrx $X=461540 $Y=278100 $D=646
M1045 555 1 1 102 pfet_cnrx $X=461540 $Y=297200 $D=646
M1046 1778 1 1 102 pfet_cnrx $X=461540 $Y=308100 $D=646
M1047 1 1 1 102 pfet_cnrx $X=461540 $Y=332100 $D=646
M1048 1776 1 1 102 pfet_cnrx $X=461540 $Y=299700 $D=646
M1049 1780 1 1 102 pfet_cnrx $X=462700 $Y=275700 $D=646
M1050 556 1 1 102 pfet_cnrx $X=462700 $Y=278100 $D=646
M1051 1 1 1 102 pfet_cnrx $X=462700 $Y=288900 $D=646
M1052 1 1 2372 102 pfet_cnrx $X=462700 $Y=286400 $D=646
M1053 1 1 1 102 pfet_cnrx $X=463860 $Y=288900 $D=646
M1054 1782 1 1 102 pfet_cnrx $X=465020 $Y=264800 $D=646
M1055 1784 1 1 102 pfet_cnrx $X=465020 $Y=267300 $D=646
M1056 1791 1 1 102 pfet_cnrx $X=465020 $Y=332100 $D=646
M1057 1 1 677 102 pfet_cnrx $X=467340 $Y=310500 $D=646
M1058 1 1 558 102 pfet_cnrx $X=467340 $Y=288900 $D=646
M1059 1 1 1 102 pfet_cnrx $X=470820 $Y=310500 $D=646
M1060 1 1 679 102 pfet_cnrx $X=478940 $Y=278100 $D=646
M1061 1 1 1 102 pfet_cnrx $X=481260 $Y=278100 $D=646
M1062 1 1 1 102 pfet_cnrx $X=565940 $Y=275700 $D=646
M1063 1 1 1 102 pfet_cnrx $X=568260 $Y=265000 $D=646
M1064 1 1 1 102 pfet_cnrx $X=568260 $Y=275800 $D=646
M1065 1 1 1 102 pfet_cnrx $X=568260 $Y=286600 $D=646
M1066 1 1 1 102 pfet_cnrx $X=568260 $Y=297400 $D=646
M1067 1 1 1 102 pfet_cnrx $X=568260 $Y=308200 $D=646
M1068 1 1 1 102 pfet_cnrx $X=568260 $Y=319000 $D=646
M1069 1 1 1 102 pfet_cnrx $X=568260 $Y=329800 $D=646
M1070 1 1 1 102 pfet_cnrx $X=575220 $Y=267300 $D=646
M1071 1 1 1 102 pfet_cnrx $X=576380 $Y=310500 $D=646
M1072 1 1 1 102 pfet_cnrx $X=576380 $Y=332100 $D=646
M1073 1 1 1 102 pfet_cnrx $X=578700 $Y=267300 $D=646
M1074 1 1 1 102 pfet_cnrx $X=578700 $Y=310500 $D=646
M1075 1 1 1 102 pfet_cnrx $X=578700 $Y=332100 $D=646
X1076 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 261400 1 0 $X=578260 $Y=255700
X1077 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 261400 0 0 $X=578260 $Y=261100
X1078 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 272200 1 0 $X=578260 $Y=266500
X1079 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 272200 0 0 $X=578260 $Y=271900
X1080 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 283000 1 0 $X=578260 $Y=277300
X1081 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 283000 0 0 $X=578260 $Y=282700
X1082 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 293800 1 0 $X=578260 $Y=288100
X1083 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 293800 0 0 $X=578260 $Y=293500
X1084 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 304600 1 0 $X=578260 $Y=298900
X1085 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 304600 0 0 $X=578260 $Y=304300
X1086 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 315400 1 0 $X=578260 $Y=309700
X1087 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 315400 0 0 $X=578260 $Y=315100
X1088 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 326200 1 0 $X=578260 $Y=320500
X1089 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 326200 0 0 $X=578260 $Y=325900
X1090 102 1 102 102 UDB116SVT24_CAPR9_1 $T=578840 337000 1 0 $X=578260 $Y=331300
X1091 102 1 102 UDB116SVT24_FILL2 $T=49880 293800 0 0 $X=49300 $Y=293500
X1092 102 1 102 UDB116SVT24_FILL2 $T=63800 272200 0 0 $X=63220 $Y=271900
X1093 102 1 102 UDB116SVT24_FILL2 $T=125280 304600 1 0 $X=124700 $Y=298900
X1094 102 1 102 UDB116SVT24_FILL2 $T=127600 304600 0 0 $X=127020 $Y=304300
X1095 102 1 102 UDB116SVT24_FILL2 $T=134560 283000 0 0 $X=133980 $Y=282700
X1096 102 1 102 UDB116SVT24_FILL2 $T=142680 283000 0 0 $X=142100 $Y=282700
X1097 102 1 102 UDB116SVT24_FILL2 $T=143840 261400 0 0 $X=143260 $Y=261100
X1098 102 1 102 UDB116SVT24_FILL2 $T=153120 315400 1 0 $X=152540 $Y=309700
X1099 102 1 102 UDB116SVT24_FILL2 $T=158920 293800 1 0 $X=158340 $Y=288100
X1100 102 1 102 UDB116SVT24_FILL2 $T=163560 304600 0 0 $X=162980 $Y=304300
X1101 102 1 102 UDB116SVT24_FILL2 $T=196040 304600 0 0 $X=195460 $Y=304300
X1102 102 1 102 UDB116SVT24_FILL2 $T=204160 326200 1 0 $X=203580 $Y=320500
X1103 102 1 102 UDB116SVT24_FILL2 $T=219240 283000 1 0 $X=218660 $Y=277300
X1104 102 1 102 UDB116SVT24_FILL2 $T=219240 326200 1 0 $X=218660 $Y=320500
X1105 102 1 102 UDB116SVT24_FILL2 $T=227360 283000 1 0 $X=226780 $Y=277300
X1106 102 1 102 UDB116SVT24_FILL2 $T=228520 272200 1 0 $X=227940 $Y=266500
X1107 102 1 102 UDB116SVT24_FILL2 $T=234320 261400 1 0 $X=233740 $Y=255700
X1108 102 1 102 UDB116SVT24_FILL2 $T=235480 293800 1 0 $X=234900 $Y=288100
X1109 102 1 102 UDB116SVT24_FILL2 $T=236640 293800 0 0 $X=236060 $Y=293500
X1110 102 1 102 UDB116SVT24_FILL2 $T=236640 315400 0 0 $X=236060 $Y=315100
X1111 102 1 102 UDB116SVT24_FILL2 $T=241280 283000 1 0 $X=240700 $Y=277300
X1112 102 1 102 UDB116SVT24_FILL2 $T=249400 272200 0 0 $X=248820 $Y=271900
X1113 102 1 102 UDB116SVT24_FILL2 $T=269120 272200 0 0 $X=268540 $Y=271900
X1114 102 1 102 UDB116SVT24_FILL2 $T=287680 283000 1 0 $X=287100 $Y=277300
X1115 102 1 102 UDB116SVT24_FILL2 $T=305080 315400 0 0 $X=304500 $Y=315100
X1116 102 1 102 UDB116SVT24_FILL2 $T=314360 326200 0 0 $X=313780 $Y=325900
X1117 102 1 102 UDB116SVT24_FILL2 $T=320160 315400 0 0 $X=319580 $Y=315100
X1118 102 1 102 UDB116SVT24_FILL2 $T=322480 293800 0 0 $X=321900 $Y=293500
X1119 102 1 102 UDB116SVT24_FILL2 $T=327120 283000 1 0 $X=326540 $Y=277300
X1120 102 1 102 UDB116SVT24_FILL2 $T=328280 272200 0 0 $X=327700 $Y=271900
X1121 102 1 102 UDB116SVT24_FILL2 $T=329440 261400 0 0 $X=328860 $Y=261100
X1122 102 1 102 UDB116SVT24_FILL2 $T=335240 304600 0 0 $X=334660 $Y=304300
X1123 102 1 102 UDB116SVT24_FILL2 $T=341040 261400 0 0 $X=340460 $Y=261100
X1124 102 1 102 UDB116SVT24_FILL2 $T=348000 261400 0 0 $X=347420 $Y=261100
X1125 102 1 102 UDB116SVT24_FILL2 $T=350320 293800 1 0 $X=349740 $Y=288100
X1126 102 1 102 UDB116SVT24_FILL2 $T=352640 283000 0 0 $X=352060 $Y=282700
X1127 102 1 102 UDB116SVT24_FILL2 $T=356120 293800 1 0 $X=355540 $Y=288100
X1128 102 1 102 UDB116SVT24_FILL2 $T=373520 293800 1 0 $X=372940 $Y=288100
X1129 102 1 102 UDB116SVT24_FILL2 $T=379320 293800 1 0 $X=378740 $Y=288100
X1130 102 1 102 UDB116SVT24_FILL2 $T=381640 293800 0 0 $X=381060 $Y=293500
X1131 102 1 102 UDB116SVT24_FILL2 $T=406000 272200 1 0 $X=405420 $Y=266500
X1132 102 1 102 UDB116SVT24_FILL2 $T=406000 326200 1 0 $X=405420 $Y=320500
X1133 102 1 102 UDB116SVT24_FILL2 $T=411800 293800 1 0 $X=411220 $Y=288100
X1134 102 1 102 UDB116SVT24_FILL2 $T=421080 315400 0 0 $X=420500 $Y=315100
X1135 102 1 102 UDB116SVT24_FILL2 $T=436160 293800 1 0 $X=435580 $Y=288100
X1136 102 1 102 UDB116SVT24_FILL2 $T=436160 326200 1 0 $X=435580 $Y=320500
X1137 102 1 102 UDB116SVT24_FILL2 $T=453560 326200 1 0 $X=452980 $Y=320500
X1138 102 1 102 UDB116SVT24_FILL2 $T=479080 283000 1 0 $X=478500 $Y=277300
X1139 102 1 102 UDB116SVT24_FILL2 $T=566080 272200 0 0 $X=565500 $Y=271900
X1140 102 1 102 UDB116SVT24_FILL2 $T=576520 315400 1 0 $X=575940 $Y=309700
X1141 102 1 102 UDB116SVT24_FILL2 $T=576520 337000 1 0 $X=575940 $Y=331300
X1142 102 UDB116SVT24_TAPSS $T=49880 261400 1 0 $X=49300 $Y=255700
X1143 102 UDB116SVT24_TAPSS $T=49880 272200 1 0 $X=49300 $Y=266500
X1144 102 UDB116SVT24_TAPSS $T=49880 283000 1 0 $X=49300 $Y=277300
X1145 102 UDB116SVT24_TAPSS $T=49880 293800 1 0 $X=49300 $Y=288100
X1146 102 UDB116SVT24_TAPSS $T=49880 304600 1 0 $X=49300 $Y=298900
X1147 102 UDB116SVT24_TAPSS $T=49880 315400 1 0 $X=49300 $Y=309700
X1148 102 UDB116SVT24_TAPSS $T=49880 326200 1 0 $X=49300 $Y=320500
X1149 102 UDB116SVT24_TAPSS $T=49880 337000 1 0 $X=49300 $Y=331300
X1150 102 UDB116SVT24_TAPSS $T=238960 261400 0 0 $X=238380 $Y=261100
X1151 102 UDB116SVT24_TAPSS $T=238960 272200 0 0 $X=238380 $Y=271900
X1152 102 UDB116SVT24_TAPSS $T=238960 283000 0 0 $X=238380 $Y=282700
X1153 102 UDB116SVT24_TAPSS $T=238960 293800 0 0 $X=238380 $Y=293500
X1154 102 UDB116SVT24_TAPSS $T=238960 304600 0 0 $X=238380 $Y=304300
X1155 102 UDB116SVT24_TAPSS $T=238960 315400 0 0 $X=238380 $Y=315100
X1156 102 UDB116SVT24_TAPSS $T=238960 326200 0 0 $X=238380 $Y=325900
X1157 102 UDB116SVT24_TAPSS $T=438480 261400 1 0 $X=437900 $Y=255700
X1158 102 UDB116SVT24_TAPSS $T=438480 272200 1 0 $X=437900 $Y=266500
X1159 102 UDB116SVT24_TAPSS $T=438480 283000 1 0 $X=437900 $Y=277300
X1160 102 UDB116SVT24_TAPSS $T=438480 293800 1 0 $X=437900 $Y=288100
X1161 102 UDB116SVT24_TAPSS $T=438480 304600 1 0 $X=437900 $Y=298900
X1162 102 UDB116SVT24_TAPSS $T=438480 315400 1 0 $X=437900 $Y=309700
X1163 102 UDB116SVT24_TAPSS $T=438480 326200 1 0 $X=437900 $Y=320500
X1164 102 UDB116SVT24_TAPSS $T=438480 337000 1 0 $X=437900 $Y=331300
X1165 102 UDB116SVT24_TAPSS $T=568400 261400 0 0 $X=567820 $Y=261100
X1166 102 UDB116SVT24_TAPSS $T=568400 272200 0 0 $X=567820 $Y=271900
X1167 102 UDB116SVT24_TAPSS $T=568400 283000 0 0 $X=567820 $Y=282700
X1168 102 UDB116SVT24_TAPSS $T=568400 293800 0 0 $X=567820 $Y=293500
X1169 102 UDB116SVT24_TAPSS $T=568400 304600 0 0 $X=567820 $Y=304300
X1170 102 UDB116SVT24_TAPSS $T=568400 315400 0 0 $X=567820 $Y=315100
X1171 102 UDB116SVT24_TAPSS $T=568400 326200 0 0 $X=567820 $Y=325900
X1288 102 1 102 UDB116SVT24_FILL3 $T=49880 326200 0 0 $X=49300 $Y=325900
X1289 102 1 102 UDB116SVT24_FILL3 $T=114840 283000 0 0 $X=114260 $Y=282700
X1290 102 1 102 UDB116SVT24_FILL3 $T=129920 293800 1 0 $X=129340 $Y=288100
X1291 102 1 102 UDB116SVT24_FILL3 $T=134560 326200 0 0 $X=133980 $Y=325900
X1292 102 1 102 UDB116SVT24_FILL3 $T=157760 326200 1 0 $X=157180 $Y=320500
X1293 102 1 102 UDB116SVT24_FILL3 $T=165880 337000 1 0 $X=165300 $Y=331300
X1294 102 1 102 UDB116SVT24_FILL3 $T=170520 283000 1 0 $X=169940 $Y=277300
X1295 102 1 102 UDB116SVT24_FILL3 $T=204160 272200 0 0 $X=203580 $Y=271900
X1296 102 1 102 UDB116SVT24_FILL3 $T=212280 326200 1 0 $X=211700 $Y=320500
X1297 102 1 102 UDB116SVT24_FILL3 $T=220400 337000 1 0 $X=219820 $Y=331300
X1298 102 1 102 UDB116SVT24_FILL3 $T=226200 293800 1 0 $X=225620 $Y=288100
X1299 102 1 102 UDB116SVT24_FILL3 $T=247080 272200 1 0 $X=246500 $Y=266500
X1300 102 1 102 UDB116SVT24_FILL3 $T=249400 283000 0 0 $X=248820 $Y=282700
X1301 102 1 102 UDB116SVT24_FILL3 $T=251720 261400 1 0 $X=251140 $Y=255700
X1302 102 1 102 UDB116SVT24_FILL3 $T=258680 304600 0 0 $X=258100 $Y=304300
X1303 102 1 102 UDB116SVT24_FILL3 $T=267960 272200 1 0 $X=267380 $Y=266500
X1304 102 1 102 UDB116SVT24_FILL3 $T=273760 337000 1 0 $X=273180 $Y=331300
X1305 102 1 102 UDB116SVT24_FILL3 $T=281880 283000 0 0 $X=281300 $Y=282700
X1306 102 1 102 UDB116SVT24_FILL3 $T=281880 293800 0 0 $X=281300 $Y=293500
X1307 102 1 102 UDB116SVT24_FILL3 $T=290000 272200 1 0 $X=289420 $Y=266500
X1308 102 1 102 UDB116SVT24_FILL3 $T=293480 272200 0 0 $X=292900 $Y=271900
X1309 102 1 102 UDB116SVT24_FILL3 $T=300440 283000 1 0 $X=299860 $Y=277300
X1310 102 1 102 UDB116SVT24_FILL3 $T=302760 304600 1 0 $X=302180 $Y=298900
X1311 102 1 102 UDB116SVT24_FILL3 $T=309720 272200 1 0 $X=309140 $Y=266500
X1312 102 1 102 UDB116SVT24_FILL3 $T=319000 304600 0 0 $X=318420 $Y=304300
X1313 102 1 102 UDB116SVT24_FILL3 $T=321320 326200 1 0 $X=320740 $Y=320500
X1314 102 1 102 UDB116SVT24_FILL3 $T=327120 283000 0 0 $X=326540 $Y=282700
X1315 102 1 102 UDB116SVT24_FILL3 $T=328280 315400 0 0 $X=327700 $Y=315100
X1316 102 1 102 UDB116SVT24_FILL3 $T=330600 315400 1 0 $X=330020 $Y=309700
X1317 102 1 102 UDB116SVT24_FILL3 $T=334080 293800 1 0 $X=333500 $Y=288100
X1318 102 1 102 UDB116SVT24_FILL3 $T=336400 261400 1 0 $X=335820 $Y=255700
X1319 102 1 102 UDB116SVT24_FILL3 $T=337560 337000 1 0 $X=336980 $Y=331300
X1320 102 1 102 UDB116SVT24_FILL3 $T=343360 283000 0 0 $X=342780 $Y=282700
X1321 102 1 102 UDB116SVT24_FILL3 $T=344520 326200 1 0 $X=343940 $Y=320500
X1322 102 1 102 UDB116SVT24_FILL3 $T=346840 326200 0 0 $X=346260 $Y=325900
X1323 102 1 102 UDB116SVT24_FILL3 $T=357280 293800 0 0 $X=356700 $Y=293500
X1324 102 1 102 UDB116SVT24_FILL3 $T=375840 283000 1 0 $X=375260 $Y=277300
X1325 102 1 102 UDB116SVT24_FILL3 $T=381640 337000 1 0 $X=381060 $Y=331300
X1326 102 1 102 UDB116SVT24_FILL3 $T=407160 304600 1 0 $X=406580 $Y=298900
X1327 102 1 102 UDB116SVT24_FILL3 $T=410640 304600 0 0 $X=410060 $Y=304300
X1328 102 1 102 UDB116SVT24_FILL3 $T=430360 272200 0 0 $X=429780 $Y=271900
X1329 102 1 102 UDB116SVT24_FILL3 $T=435000 261400 1 0 $X=434420 $Y=255700
X1330 102 1 102 UDB116SVT24_FILL3 $T=441960 293800 0 0 $X=441380 $Y=293500
X1331 102 1 102 UDB116SVT24_FILL3 $T=446600 326200 0 0 $X=446020 $Y=325900
X1332 102 1 102 UDB116SVT24_FILL3 $T=453560 272200 0 0 $X=452980 $Y=271900
X1333 102 1 102 UDB116SVT24_FILL3 $T=467480 315400 1 0 $X=466900 $Y=309700
X1334 102 1 102 UDB116SVT24_FILL3 $T=575360 272200 1 0 $X=574780 $Y=266500
X1335 102 1 102 UDB116SVT24_FILL12 $T=432680 315400 0 0 $X=432100 $Y=315100
X1336 102 1 102 UDB116SVT24_FILL12 $T=554480 283000 0 0 $X=553900 $Y=282700
X1337 102 1 102 UDB116SVT24_FILL12 $T=562600 315400 1 0 $X=562020 $Y=309700
X1338 102 1 102 UDB116SVT24_FILL12 $T=562600 337000 1 0 $X=562020 $Y=331300
X1339 102 1 102 UDB116SVT24_FILL12 $T=563760 261400 1 0 $X=563180 $Y=255700
X1340 102 1 102 UDB116SVT24_FILL6 $T=489520 315400 1 0 $X=488940 $Y=309700
X1341 102 1 102 UDB116SVT24_FILL6 $T=561440 315400 0 0 $X=560860 $Y=315100
X1342 102 1 102 UDB116SVT24_FILL16 $T=470960 315400 1 0 $X=470380 $Y=309700
X1343 102 1 102 UDB116SVT24_FILL16 $T=503440 304600 1 0 $X=502860 $Y=298900
X1344 102 1 102 UDB116SVT24_FILL16 $T=517360 293800 1 0 $X=516780 $Y=288100
X1345 102 1 102 UDB116SVT24_FILL16 $T=540560 304600 0 0 $X=539980 $Y=304300
X1346 102 1 102 UDB116SVT24_FILL16 $T=542880 315400 0 0 $X=542300 $Y=315100
X1347 102 1 102 UDB116SVT24_FILL16 $T=544040 293800 0 0 $X=543460 $Y=293500
X1348 102 1 102 UDB116SVT24_FILL16 $T=544040 315400 1 0 $X=543460 $Y=309700
X1349 102 1 102 UDB116SVT24_FILL16 $T=544040 326200 0 0 $X=543460 $Y=325900
X1350 102 1 102 UDB116SVT24_FILL16 $T=544040 337000 1 0 $X=543460 $Y=331300
X1351 102 1 102 UDB116SVT24_FILL16 $T=545200 261400 1 0 $X=544620 $Y=255700
X1352 102 1 102 UDB116SVT24_FILL16 $T=547520 272200 0 0 $X=546940 $Y=271900
X1353 102 1 102 UDB116SVT24_FILL16 $T=549840 261400 0 0 $X=549260 $Y=261100
X1354 102 1 102 UDB116SVT24_FILL16 $T=555640 283000 1 0 $X=555060 $Y=277300
X1355 102 1 102 UDB116SVT24_FILL16 $T=556800 272200 1 0 $X=556220 $Y=266500
X1356 102 1 102 UDB116SVT24_FILL8 $T=522000 304600 1 0 $X=521420 $Y=298900
X1357 102 1 102 UDB116SVT24_FILL8 $T=559120 304600 0 0 $X=558540 $Y=304300
X1358 102 1 102 UDB116SVT24_FILL32 $T=466320 304600 1 0 $X=465740 $Y=298900
X1359 102 1 102 UDB116SVT24_FILL32 $T=480240 293800 1 0 $X=479660 $Y=288100
X1360 102 1 102 UDB116SVT24_FILL32 $T=540560 326200 1 0 $X=539980 $Y=320500
X1361 102 1 102 UDB116SVT24_FILL32 $T=541720 293800 1 0 $X=541140 $Y=288100
X1362 102 1 102 UDB116SVT24_DCAP_ECOCT_16 $T=497640 315400 1 0 $X=497060 $Y=309700
X1363 102 1 102 UDB116SVT24_DCAP_ECOCT_16 $T=532440 304600 1 0 $X=531860 $Y=298900
X1364 102 1 102 UDB116SVT24_FILL64 $T=466320 304600 0 0 $X=465740 $Y=304300
X1365 102 1 102 UDB116SVT24_FILL64 $T=466320 326200 1 0 $X=465740 $Y=320500
X1366 102 1 102 UDB116SVT24_FILL64 $T=468640 315400 0 0 $X=468060 $Y=315100
X1367 102 1 102 UDB116SVT24_FILL64 $T=469800 293800 0 0 $X=469220 $Y=293500
X1368 102 1 102 UDB116SVT24_FILL64 $T=469800 326200 0 0 $X=469220 $Y=325900
X1369 102 1 102 UDB116SVT24_FILL64 $T=469800 337000 1 0 $X=469220 $Y=331300
X1370 102 1 102 UDB116SVT24_FILL64 $T=470960 261400 1 0 $X=470380 $Y=255700
X1371 102 1 102 UDB116SVT24_FILL64 $T=473280 272200 0 0 $X=472700 $Y=271900
X1372 102 1 102 UDB116SVT24_FILL64 $T=475600 261400 0 0 $X=475020 $Y=261100
X1373 102 1 102 UDB116SVT24_FILL64 $T=480240 283000 0 0 $X=479660 $Y=282700
X1374 102 1 102 UDB116SVT24_FILL64 $T=481400 283000 1 0 $X=480820 $Y=277300
X1375 102 1 102 UDB116SVT24_FILL64 $T=482560 272200 1 0 $X=481980 $Y=266500
X1376 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 261400 1 0 $X=39440 $Y=255700
X1377 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 261400 0 0 $X=39440 $Y=261100
X1378 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 272200 1 0 $X=39440 $Y=266500
X1379 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 272200 0 0 $X=39440 $Y=271900
X1380 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 283000 1 0 $X=39440 $Y=277300
X1381 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 283000 0 0 $X=39440 $Y=282700
X1382 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 293800 1 0 $X=39440 $Y=288100
X1383 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 293800 0 0 $X=39440 $Y=293500
X1384 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 304600 1 0 $X=39440 $Y=298900
X1385 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 304600 0 0 $X=39440 $Y=304300
X1386 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 315400 1 0 $X=39440 $Y=309700
X1387 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 315400 0 0 $X=39440 $Y=315100
X1388 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 326200 1 0 $X=39440 $Y=320500
X1389 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 326200 0 0 $X=39440 $Y=325900
X1390 102 1 102 102 UDB116SVT24_CAPL9_1 $T=39440 337000 1 0 $X=39440 $Y=331300
X1391 102 1 102 UDB116SVT24_FILL5 $T=441960 304600 0 0 $X=441380 $Y=304300
X1392 102 1 102 UDB116SVT24_FILL5 $T=469800 283000 1 0 $X=469220 $Y=277300
X1393 102 1 102 UDB116SVT24_FILL5 $T=535920 293800 1 0 $X=535340 $Y=288100
X1394 102 1 102 UDB116SVT24_FILL5 $T=562600 293800 0 0 $X=562020 $Y=293500
X1395 102 1 102 UDB116SVT24_FILL5 $T=562600 326200 0 0 $X=562020 $Y=325900
X1396 1 423 421 416 102 102 UDB116SVT24_NR2_MM_0P75 $T=127600 283000 1 0 $X=127020 $Y=277300
X1397 1 9 440 8 102 102 UDB116SVT24_NR2_MM_0P75 $T=174000 283000 1 180 $X=169940 $Y=282700
X1398 1 439 443 445 102 102 UDB116SVT24_NR2_MM_0P75 $T=203000 304600 0 0 $X=202420 $Y=304300
X1399 1 21 103 25 102 102 UDB116SVT24_NR2_MM_0P75 $T=208800 326200 0 0 $X=208220 $Y=325900
X1400 1 34 562 32 102 102 UDB116SVT24_NR2_MM_0P75 $T=251720 261400 0 180 $X=247660 $Y=255700
X1401 1 506 510 513 102 102 UDB116SVT24_NR2_MM_0P75 $T=349160 272200 1 0 $X=348580 $Y=266500
X1402 1 546 548 99 102 102 UDB116SVT24_NR2_MM_0P75 $T=453560 326200 1 180 $X=449500 $Y=325900
X1403 1 559 558 96 102 102 UDB116SVT24_NR2_MM_0P75 $T=464000 293800 1 0 $X=463420 $Y=288100
X1404 11 296 1 963 2302 295 102 102 UDB116SVT24_AOI21_MM_1 $T=179800 283000 1 180 $X=174580 $Y=282700
X1405 21 25 1 447 2305 979 102 102 UDB116SVT24_AOI21_MM_1 $T=211120 315400 0 0 $X=210540 $Y=315100
X1406 521 565 1 1029 2357 525 102 102 UDB116SVT24_AOI21_MM_1 $T=374680 272200 0 0 $X=374100 $Y=271900
X1407 529 90 1 534 2363 632 102 102 UDB116SVT24_AOI21_MM_1 $T=426880 261400 1 180 $X=421660 $Y=261100
X1408 94 96 1 541 2369 539 102 102 UDB116SVT24_AOI21_MM_1 $T=454720 283000 0 180 $X=449500 $Y=277300
X1409 100 1046 1 379 2375 545 102 102 UDB116SVT24_AOI21_MM_1 $T=455880 326200 1 0 $X=455300 $Y=320500
X1410 102 1 102 UDB116SVT24_FILL4 $T=129920 337000 1 0 $X=129340 $Y=331300
X1411 102 1 102 UDB116SVT24_FILL4 $T=170520 293800 1 0 $X=169940 $Y=288100
X1412 102 1 102 UDB116SVT24_FILL4 $T=179800 283000 0 0 $X=179220 $Y=282700
X1413 102 1 102 UDB116SVT24_FILL4 $T=215760 315400 0 0 $X=215180 $Y=315100
X1414 102 1 102 UDB116SVT24_FILL4 $T=243600 261400 1 0 $X=243020 $Y=255700
X1415 102 1 102 UDB116SVT24_FILL4 $T=274920 304600 0 0 $X=274340 $Y=304300
X1416 102 1 102 UDB116SVT24_FILL4 $T=283040 337000 1 0 $X=282460 $Y=331300
X1417 102 1 102 UDB116SVT24_FILL4 $T=284200 261400 1 0 $X=283620 $Y=255700
X1418 102 1 102 UDB116SVT24_FILL4 $T=287680 326200 1 0 $X=287100 $Y=320500
X1419 102 1 102 UDB116SVT24_FILL4 $T=298120 304600 0 0 $X=297540 $Y=304300
X1420 102 1 102 UDB116SVT24_FILL4 $T=312040 261400 0 0 $X=311460 $Y=261100
X1421 102 1 102 UDB116SVT24_FILL4 $T=360760 261400 0 0 $X=360180 $Y=261100
X1422 102 1 102 UDB116SVT24_FILL4 $T=363080 272200 0 0 $X=362500 $Y=271900
X1423 102 1 102 UDB116SVT24_FILL4 $T=412960 283000 0 0 $X=412380 $Y=282700
X1424 102 1 102 UDB116SVT24_FILL4 $T=433840 337000 1 0 $X=433260 $Y=331300
X1425 102 1 102 UDB116SVT24_FILL4 $T=448920 283000 0 0 $X=448340 $Y=282700
X1426 102 1 102 UDB116SVT24_FILL4 $T=453560 293800 1 0 $X=452980 $Y=288100
X1427 102 1 102 UDB116SVT24_FILL4 $T=574200 283000 1 0 $X=573620 $Y=277300
X1428 1 433 104 6 102 102 UDB116SVT24_NR2_0P75 $T=148480 293800 0 180 $X=144420 $Y=288100
X1429 1 71 74 492 102 102 UDB116SVT24_NR2_0P75 $T=341040 261400 1 180 $X=336980 $Y=261100
X1430 1 83 515 473 102 102 UDB116SVT24_NR2_0P75 $T=358440 283000 1 180 $X=354380 $Y=282700
X1431 1 95 99 545 102 102 UDB116SVT24_NR2_0P75 $T=450080 326200 1 0 $X=449500 $Y=320500
X1432 1 560 555 92 102 102 UDB116SVT24_NR2_0P75 $T=465160 293800 1 180 $X=461100 $Y=293500
X1433 102 9 435 8 1 102 UDB116SVT24_ND2_MM_0P75 $T=171680 272200 1 180 $X=167620 $Y=271900
X1434 102 21 563 447 1 102 UDB116SVT24_ND2_MM_0P75 $T=215760 326200 1 0 $X=215180 $Y=320500
X1435 102 30 564 28 1 102 UDB116SVT24_ND2_MM_0P75 $T=236640 315400 1 180 $X=232580 $Y=315100
X1436 102 65 477 66 1 102 UDB116SVT24_ND2_MM_0P75 $T=319000 261400 1 0 $X=318420 $Y=255700
X1437 102 513 517 520 1 102 UDB116SVT24_ND2_MM_0P75 $T=366560 283000 1 0 $X=365980 $Y=277300
X1438 102 77 565 88 1 102 UDB116SVT24_ND2_MM_0P75 $T=375840 293800 1 0 $X=375260 $Y=288100
X1439 102 532 531 89 1 102 UDB116SVT24_ND2_MM_0P75 $T=437320 272200 1 180 $X=433260 $Y=271900
X1440 102 97 557 543 1 102 UDB116SVT24_ND2_MM_0P75 $T=448920 315400 1 0 $X=448340 $Y=309700
X1441 102 536 566 94 1 102 UDB116SVT24_ND2_MM_0P75 $T=452400 293800 0 0 $X=451820 $Y=293500
X1442 102 101 559 94 1 102 UDB116SVT24_ND2_MM_0P75 $T=457040 293800 0 0 $X=456460 $Y=293500
X1443 102 552 567 94 1 102 UDB116SVT24_ND2_MM_0P75 $T=461680 272200 1 0 $X=461100 $Y=266500
X1444 102 548 100 561 1 102 UDB116SVT24_ND2_MM_0P75 $T=461680 337000 1 0 $X=461100 $Y=331300
X1445 447 23 446 102 976 563 1 102 UDB116SVT24_OAI31_1 $T=212280 326200 0 180 $X=205900 $Y=320500
X1446 525 50 88 102 367 1037 1 102 UDB116SVT24_OAI31_1 $T=408320 261400 0 180 $X=401940 $Y=255700
X1447 1045 536 94 102 97 566 1 102 UDB116SVT24_OAI31_1 $T=445440 293800 0 0 $X=444860 $Y=293500
X1448 94 539 535 102 381 567 1 102 UDB116SVT24_OAI31_1 $T=465160 261400 1 180 $X=458780 $Y=261100
X1449 601 1703 1 102 568 102 UDB116SVT24_BUF_L_1 $T=49880 304600 0 0 $X=49300 $Y=304300
X1450 602 1706 1 102 105 102 UDB116SVT24_BUF_L_1 $T=56840 283000 0 0 $X=56260 $Y=282700
X1451 411 1709 1 102 569 102 UDB116SVT24_BUF_L_1 $T=56840 315400 0 0 $X=56260 $Y=315100
X1452 808 1711 1 102 570 102 UDB116SVT24_BUF_L_1 $T=60320 272200 1 0 $X=59740 $Y=266500
X1453 839 1714 1 102 571 102 UDB116SVT24_BUF_L_1 $T=60320 326200 0 0 $X=59740 $Y=325900
X1454 251 1716 1 102 106 102 UDB116SVT24_BUF_L_1 $T=60320 337000 1 0 $X=59740 $Y=331300
X1455 568 1719 1 102 572 102 UDB116SVT24_BUF_L_1 $T=73080 272200 0 0 $X=72500 $Y=271900
X1456 272 1722 1 102 107 102 UDB116SVT24_BUF_L_1 $T=136880 315400 1 0 $X=136300 $Y=309700
X1457 294 1725 1 102 573 102 UDB116SVT24_BUF_L_1 $T=174000 261400 0 0 $X=173420 $Y=261100
X1458 970 1728 1 102 108 102 UDB116SVT24_BUF_L_1 $T=199520 272200 0 0 $X=198940 $Y=271900
X1459 700 1730 1 102 574 102 UDB116SVT24_BUF_L_1 $T=221560 293800 1 0 $X=220980 $Y=288100
X1460 799 1732 1 102 575 102 UDB116SVT24_BUF_L_1 $T=228520 315400 0 0 $X=227940 $Y=315100
X1461 312 1734 1 102 576 102 UDB116SVT24_BUF_L_1 $T=234320 272200 0 0 $X=233740 $Y=271900
X1462 314 1736 1 102 577 102 UDB116SVT24_BUF_L_1 $T=234320 326200 0 0 $X=233740 $Y=325900
X1463 317 1738 1 102 578 102 UDB116SVT24_BUF_L_1 $T=238960 261400 1 0 $X=238380 $Y=255700
X1464 578 1740 1 102 109 102 UDB116SVT24_BUF_L_1 $T=242440 272200 1 0 $X=241860 $Y=266500
X1465 319 1741 1 102 110 102 UDB116SVT24_BUF_L_1 $T=249400 261400 0 0 $X=248820 $Y=261100
X1466 704 1743 1 102 579 102 UDB116SVT24_BUF_L_1 $T=249400 293800 0 0 $X=248820 $Y=293500
X1467 346 1746 1 102 580 102 UDB116SVT24_BUF_L_1 $T=319000 261400 0 0 $X=318420 $Y=261100
X1468 619 1749 1 102 111 102 UDB116SVT24_BUF_L_1 $T=325960 304600 1 0 $X=325380 $Y=298900
X1469 820 1752 1 102 581 102 UDB116SVT24_BUF_L_1 $T=356120 261400 0 0 $X=355540 $Y=261100
X1470 1028 1754 1 102 112 102 UDB116SVT24_BUF_L_1 $T=374680 283000 0 0 $X=374100 $Y=282700
X1471 369 1757 1 102 113 102 UDB116SVT24_BUF_L_1 $T=407160 337000 1 0 $X=406580 $Y=331300
X1472 613 1759 1 102 582 102 UDB116SVT24_BUF_L_1 $T=408320 261400 1 0 $X=407740 $Y=255700
X1473 370 1762 1 102 114 102 UDB116SVT24_BUF_L_1 $T=411800 326200 0 0 $X=411220 $Y=325900
X1474 1040 1765 1 102 583 102 UDB116SVT24_BUF_L_1 $T=431520 304600 0 0 $X=430940 $Y=304300
X1475 376 1768 1 102 584 102 UDB116SVT24_BUF_L_1 $T=437320 261400 0 0 $X=436740 $Y=261100
X1476 378 1770 1 102 585 102 UDB116SVT24_BUF_L_1 $T=448920 261400 1 0 $X=448340 $Y=255700
X1477 722 1773 1 102 586 102 UDB116SVT24_BUF_L_1 $T=448920 272200 0 0 $X=448340 $Y=271900
X1478 633 1774 1 102 532 102 UDB116SVT24_BUF_L_1 $T=457040 272200 1 0 $X=456460 $Y=266500
X1479 717 1776 1 102 587 102 UDB116SVT24_BUF_L_1 $T=461680 304600 1 0 $X=461100 $Y=298900
X1480 546 1778 1 102 528 102 UDB116SVT24_BUF_L_1 $T=461680 304600 0 0 $X=461100 $Y=304300
X1481 837 1780 1 102 535 102 UDB116SVT24_BUF_L_1 $T=462840 272200 0 0 $X=462260 $Y=271900
X1482 475 1782 1 102 497 102 UDB116SVT24_BUF_L_1 $T=465160 261400 0 0 $X=464580 $Y=261100
X1483 487 1784 1 102 489 102 UDB116SVT24_BUF_L_1 $T=465160 272200 1 0 $X=464580 $Y=266500
X1484 81 1787 1 102 514 102 UDB116SVT24_BUF_L_1 $T=465160 283000 1 0 $X=464580 $Y=277300
X1485 861 1788 1 102 588 102 UDB116SVT24_BUF_L_1 $T=465160 293800 0 0 $X=464580 $Y=293500
X1486 787 1790 1 102 589 102 UDB116SVT24_BUF_L_1 $T=465160 326200 0 0 $X=464580 $Y=325900
X1487 384 1791 1 102 115 102 UDB116SVT24_BUF_L_1 $T=465160 337000 1 0 $X=464580 $Y=331300
X1488 102 1 590 898 ICV_10 $T=60320 283000 1 0 $X=59740 $Y=277300
X1489 102 1 591 941 ICV_10 $T=113680 293800 1 0 $X=113100 $Y=288100
X1490 102 1 116 742 ICV_10 $T=124120 315400 0 0 $X=123540 $Y=315100
X1491 102 1 592 641 ICV_10 $T=141520 283000 1 0 $X=140940 $Y=277300
X1492 102 1 593 849 ICV_10 $T=149640 315400 0 0 $X=149060 $Y=315100
X1493 102 1 422 287 ICV_10 $T=155440 272200 0 0 $X=154860 $Y=271900
X1494 102 1 436 696 ICV_10 $T=163560 293800 1 0 $X=162980 $Y=288100
X1495 102 1 594 814 ICV_10 $T=172840 315400 1 0 $X=172260 $Y=309700
X1496 102 1 117 298 ICV_10 $T=187920 261400 1 0 $X=187340 $Y=255700
X1497 102 1 118 748 ICV_10 $T=191400 293800 0 0 $X=190820 $Y=293500
X1498 102 1 595 972 ICV_10 $T=194880 261400 0 0 $X=194300 $Y=261100
X1499 102 1 596 980 ICV_10 $T=212280 304600 0 0 $X=211700 $Y=304300
X1500 102 1 119 326 ICV_10 $T=267960 304600 0 0 $X=267380 $Y=304300
X1501 102 1 597 845 ICV_10 $T=310880 272200 0 0 $X=310300 $Y=271900
X1502 102 1 598 803 ICV_10 $T=361920 315400 0 0 $X=361340 $Y=315100
X1503 102 1 599 360 ICV_10 $T=364240 326200 0 0 $X=363660 $Y=325900
X1504 102 1 600 1035 ICV_10 $T=396720 315400 0 0 $X=396140 $Y=315100
X1505 102 1 601 605 ICV_11 $T=61480 283000 0 0 $X=60900 $Y=282700
X1506 102 1 430 3 ICV_11 $T=64960 337000 1 0 $X=64380 $Y=331300
X1507 102 1 602 253 ICV_11 $T=66120 261400 0 0 $X=65540 $Y=261100
X1508 102 1 603 893 ICV_11 $T=67280 283000 1 0 $X=66700 $Y=277300
X1509 102 1 120 932 ICV_11 $T=74240 337000 1 0 $X=73660 $Y=331300
X1510 102 1 604 615 ICV_11 $T=76560 283000 1 0 $X=75980 $Y=277300
X1511 102 1 605 934 ICV_11 $T=83520 272200 0 0 $X=82940 $Y=271900
X1512 102 1 606 955 ICV_11 $T=143840 326200 0 0 $X=143260 $Y=325900
X1513 102 1 607 697 ICV_11 $T=180960 304600 0 0 $X=180380 $Y=304300
X1514 102 1 608 758 ICV_11 $T=198360 293800 0 0 $X=197780 $Y=293500
X1515 102 1 609 975 ICV_11 $T=201840 261400 0 0 $X=201260 $Y=261100
X1516 102 1 610 660 ICV_11 $T=242440 337000 1 0 $X=241860 $Y=331300
X1517 102 1 611 330 ICV_11 $T=277240 315400 0 0 $X=276660 $Y=315100
X1518 102 1 612 706 ICV_11 $T=293480 293800 0 0 $X=292900 $Y=293500
X1519 102 1 46 1000 ICV_11 $T=299280 272200 0 0 $X=298700 $Y=271900
X1520 102 1 500 712 ICV_11 $T=370040 261400 0 0 $X=369460 $Y=261100
X1521 102 1 613 924 ICV_11 $T=381640 261400 1 0 $X=381060 $Y=255700
X1522 102 1 614 374 ICV_11 $T=416440 326200 0 0 $X=415860 $Y=325900
X1523 102 1 121 375 ICV_11 $T=425720 326200 0 0 $X=425140 $Y=325900
X1524 102 1 412 615 102 UDB116SVT24_INV_0P75 $T=114840 283000 1 180 $X=111940 $Y=282700
X1525 102 1 416 616 102 UDB116SVT24_INV_0P75 $T=120640 283000 1 180 $X=117740 $Y=282700
X1526 102 1 419 427 102 UDB116SVT24_INV_0P75 $T=126440 272200 1 0 $X=125860 $Y=266500
X1527 102 1 424 418 102 UDB116SVT24_INV_0P75 $T=127600 304600 1 0 $X=127020 $Y=298900
X1528 102 1 425 426 102 UDB116SVT24_INV_0P75 $T=129920 315400 0 180 $X=127020 $Y=309700
X1529 102 1 421 617 102 UDB116SVT24_INV_0P75 $T=134560 283000 0 180 $X=131660 $Y=277300
X1530 102 1 429 432 102 UDB116SVT24_INV_0P75 $T=136880 261400 1 0 $X=136300 $Y=255700
X1531 102 1 431 433 102 UDB116SVT24_INV_0P75 $T=143840 293800 0 0 $X=143260 $Y=293500
X1532 102 1 435 423 102 UDB116SVT24_INV_0P75 $T=155440 272200 1 180 $X=152540 $Y=271900
X1533 102 1 437 434 102 UDB116SVT24_INV_0P75 $T=161240 293800 1 0 $X=160660 $Y=288100
X1534 102 1 440 428 102 UDB116SVT24_INV_0P75 $T=178640 304600 0 0 $X=178060 $Y=304300
X1535 102 1 441 20 102 UDB116SVT24_INV_0P75 $T=186760 283000 1 180 $X=183860 $Y=282700
X1536 102 1 12 10 102 UDB116SVT24_INV_0P75 $T=190240 326200 1 180 $X=187340 $Y=325900
X1537 102 1 14 438 102 UDB116SVT24_INV_0P75 $T=193720 315400 0 180 $X=190820 $Y=309700
X1538 102 1 17 439 102 UDB116SVT24_INV_0P75 $T=205320 315400 1 0 $X=204740 $Y=309700
X1539 102 1 26 445 102 UDB116SVT24_INV_0P75 $T=223880 337000 1 0 $X=223300 $Y=331300
X1540 102 1 27 7 102 UDB116SVT24_INV_0P75 $T=228520 315400 1 180 $X=225620 $Y=315100
X1541 102 1 25 29 102 UDB116SVT24_INV_0P75 $T=234320 337000 0 180 $X=231420 $Y=331300
X1542 102 1 31 442 102 UDB116SVT24_INV_0P75 $T=238960 261400 0 180 $X=236060 $Y=255700
X1543 102 1 33 122 102 UDB116SVT24_INV_0P75 $T=250560 326200 1 0 $X=249980 $Y=320500
X1544 102 1 457 618 102 UDB116SVT24_INV_0P75 $T=278400 261400 1 0 $X=277820 $Y=255700
X1545 102 1 458 123 102 UDB116SVT24_INV_0P75 $T=279560 315400 1 0 $X=278980 $Y=309700
X1546 102 1 43 124 102 UDB116SVT24_INV_0P75 $T=281880 261400 1 0 $X=281300 $Y=255700
X1547 102 1 459 125 102 UDB116SVT24_INV_0P75 $T=283040 304600 1 0 $X=282460 $Y=298900
X1548 102 1 460 454 102 UDB116SVT24_INV_0P75 $T=285360 293800 0 0 $X=284780 $Y=293500
X1549 102 1 44 126 102 UDB116SVT24_INV_0P75 $T=287680 272200 1 0 $X=287100 $Y=266500
X1550 102 1 461 619 102 UDB116SVT24_INV_0P75 $T=288840 272200 0 0 $X=288260 $Y=271900
X1551 102 1 45 481 102 UDB116SVT24_INV_0P75 $T=291160 315400 0 180 $X=288260 $Y=309700
X1552 102 1 46 475 102 UDB116SVT24_INV_0P75 $T=291160 272200 0 0 $X=290580 $Y=271900
X1553 102 1 47 620 102 UDB116SVT24_INV_0P75 $T=296960 272200 0 0 $X=296380 $Y=271900
X1554 102 1 464 127 102 UDB116SVT24_INV_0P75 $T=296960 315400 0 0 $X=296380 $Y=315100
X1555 102 1 51 128 102 UDB116SVT24_INV_0P75 $T=303920 326200 0 0 $X=303340 $Y=325900
X1556 102 1 52 621 102 UDB116SVT24_INV_0P75 $T=306240 304600 1 0 $X=305660 $Y=298900
X1557 102 1 53 622 102 UDB116SVT24_INV_0P75 $T=307400 272200 1 0 $X=306820 $Y=266500
X1558 102 1 57 478 102 UDB116SVT24_INV_0P75 $T=309720 315400 1 180 $X=306820 $Y=315100
X1559 102 1 55 58 102 UDB116SVT24_INV_0P75 $T=308560 261400 1 0 $X=307980 $Y=255700
X1560 102 1 56 129 102 UDB116SVT24_INV_0P75 $T=308560 272200 0 0 $X=307980 $Y=271900
X1561 102 1 59 623 102 UDB116SVT24_INV_0P75 $T=312040 293800 1 0 $X=311460 $Y=288100
X1562 102 1 60 130 102 UDB116SVT24_INV_0P75 $T=312040 326200 0 0 $X=311460 $Y=325900
X1563 102 1 63 65 102 UDB116SVT24_INV_0P75 $T=319000 261400 1 180 $X=316100 $Y=261100
X1564 102 1 64 624 102 UDB116SVT24_INV_0P75 $T=319000 304600 1 180 $X=316100 $Y=304300
X1565 102 1 62 492 102 UDB116SVT24_INV_0P75 $T=323640 272200 0 0 $X=323060 $Y=271900
X1566 102 1 68 625 102 UDB116SVT24_INV_0P75 $T=325960 304600 0 180 $X=323060 $Y=298900
X1567 102 1 67 626 102 UDB116SVT24_INV_0P75 $T=324800 283000 0 0 $X=324220 $Y=282700
X1568 102 1 69 131 102 UDB116SVT24_INV_0P75 $T=327120 326200 0 180 $X=324220 $Y=320500
X1569 102 1 482 487 102 UDB116SVT24_INV_0P75 $T=325960 272200 0 0 $X=325380 $Y=271900
X1570 102 1 72 66 102 UDB116SVT24_INV_0P75 $T=342200 261400 0 180 $X=339300 $Y=255700
X1571 102 1 501 627 102 UDB116SVT24_INV_0P75 $T=342200 326200 1 0 $X=341620 $Y=320500
X1572 102 1 500 469 102 UDB116SVT24_INV_0P75 $T=346840 293800 1 180 $X=343940 $Y=293500
X1573 102 1 76 628 102 UDB116SVT24_INV_0P75 $T=346840 326200 1 180 $X=343940 $Y=325900
X1574 102 1 78 493 102 UDB116SVT24_INV_0P75 $T=350320 326200 0 180 $X=347420 $Y=320500
X1575 102 1 79 509 102 UDB116SVT24_INV_0P75 $T=350320 293800 0 0 $X=349740 $Y=293500
X1576 102 1 512 629 102 UDB116SVT24_INV_0P75 $T=350320 326200 0 0 $X=349740 $Y=325900
X1577 102 1 81 506 102 UDB116SVT24_INV_0P75 $T=352640 293800 0 0 $X=352060 $Y=293500
X1578 102 1 82 630 102 UDB116SVT24_INV_0P75 $T=356120 315400 0 180 $X=353220 $Y=309700
X1579 102 1 75 473 102 UDB116SVT24_INV_0P75 $T=354960 293800 0 0 $X=354380 $Y=293500
X1580 102 1 515 518 102 UDB116SVT24_INV_0P75 $T=356120 283000 1 0 $X=355540 $Y=277300
X1581 102 1 84 631 102 UDB116SVT24_INV_0P75 $T=360760 293800 0 180 $X=357860 $Y=288100
X1582 102 1 504 513 102 UDB116SVT24_INV_0P75 $T=361920 293800 1 0 $X=361340 $Y=288100
X1583 102 1 85 511 102 UDB116SVT24_INV_0P75 $T=370040 272200 1 180 $X=367140 $Y=271900
X1584 102 1 87 86 102 UDB116SVT24_INV_0P75 $T=368880 315400 0 0 $X=368300 $Y=315100
X1585 102 1 77 50 102 UDB116SVT24_INV_0P75 $T=379320 261400 1 0 $X=378740 $Y=255700
X1586 102 1 525 89 102 UDB116SVT24_INV_0P75 $T=407160 283000 1 0 $X=406580 $Y=277300
X1587 102 1 91 632 102 UDB116SVT24_INV_0P75 $T=409480 293800 1 0 $X=408900 $Y=288100
X1588 102 1 527 529 102 UDB116SVT24_INV_0P75 $T=424560 272200 1 0 $X=423980 $Y=266500
X1589 102 1 92 633 102 UDB116SVT24_INV_0P75 $T=435000 272200 1 0 $X=434420 $Y=266500
X1590 102 1 533 546 102 UDB116SVT24_INV_0P75 $T=436160 315400 1 0 $X=435580 $Y=309700
X1591 102 1 553 561 102 UDB116SVT24_INV_0P75 $T=457040 326200 1 180 $X=454140 $Y=325900
X1592 102 1 101 539 102 UDB116SVT24_INV_0P75 $T=458200 283000 0 180 $X=455300 $Y=277300
X1593 102 1 96 634 102 UDB116SVT24_INV_0P75 $T=459360 283000 1 0 $X=458780 $Y=277300
X1594 102 1 558 556 102 UDB116SVT24_INV_0P75 $T=465160 283000 0 180 $X=462260 $Y=277300
X1595 61 65 2336 66 1 348 102 70 102 UDB116SVT24_OAOI211_0P75 $T=323640 261400 1 0 $X=323060 $Y=255700
X1596 791 1910 249 1 102 245 102 UDB116SVT24_OR2_0P75 $T=54520 261400 1 180 $X=49300 $Y=261100
X1597 371 1912 632 1 102 525 102 UDB116SVT24_OR2_0P75 $T=412960 272200 0 180 $X=407740 $Y=266500
X1598 561 1913 548 1 102 382 102 UDB116SVT24_OR2_0P75 $T=455880 337000 1 0 $X=455300 $Y=331300
X1599 411 616 102 937 940 1 102 UDB116SVT24_OAI21_0P75 $T=113680 293800 0 180 $X=108460 $Y=288100
X1600 411 617 102 939 942 1 102 UDB116SVT24_OAI21_0P75 $T=119480 283000 0 180 $X=114260 $Y=277300
X1601 418 616 102 264 943 1 102 UDB116SVT24_OAI21_0P75 $T=120640 293800 1 0 $X=120060 $Y=288100
X1602 426 616 102 941 944 1 102 UDB116SVT24_OAI21_0P75 $T=129920 293800 0 180 $X=124700 $Y=288100
X1603 427 617 102 946 947 1 102 UDB116SVT24_OAI21_0P75 $T=135720 272200 1 180 $X=130500 $Y=271900
X1604 426 617 102 948 949 1 102 UDB116SVT24_OAI21_0P75 $T=138040 293800 0 180 $X=132820 $Y=288100
X1605 418 617 102 945 950 1 102 UDB116SVT24_OAI21_0P75 $T=140360 304600 0 180 $X=135140 $Y=298900
X1606 432 617 102 953 951 1 102 UDB116SVT24_OAI21_0P75 $T=141520 272200 0 0 $X=140940 $Y=271900
X1607 13 10 102 960 967 1 102 UDB116SVT24_OAI21_0P75 $T=192560 272200 0 180 $X=187340 $Y=266500
X1608 13 438 102 966 971 1 102 UDB116SVT24_OAI21_0P75 $T=199520 272200 1 180 $X=194300 $Y=271900
X1609 13 445 102 978 303 1 102 UDB116SVT24_OAI21_0P75 $T=212280 293800 1 180 $X=207060 $Y=293500
X1610 20 444 102 979 16 1 102 UDB116SVT24_OAI21_0P75 $T=208800 304600 1 0 $X=208220 $Y=298900
X1611 13 22 102 980 982 1 102 UDB116SVT24_OAI21_0P75 $T=221560 293800 0 180 $X=216340 $Y=288100
X1612 13 439 102 972 983 1 102 UDB116SVT24_OAI21_0P75 $T=222720 293800 1 180 $X=217500 $Y=293500
X1613 13 4 102 977 309 1 102 UDB116SVT24_OAI21_0P75 $T=234320 272200 1 180 $X=229100 $Y=271900
X1614 29 28 102 984 564 1 102 UDB116SVT24_OAI21_0P75 $T=234320 326200 1 180 $X=229100 $Y=325900
X1615 13 5 102 975 985 1 102 UDB116SVT24_OAI21_0P75 $T=242440 272200 0 180 $X=237220 $Y=266500
X1616 489 351 102 1007 350 1 102 UDB116SVT24_OAI21_0P75 $T=335240 272200 1 180 $X=330020 $Y=271900
X1617 503 351 102 1015 354 1 102 UDB116SVT24_OAI21_0P75 $T=345680 337000 0 180 $X=340460 $Y=331300
X1618 507 500 102 357 1016 1 102 UDB116SVT24_OAI21_0P75 $T=356120 261400 0 180 $X=350900 $Y=255700
X1619 80 351 102 1017 358 1 102 UDB116SVT24_OAI21_0P75 $T=351480 337000 1 0 $X=350900 $Y=331300
X1620 72 504 102 519 1018 1 102 UDB116SVT24_OAI21_0P75 $T=359600 272200 1 0 $X=359020 $Y=266500
X1621 86 91 102 1028 1027 1 102 UDB116SVT24_OAI21_0P75 $T=370040 283000 0 0 $X=369460 $Y=282700
X1622 521 565 102 1027 1029 1 102 UDB116SVT24_OAI21_0P75 $T=371200 283000 1 0 $X=370620 $Y=277300
X1623 96 92 102 536 101 1 102 UDB116SVT24_OAI21_0P75 $T=453560 283000 0 0 $X=452980 $Y=282700
X1624 97 543 102 553 557 1 102 UDB116SVT24_OAI21_0P75 $T=453560 315400 1 0 $X=452980 $Y=309700
X1625 557 555 102 547 554 1 102 UDB116SVT24_OAI21_0P75 $T=461680 304600 1 180 $X=456460 $Y=304300
X1626 558 560 102 554 92 1 102 UDB116SVT24_OAI21_0P75 $T=462840 293800 0 180 $X=457620 $Y=288100
X1627 635 1942 102 1 132 102 UDB116SVT24_BUF_1 $T=61480 293800 1 180 $X=57420 $Y=293500
X1628 636 1944 102 1 637 102 UDB116SVT24_BUF_1 $T=60320 315400 1 0 $X=59740 $Y=309700
X1629 638 1947 102 1 639 102 UDB116SVT24_BUF_1 $T=61480 304600 0 0 $X=60900 $Y=304300
X1630 133 1950 102 1 134 102 UDB116SVT24_BUF_1 $T=66120 261400 1 0 $X=65540 $Y=255700
X1631 640 1952 102 1 641 102 UDB116SVT24_BUF_1 $T=127600 261400 1 0 $X=127020 $Y=255700
X1632 642 1954 102 1 135 102 UDB116SVT24_BUF_1 $T=127600 261400 0 0 $X=127020 $Y=261100
X1633 643 1955 102 1 640 102 UDB116SVT24_BUF_1 $T=151960 293800 0 180 $X=147900 $Y=288100
X1634 644 1957 102 1 645 102 UDB116SVT24_BUF_1 $T=170520 326200 0 180 $X=166460 $Y=320500
X1635 646 1960 102 1 647 102 UDB116SVT24_BUF_1 $T=178640 272200 1 0 $X=178060 $Y=266500
X1636 648 1963 102 1 649 102 UDB116SVT24_BUF_1 $T=184440 293800 0 180 $X=180380 $Y=288100
X1637 650 1966 102 1 651 102 UDB116SVT24_BUF_1 $T=186760 315400 1 0 $X=186180 $Y=309700
X1638 652 1967 102 1 653 102 UDB116SVT24_BUF_1 $T=201840 304600 1 180 $X=197780 $Y=304300
X1639 654 1969 102 1 655 102 UDB116SVT24_BUF_1 $T=213440 315400 1 0 $X=212860 $Y=309700
X1640 577 1971 102 1 136 102 UDB116SVT24_BUF_1 $T=227360 337000 1 0 $X=226780 $Y=331300
X1641 137 1973 102 1 138 102 UDB116SVT24_BUF_1 $T=252880 283000 0 180 $X=248820 $Y=277300
X1642 656 1975 102 1 657 102 UDB116SVT24_BUF_1 $T=249400 304600 0 0 $X=248820 $Y=304300
X1643 658 1977 102 1 659 102 UDB116SVT24_BUF_1 $T=249400 315400 0 0 $X=248820 $Y=315100
X1644 139 1979 102 1 660 102 UDB116SVT24_BUF_1 $T=249400 326200 0 0 $X=248820 $Y=325900
X1645 661 1980 102 1 662 102 UDB116SVT24_BUF_1 $T=293480 283000 0 180 $X=289420 $Y=277300
X1646 663 1982 102 1 664 102 UDB116SVT24_BUF_1 $T=301600 326200 0 180 $X=297540 $Y=320500
X1647 665 1984 102 1 140 102 UDB116SVT24_BUF_1 $T=299280 283000 0 0 $X=298700 $Y=282700
X1648 141 1985 102 1 142 102 UDB116SVT24_BUF_1 $T=320160 315400 1 180 $X=316100 $Y=315100
X1649 597 1987 102 1 143 102 UDB116SVT24_BUF_1 $T=327120 283000 0 180 $X=323060 $Y=277300
X1650 666 1989 102 1 144 102 UDB116SVT24_BUF_1 $T=327120 326200 1 0 $X=326540 $Y=320500
X1651 145 1990 102 1 503 102 UDB116SVT24_BUF_1 $T=339880 326200 0 0 $X=339300 $Y=325900
X1652 146 1991 102 1 502 102 UDB116SVT24_BUF_1 $T=346840 293800 0 0 $X=346260 $Y=293500
X1653 667 1992 102 1 38 102 UDB116SVT24_BUF_1 $T=356120 293800 0 180 $X=352060 $Y=288100
X1654 147 1993 102 1 148 102 UDB116SVT24_BUF_1 $T=356120 315400 1 0 $X=355540 $Y=309700
X1655 668 1995 102 1 149 102 UDB116SVT24_BUF_1 $T=356120 326200 1 0 $X=355540 $Y=320500
X1656 150 1997 102 1 668 102 UDB116SVT24_BUF_1 $T=356120 337000 1 0 $X=355540 $Y=331300
X1657 669 1999 102 1 670 102 UDB116SVT24_BUF_1 $T=357280 304600 1 0 $X=356700 $Y=298900
X1658 151 2001 102 1 671 102 UDB116SVT24_BUF_1 $T=358440 283000 0 0 $X=357860 $Y=282700
X1659 581 2002 102 1 672 102 UDB116SVT24_BUF_1 $T=370040 272200 0 0 $X=369460 $Y=271900
X1660 673 2004 102 1 674 102 UDB116SVT24_BUF_1 $T=411800 315400 1 0 $X=411220 $Y=309700
X1661 152 2006 102 1 153 102 UDB116SVT24_BUF_1 $T=417600 261400 0 0 $X=417020 $Y=261100
X1662 675 2008 102 1 673 102 UDB116SVT24_BUF_1 $T=423400 304600 1 180 $X=419340 $Y=304300
X1663 154 2010 102 1 676 102 UDB116SVT24_BUF_1 $T=432680 315400 1 180 $X=428620 $Y=315100
X1664 155 2013 102 1 677 102 UDB116SVT24_BUF_1 $T=464000 315400 1 0 $X=463420 $Y=309700
X1665 678 2014 102 1 679 102 UDB116SVT24_BUF_1 $T=475600 283000 1 0 $X=475020 $Y=277300
X1666 436 434 2296 423 102 1 9 416 102 UDB116SVT24_AOAI211_0P75 $T=157760 283000 1 180 $X=150220 $Y=282700
X1667 74 75 2344 72 102 1 355 516 102 UDB116SVT24_AOAI211_0P75 $T=343360 261400 1 0 $X=342780 $Y=255700
X1668 50 90 2361 632 102 1 721 1037 102 UDB116SVT24_AOAI211_0P75 $T=410640 261400 1 180 $X=403100 $Y=261100
X1669 101 92 2371 371 102 1 534 552 102 UDB116SVT24_AOAI211_0P75 $T=458200 261400 1 180 $X=450660 $Y=261100
X1670 102 1 680 250 ICV_12 $T=58000 272200 0 0 $X=57420 $Y=271900
X1671 102 1 681 840 ICV_12 $T=64960 272200 1 0 $X=64380 $Y=266500
X1672 102 1 682 571 ICV_12 $T=73080 326200 0 0 $X=72500 $Y=325900
X1673 102 1 683 931 ICV_12 $T=77720 272200 0 0 $X=77140 $Y=271900
X1674 102 1 684 682 ICV_12 $T=95120 326200 0 0 $X=94540 $Y=325900
X1675 102 1 685 689 ICV_12 $T=96280 293800 0 0 $X=95700 $Y=293500
X1676 102 1 686 690 ICV_12 $T=98600 261400 0 0 $X=98020 $Y=261100
X1677 102 1 687 591 ICV_12 $T=98600 315400 1 0 $X=98020 $Y=309700
X1678 102 1 688 841 ICV_12 $T=99760 304600 0 0 $X=99180 $Y=304300
X1679 102 1 689 937 ICV_12 $T=103240 293800 1 0 $X=102660 $Y=288100
X1680 102 1 690 939 ICV_12 $T=109040 283000 1 0 $X=108460 $Y=277300
X1681 102 1 691 265 ICV_12 $T=124120 293800 0 0 $X=123540 $Y=293500
X1682 102 1 692 912 ICV_12 $T=129920 304600 1 0 $X=129340 $Y=298900
X1683 102 1 693 269 ICV_12 $T=131080 261400 1 0 $X=130500 $Y=255700
X1684 102 1 156 275 ICV_12 $T=138040 261400 0 0 $X=137460 $Y=261100
X1685 102 1 694 739 ICV_12 $T=138040 293800 0 0 $X=137460 $Y=293500
X1686 102 1 157 278 ICV_12 $T=139200 261400 1 0 $X=138620 $Y=255700
X1687 102 1 695 952 ICV_12 $T=143840 315400 0 0 $X=143260 $Y=315100
X1688 102 1 158 959 ICV_12 $T=162400 272200 0 0 $X=161820 $Y=271900
X1689 102 1 696 743 ICV_12 $T=167040 315400 1 0 $X=166460 $Y=309700
X1690 102 1 159 573 ICV_12 $T=178640 261400 0 0 $X=178060 $Y=261100
X1691 102 1 160 965 ICV_12 $T=182120 261400 1 0 $X=181540 $Y=255700
X1692 102 1 697 698 ICV_12 $T=182120 272200 1 0 $X=181540 $Y=266500
X1693 102 1 698 966 ICV_12 $T=185600 293800 0 0 $X=185020 $Y=293500
X1694 102 1 646 299 ICV_12 $T=189080 261400 0 0 $X=188500 $Y=261100
X1695 102 1 650 969 ICV_12 $T=190240 304600 0 0 $X=189660 $Y=304300
X1696 102 1 699 977 ICV_12 $T=206480 261400 1 0 $X=205900 $Y=255700
X1697 102 1 444 757 ICV_12 $T=206480 293800 1 0 $X=205900 $Y=288100
X1698 102 1 654 978 ICV_12 $T=206480 304600 0 0 $X=205900 $Y=304300
X1699 102 1 700 974 ICV_12 $T=208800 283000 0 0 $X=208220 $Y=282700
X1700 102 1 701 596 ICV_12 $T=212280 293800 0 0 $X=211700 $Y=293500
X1701 102 1 161 306 ICV_12 $T=214600 337000 1 0 $X=214020 $Y=331300
X1702 102 1 702 981 ICV_12 $T=216920 315400 1 0 $X=216340 $Y=309700
X1703 102 1 703 984 ICV_12 $T=223880 326200 0 0 $X=223300 $Y=325900
X1704 102 1 162 311 ICV_12 $T=233160 261400 0 0 $X=232580 $Y=261100
X1705 102 1 163 315 ICV_12 $T=235480 283000 1 0 $X=234900 $Y=277300
X1706 102 1 164 659 ICV_12 $T=252880 304600 0 0 $X=252300 $Y=304300
X1707 102 1 704 989 ICV_12 $T=254040 293800 0 0 $X=253460 $Y=293500
X1708 102 1 165 817 ICV_12 $T=262160 272200 1 0 $X=261580 $Y=266500
X1709 102 1 48 993 ICV_12 $T=263320 272200 0 0 $X=262740 $Y=271900
X1710 102 1 705 328 ICV_12 $T=273760 261400 0 0 $X=273180 $Y=261100
X1711 102 1 166 766 ICV_12 $T=277240 272200 1 0 $X=276660 $Y=266500
X1712 102 1 706 662 ICV_12 $T=281880 283000 1 0 $X=281300 $Y=277300
X1713 102 1 167 819 ICV_12 $T=284200 261400 0 0 $X=283620 $Y=261100
X1714 102 1 168 768 ICV_12 $T=286520 315400 0 0 $X=285940 $Y=315100
X1715 102 1 707 576 ICV_12 $T=287680 293800 0 0 $X=287100 $Y=293500
X1716 102 1 169 857 ICV_12 $T=292320 304600 0 0 $X=291740 $Y=304300
X1717 102 1 708 765 ICV_12 $T=299280 315400 0 0 $X=298700 $Y=315100
X1718 102 1 709 769 ICV_12 $T=306240 326200 0 0 $X=305660 $Y=325900
X1719 102 1 710 821 ICV_12 $T=309720 337000 1 0 $X=309140 $Y=331300
X1720 102 1 170 580 ICV_12 $T=317840 272200 0 0 $X=317260 $Y=271900
X1721 102 1 171 858 ICV_12 $T=323640 261400 0 0 $X=323060 $Y=261100
X1722 102 1 711 347 ICV_12 $T=324800 315400 1 0 $X=324220 $Y=309700
X1723 102 1 172 618 ICV_12 $T=328280 293800 1 0 $X=327700 $Y=288100
X1724 102 1 712 922 ICV_12 $T=372360 272200 1 0 $X=371780 $Y=266500
X1725 102 1 713 599 ICV_12 $T=390920 315400 0 0 $X=390340 $Y=315100
X1726 102 1 81 835 ICV_12 $T=400200 272200 1 0 $X=399620 $Y=266500
X1727 102 1 714 1034 ICV_12 $T=401360 283000 1 0 $X=400780 $Y=277300
X1728 102 1 173 781 ICV_12 $T=403680 293800 1 0 $X=403100 $Y=288100
X1729 102 1 715 600 ICV_12 $T=415280 315400 0 0 $X=414700 $Y=315100
X1730 102 1 716 778 ICV_12 $T=430360 326200 1 0 $X=429780 $Y=320500
X1731 102 1 717 805 ICV_12 $T=436160 293800 0 0 $X=435580 $Y=293500
X1732 102 1 718 826 ICV_12 $T=436160 304600 0 0 $X=435580 $Y=304300
X1733 102 1 719 790 ICV_12 $T=443120 283000 0 0 $X=442540 $Y=282700
X1734 102 1 155 1041 ICV_12 $T=446600 315400 0 0 $X=446020 $Y=315100
X1735 102 1 720 614 ICV_12 $T=460520 326200 1 0 $X=459940 $Y=320500
X1736 102 1 93 101 ICV_12 $T=465160 261400 1 0 $X=464580 $Y=255700
X1737 102 1 537 92 ICV_12 $T=467480 272200 0 0 $X=466900 $Y=271900
X1738 102 1 721 88 ICV_12 $T=469800 261400 0 0 $X=469220 $Y=261100
X1739 102 1 722 679 ICV_12 $T=474440 283000 0 0 $X=473860 $Y=282700
X1740 102 1 174 723 681 252 ICV_13 $T=54520 261400 0 0 $X=53940 $Y=261100
X1741 102 1 724 725 6 649 ICV_13 $T=75400 272200 1 0 $X=74820 $Y=266500
X1742 102 1 175 726 900 794 ICV_13 $T=83520 326200 0 0 $X=82940 $Y=325900
X1743 102 1 727 424 828 885 ICV_13 $T=84680 293800 0 0 $X=84100 $Y=293500
X1744 102 1 728 729 933 829 ICV_13 $T=87000 315400 1 0 $X=86420 $Y=309700
X1745 102 1 3 730 880 688 ICV_13 $T=88160 304600 0 0 $X=87580 $Y=304300
X1746 102 1 731 732 878 685 ICV_13 $T=91640 293800 1 0 $X=91060 $Y=288100
X1747 102 1 733 638 888 691 ICV_13 $T=91640 304600 1 0 $X=91060 $Y=298900
X1748 102 1 734 735 889 413 ICV_13 $T=91640 326200 1 0 $X=91060 $Y=320500
X1749 102 1 176 736 228 754 ICV_13 $T=92800 261400 1 0 $X=92220 $Y=255700
X1750 102 1 412 737 936 607 ICV_13 $T=93960 283000 0 0 $X=93380 $Y=282700
X1751 102 1 429 738 176 809 ICV_13 $T=114840 272200 1 0 $X=114260 $Y=266500
X1752 102 1 739 740 262 268 ICV_13 $T=122960 326200 0 0 $X=122380 $Y=325900
X1753 102 1 741 742 848 954 ICV_13 $T=141520 315400 1 0 $X=140940 $Y=309700
X1754 102 1 431 437 593 741 ICV_13 $T=151960 304600 0 0 $X=151380 $Y=304300
X1755 102 1 743 643 958 960 ICV_13 $T=157760 283000 0 0 $X=157180 $Y=282700
X1756 102 1 177 644 913 744 ICV_13 $T=169360 315400 0 0 $X=168780 $Y=315100
X1757 102 1 14 744 645 962 ICV_13 $T=175160 326200 0 0 $X=174580 $Y=325900
X1758 102 1 178 745 653 297 ICV_13 $T=191400 337000 1 0 $X=190820 $Y=331300
X1759 102 1 746 747 968 746 ICV_13 $T=192560 326200 1 0 $X=191980 $Y=320500
X1760 102 1 748 749 651 973 ICV_13 $T=193720 315400 1 0 $X=193140 $Y=309700
X1761 102 1 750 751 595 302 ICV_13 $T=194880 261400 1 0 $X=194300 $Y=255700
X1762 102 1 752 753 749 815 ICV_13 $T=212280 326200 0 0 $X=211700 $Y=325900
X1763 102 1 754 755 699 750 ICV_13 $T=213440 272200 0 0 $X=212860 $Y=271900
X1764 102 1 756 757 609 574 ICV_13 $T=226200 283000 0 0 $X=225620 $Y=282700
X1765 102 1 758 179 655 313 ICV_13 $T=227360 304600 0 0 $X=226780 $Y=304300
X1766 102 1 759 180 325 705 ICV_13 $T=262160 261400 0 0 $X=261580 $Y=261100
X1767 102 1 760 761 761 992 ICV_13 $T=265640 315400 0 0 $X=265060 $Y=315100
X1768 102 1 762 763 763 917 ICV_13 $T=266800 304600 1 0 $X=266220 $Y=298900
X1769 102 1 764 765 664 764 ICV_13 $T=276080 326200 1 0 $X=275500 $Y=320500
X1770 102 1 766 181 994 759 ICV_13 $T=277240 272200 0 0 $X=276660 $Y=271900
X1771 102 1 767 768 816 336 ICV_13 $T=285360 304600 1 0 $X=284780 $Y=298900
X1772 102 1 182 183 356 670 ICV_13 $T=350320 315400 0 0 $X=349740 $Y=315100
X1773 102 1 769 184 1017 629 ICV_13 $T=352640 326200 0 0 $X=352060 $Y=325900
X1774 102 1 770 771 113 713 ICV_13 $T=371200 326200 0 0 $X=370620 $Y=325900
X1775 102 1 772 185 774 920 ICV_13 $T=379320 315400 0 0 $X=378740 $Y=315100
X1776 102 1 75 773 582 925 ICV_13 $T=390920 261400 1 0 $X=390340 $Y=255700
X1777 102 1 774 775 862 1036 ICV_13 $T=397880 293800 0 0 $X=397300 $Y=293500
X1778 102 1 87 776 804 775 ICV_13 $T=401360 283000 0 0 $X=400780 $Y=282700
X1779 102 1 777 778 863 777 ICV_13 $T=403680 315400 0 0 $X=403100 $Y=315100
X1780 102 1 186 779 714 373 ICV_13 $T=412960 272200 1 0 $X=412380 $Y=266500
X1781 102 1 780 781 776 847 ICV_13 $T=418760 272200 0 0 $X=418180 $Y=271900
X1782 102 1 782 783 718 825 ICV_13 $T=424560 315400 1 0 $X=423980 $Y=309700
X1783 102 1 784 785 865 586 ICV_13 $T=431520 283000 0 0 $X=430940 $Y=282700
X1784 102 1 786 787 720 786 ICV_13 $T=435000 326200 0 0 $X=434420 $Y=325900
X1785 102 1 187 188 585 383 ICV_13 $T=453560 261400 1 0 $X=452980 $Y=255700
X1786 102 1 788 789 864 677 ICV_13 $T=457040 315400 0 0 $X=456460 $Y=315100
X1787 102 1 790 678 784 719 ICV_13 $T=462840 283000 0 0 $X=462260 $Y=282700
X1788 555 102 551 554 1 102 UDB116SVT24_ND2B_0P75 $T=461680 304600 0 180 $X=455300 $Y=298900
X1789 102 1 791 680 ICV_15 $T=49880 272200 0 0 $X=49300 $Y=271900
X1790 102 1 792 441 ICV_15 $T=60320 293800 1 0 $X=59740 $Y=288100
X1791 102 1 793 894 ICV_15 $T=60320 304600 1 0 $X=59740 $Y=298900
X1792 102 1 189 929 ICV_15 $T=60320 326200 1 0 $X=59740 $Y=320500
X1793 102 1 794 892 ICV_15 $T=64960 326200 0 0 $X=64380 $Y=325900
X1794 102 1 795 738 ICV_15 $T=122960 272200 0 0 $X=122380 $Y=271900
X1795 102 1 796 797 ICV_15 $T=129920 293800 0 0 $X=129340 $Y=293500
X1796 102 1 797 953 ICV_15 $T=141520 272200 1 0 $X=140940 $Y=266500
X1797 102 1 798 283 ICV_15 $T=145000 261400 1 0 $X=144420 $Y=255700
X1798 102 1 190 606 ICV_15 $T=149640 326200 1 0 $X=149060 $Y=320500
X1799 102 1 799 702 ICV_15 $T=219240 304600 0 0 $X=218660 $Y=304300
X1800 102 1 191 316 ICV_15 $T=234320 337000 1 0 $X=233740 $Y=331300
X1801 102 1 800 760 ICV_15 $T=244760 315400 1 0 $X=244180 $Y=309700
X1802 102 1 192 991 ICV_15 $T=254040 261400 0 0 $X=253460 $Y=261100
X1803 102 1 801 996 ICV_15 $T=269120 326200 0 0 $X=268540 $Y=325900
X1804 102 1 802 1019 ICV_15 $T=364240 272200 1 0 $X=363660 $Y=266500
X1805 102 1 803 772 ICV_15 $T=371200 315400 0 0 $X=370620 $Y=315100
X1806 102 1 804 779 ICV_15 $T=402520 272200 0 0 $X=401940 $Y=271900
X1807 102 1 805 674 ICV_15 $T=410640 272200 0 0 $X=410060 $Y=271900
X1808 102 1 193 1043 ICV_15 $T=426880 272200 1 0 $X=426300 $Y=266500
X1809 684 1047 386 929 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=100920 326200 0 0 $X=100340 $Y=325900
X1810 884 1048 386 936 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=102080 293800 0 0 $X=101500 $Y=293500
X1811 733 1049 386 938 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=103240 304600 1 0 $X=102660 $Y=298900
X1812 734 1050 386 932 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=103240 326200 1 0 $X=102660 $Y=320500
X1813 795 1051 386 935 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=104400 261400 1 0 $X=103820 $Y=255700
X1814 899 1052 386 934 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=104400 261400 0 0 $X=103820 $Y=261100
X1815 875 1053 386 933 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=104400 315400 1 0 $X=103820 $Y=309700
X1816 827 1054 386 930 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=105560 304600 0 0 $X=104980 $Y=304300
X1817 692 1055 386 954 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=129920 304600 0 0 $X=129340 $Y=304300
X1818 694 1056 138 956 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=140360 304600 1 0 $X=139780 $Y=298900
X1819 282 1057 386 958 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=147320 293800 0 0 $X=146740 $Y=293500
X1820 842 1058 386 931 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=148480 283000 1 0 $X=147900 $Y=277300
X1821 724 1059 386 959 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=149640 272200 1 0 $X=149060 $Y=266500
X1822 292 1060 386 286 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=174000 261400 1 180 $X=151380 $Y=261100
X1823 285 1061 138 962 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=153120 326200 0 0 $X=152540 $Y=325900
X1824 798 1062 386 965 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=160080 261400 1 0 $X=159500 $Y=255700
X1825 291 1063 138 297 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=169360 337000 1 0 $X=168780 $Y=331300
X1826 891 1064 138 968 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=170520 326200 1 0 $X=169940 $Y=320500
X1827 963 1065 138 300 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=171680 272200 0 0 $X=171100 $Y=271900
X1828 592 1066 138 970 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=174000 283000 1 0 $X=173420 $Y=277300
X1829 810 1067 138 969 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=175160 304600 1 0 $X=174580 $Y=298900
X1830 903 1068 138 973 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=182120 315400 0 0 $X=181540 $Y=315100
X1831 882 1069 138 974 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=184440 293800 1 0 $X=183860 $Y=288100
X1832 896 1070 138 853 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=186760 283000 0 0 $X=186180 $Y=282700
X1833 905 1071 138 656 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=197200 283000 1 0 $X=196620 $Y=277300
X1834 608 1072 138 648 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=228520 272200 0 180 $X=205900 $Y=266500
X1835 854 1073 138 255 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=211120 261400 0 0 $X=210540 $Y=261100
X1836 855 1074 138 451 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=212280 261400 1 0 $X=211700 $Y=255700
X1837 305 1075 138 450 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=214600 304600 1 0 $X=214020 $Y=298900
X1838 308 1076 138 986 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=221560 326200 1 0 $X=220980 $Y=320500
X1839 843 1077 138 318 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=222720 315400 1 0 $X=222140 $Y=309700
X1840 762 1078 137 459 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=237800 293800 1 0 $X=237220 $Y=288100
X1841 610 1079 138 327 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=251720 337000 1 0 $X=251140 $Y=331300
X1842 800 1080 137 458 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=252880 315400 1 0 $X=252300 $Y=309700
X1843 320 1081 137 470 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=254040 326200 1 0 $X=253460 $Y=320500
X1844 707 1082 137 457 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=255200 261400 1 0 $X=254620 $Y=255700
X1845 767 1083 137 461 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=259840 283000 1 0 $X=259260 $Y=277300
X1846 612 1084 137 993 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=281880 283000 1 180 $X=259260 $Y=282700
X1847 323 1085 137 460 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=259840 293800 0 0 $X=259260 $Y=293500
X1848 708 1086 137 464 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=277240 326200 0 0 $X=276660 $Y=325900
X1849 340 1087 137 51 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=309720 337000 0 180 $X=287100 $Y=331300
X1850 846 1088 389 1000 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=290000 261400 0 0 $X=289420 $Y=261100
X1851 343 1089 389 482 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=313200 272200 1 0 $X=312620 $Y=266500
X1852 710 1090 137 1010 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=315520 337000 1 0 $X=314940 $Y=331300
X1853 844 1091 137 512 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=316680 326200 0 0 $X=316100 $Y=325900
X1854 671 1092 391 1030 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=356120 261400 1 0 $X=355540 $Y=255700
X1855 802 1093 391 1033 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=378160 272200 1 0 $X=377580 $Y=266500
X1856 927 1094 391 1032 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=379320 283000 1 0 $X=378740 $Y=277300
X1857 362 1095 391 1034 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=379320 283000 0 0 $X=378740 $Y=282700
X1858 834 1096 391 1036 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=381640 293800 1 0 $X=381060 $Y=288100
X1859 598 1097 391 1035 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=382800 315400 1 0 $X=382220 $Y=309700
X1860 919 1098 391 1031 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=406000 326200 0 180 $X=383380 $Y=320500
X1861 368 1099 391 360 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=407160 337000 0 180 $X=384540 $Y=331300
X1862 589 1100 391 1025 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=411800 326200 1 180 $X=389180 $Y=325900
X1863 782 1101 391 1041 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=408320 326200 1 0 $X=407740 $Y=320500
X1864 372 1102 391 375 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=411800 337000 1 0 $X=411220 $Y=331300
X1865 584 1103 391 92 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=412960 261400 1 0 $X=412380 $Y=255700
X1866 824 1104 391 543 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=414120 293800 1 0 $X=413540 $Y=288100
X1867 587 1105 391 1044 261 1 102 102 UDB116SVT24_FDPRBQ_V2_1 $T=414120 293800 0 0 $X=413540 $Y=293500
X1868 416 419 1 423 942 258 2284 102 102 UDB116SVT24_AOI22_0P75 $T=122960 272200 1 180 $X=116580 $Y=271900
X1869 422 421 1 423 943 260 2286 102 102 UDB116SVT24_AOI22_0P75 $T=126440 283000 0 180 $X=120060 $Y=277300
X1870 417 421 1 423 944 266 2288 102 102 UDB116SVT24_AOI22_0P75 $T=121800 283000 0 0 $X=121220 $Y=282700
X1871 3 421 1 423 940 267 2289 102 102 UDB116SVT24_AOI22_0P75 $T=134560 283000 1 180 $X=128180 $Y=282700
X1872 416 429 1 423 947 271 2290 102 102 UDB116SVT24_AOI22_0P75 $T=138040 261400 1 180 $X=131660 $Y=261100
X1873 416 422 1 423 951 280 2291 102 102 UDB116SVT24_AOI22_0P75 $T=135720 272200 1 0 $X=135140 $Y=266500
X1874 416 3 1 423 949 279 2292 102 102 UDB116SVT24_AOI22_0P75 $T=135720 283000 1 0 $X=135140 $Y=277300
X1875 416 431 1 423 950 273 2376 102 102 UDB116SVT24_AOI22_0P75 $T=142680 283000 1 180 $X=136300 $Y=282700
X1876 428 4 1 440 952 569 2293 102 102 UDB116SVT24_AOI22_0P75 $T=143840 315400 1 180 $X=137460 $Y=315100
X1877 428 5 1 440 276 427 2295 102 102 UDB116SVT24_AOI22_0P75 $T=143840 326200 1 180 $X=137460 $Y=325900
X1878 428 438 1 440 955 418 2297 102 102 UDB116SVT24_AOI22_0P75 $T=167040 315400 0 180 $X=160660 $Y=309700
X1879 428 7 1 440 290 426 2298 102 102 UDB116SVT24_AOI22_0P75 $T=169360 315400 1 180 $X=162980 $Y=315100
X1880 428 10 1 440 961 433 2299 102 102 UDB116SVT24_AOI22_0P75 $T=174000 304600 0 180 $X=167620 $Y=298900
X1881 428 439 1 440 964 432 2301 102 102 UDB116SVT24_AOI22_0P75 $T=180960 293800 1 180 $X=174580 $Y=293500
X1882 442 15 1 562 967 19 2303 102 102 UDB116SVT24_AOI22_0P75 $T=199520 272200 1 0 $X=198940 $Y=266500
X1883 442 19 1 562 971 449 2306 102 102 UDB116SVT24_AOI22_0P75 $T=207640 272200 0 0 $X=207060 $Y=271900
X1884 18 24 1 25 304 447 2304 102 102 UDB116SVT24_AOI22_0P75 $T=208800 337000 1 0 $X=208220 $Y=331300
X1885 449 442 1 562 307 448 2307 102 102 UDB116SVT24_AOI22_0P75 $T=226200 283000 1 180 $X=219820 $Y=282700
X1886 448 442 1 562 983 452 2377 102 102 UDB116SVT24_AOI22_0P75 $T=221560 283000 1 0 $X=220980 $Y=277300
X1887 451 442 1 562 310 450 2308 102 102 UDB116SVT24_AOI22_0P75 $T=229680 283000 1 0 $X=229100 $Y=277300
X1888 450 442 1 562 982 711 2378 102 102 UDB116SVT24_AOI22_0P75 $T=229680 293800 1 0 $X=229100 $Y=288100
X1889 452 442 1 562 985 451 2309 102 102 UDB116SVT24_AOI22_0P75 $T=230840 272200 1 0 $X=230260 $Y=266500
X1890 33 453 1 122 988 439 2313 102 102 UDB116SVT24_AOI22_0P75 $T=258680 283000 1 180 $X=252300 $Y=282700
X1891 36 35 1 322 321 445 2310 102 102 UDB116SVT24_AOI22_0P75 $T=259840 326200 1 180 $X=253460 $Y=325900
X1892 33 37 1 122 991 5 2311 102 102 UDB116SVT24_AOI22_0P75 $T=262160 272200 0 180 $X=255780 $Y=266500
X1893 33 38 1 122 987 438 2312 102 102 UDB116SVT24_AOI22_0P75 $T=263320 272200 1 180 $X=256940 $Y=271900
X1894 33 39 1 122 992 10 2314 102 102 UDB116SVT24_AOI22_0P75 $T=265640 315400 1 180 $X=259260 $Y=315100
X1895 33 40 1 122 990 445 2315 102 102 UDB116SVT24_AOI22_0P75 $T=266800 304600 0 180 $X=260420 $Y=298900
X1896 33 454 1 122 989 35 2379 102 102 UDB116SVT24_AOI22_0P75 $T=267960 304600 1 180 $X=261580 $Y=304300
X1897 33 455 1 122 994 4 2316 102 102 UDB116SVT24_AOI22_0P75 $T=277240 272200 0 180 $X=270860 $Y=266500
X1898 33 456 1 122 995 22 2317 102 102 UDB116SVT24_AOI22_0P75 $T=277240 272200 1 180 $X=270860 $Y=271900
X1899 33 42 1 122 996 329 2319 102 102 UDB116SVT24_AOI22_0P75 $T=283040 337000 0 180 $X=276660 $Y=331300
X1900 478 481 1 57 484 45 2380 102 102 UDB116SVT24_AOI22_0P75 $T=322480 315400 0 0 $X=321900 $Y=315100
X1901 475 487 1 46 496 482 2339 102 102 UDB116SVT24_AOI22_0P75 $T=335240 283000 0 180 $X=328860 $Y=277300
X1902 493 492 1 78 1008 62 2338 102 102 UDB116SVT24_AOI22_0P75 $T=337560 326200 0 180 $X=331180 $Y=320500
X1903 509 77 1 79 494 50 2345 102 102 UDB116SVT24_AOI22_0P75 $T=349160 283000 0 180 $X=342780 $Y=277300
X1904 509 511 1 79 1014 85 2381 102 102 UDB116SVT24_AOI22_0P75 $T=352640 283000 1 180 $X=346260 $Y=282700
X1905 86 85 1 87 521 511 2355 102 102 UDB116SVT24_AOI22_0P75 $T=368880 283000 1 180 $X=362500 $Y=282700
X1906 27 33 324 122 102 1 806 102 UDB116SVT24_OA22_1 $T=259840 293800 1 0 $X=259260 $Y=288100
X1907 41 33 470 122 102 1 807 102 UDB116SVT24_OA22_1 $T=269120 326200 1 180 $X=260420 $Y=325900
X1908 38 102 102 UDB116SVT24_TIEDIN_1 $T=467480 293800 1 0 $X=466900 $Y=288100
X1909 475 102 102 UDB116SVT24_TIEDIN_1 $T=469800 272200 1 0 $X=469220 $Y=266500
X1910 102 443 12 23 301 14 1 102 UDB116SVT24_ND4_0P75 $T=201840 326200 1 180 $X=195460 $Y=325900
X1911 102 4 22 446 103 16 1 102 UDB116SVT24_ND4_0P75 $T=207640 315400 1 0 $X=207060 $Y=309700
X1912 102 462 463 998 999 49 1 102 UDB116SVT24_ND4_0P75 $T=294640 283000 1 0 $X=294060 $Y=277300
X1913 102 472 471 1001 997 466 1 102 UDB116SVT24_ND4_0P75 $T=308560 293800 1 180 $X=302180 $Y=293500
X1914 102 58 476 474 1002 62 1 102 UDB116SVT24_ND4_0P75 $T=310880 283000 1 0 $X=310300 $Y=277300
X1915 102 479 480 495 1006 483 1 102 UDB116SVT24_ND4_0P75 $T=322480 304600 0 0 $X=321900 $Y=304300
X1916 102 485 486 490 1012 491 1 102 UDB116SVT24_ND4_0P75 $T=330600 304600 1 0 $X=330020 $Y=298900
X1917 102 494 475 488 1003 73 1 102 UDB116SVT24_ND4_0P75 $T=336400 283000 1 0 $X=335820 $Y=277300
X1918 102 510 74 508 75 500 1 102 UDB116SVT24_ND4_0P75 $T=350320 261400 0 0 $X=349740 $Y=261100
X1919 441 16 1 24 444 102 102 UDB116SVT24_AN3B_0P75 $T=198360 304600 1 0 $X=197780 $Y=298900
X1920 102 1 636 248 2176 ICV_18 $T=52200 293800 0 0 $X=51620 $Y=293500
X1921 102 1 808 723 2177 ICV_18 $T=60320 261400 1 0 $X=59740 $Y=255700
X1922 102 1 809 946 2178 ICV_18 $T=135720 272200 0 0 $X=135140 $Y=271900
X1923 102 1 810 594 2179 ICV_18 $T=145000 283000 0 0 $X=144420 $Y=282700
X1924 102 1 811 281 2180 ICV_18 $T=146160 261400 0 0 $X=145580 $Y=261100
X1925 102 1 812 956 2181 ICV_18 $T=155440 315400 1 0 $X=154860 $Y=309700
X1926 102 1 813 288 2182 ICV_18 $T=161240 326200 1 0 $X=160660 $Y=320500
X1927 102 1 814 964 2183 ICV_18 $T=175160 293800 1 0 $X=174580 $Y=288100
X1928 102 1 12 851 2184 ICV_18 $T=190240 326200 0 0 $X=189660 $Y=325900
X1929 102 1 815 703 2185 ICV_18 $T=220400 315400 0 0 $X=219820 $Y=315100
X1930 102 1 194 701 2186 ICV_18 $T=222720 293800 0 0 $X=222140 $Y=293500
X1931 102 1 816 818 2188 ICV_18 $T=243600 283000 1 0 $X=243020 $Y=277300
X1932 102 1 817 987 2189 ICV_18 $T=250560 272200 1 0 $X=249980 $Y=266500
X1933 102 1 818 832 2190 ICV_18 $T=251720 272200 0 0 $X=251140 $Y=271900
X1934 102 1 819 333 2191 ICV_18 $T=288840 261400 1 0 $X=288260 $Y=255700
X1935 102 1 195 335 2193 ICV_18 $T=292320 326200 1 0 $X=291740 $Y=320500
X1936 102 1 665 995 2194 ICV_18 $T=306240 293800 1 0 $X=305660 $Y=288100
X1937 102 1 820 498 2195 ICV_18 $T=331760 261400 0 0 $X=331180 $Y=261100
X1938 102 1 501 1010 2196 ICV_18 $T=331760 315400 0 0 $X=331180 $Y=315100
X1939 102 1 196 352 2198 ICV_18 $T=337560 304600 0 0 $X=336980 $Y=304300
X1940 102 1 821 1015 2200 ICV_18 $T=345680 337000 1 0 $X=345100 $Y=331300
X1941 102 1 822 627 2201 ICV_18 $T=350320 326200 1 0 $X=349740 $Y=320500
X1942 102 1 823 185 2202 ICV_18 $T=383960 293800 0 0 $X=383380 $Y=293500
X1943 102 1 675 583 2204 ICV_18 $T=414120 304600 0 0 $X=413540 $Y=304300
X1944 102 1 824 785 2205 ICV_18 $T=417600 283000 0 0 $X=417020 $Y=282700
X1945 102 1 825 788 2207 ICV_18 $T=423400 315400 0 0 $X=422820 $Y=315100
X1946 102 1 826 783 2208 ICV_18 $T=458200 315400 1 0 $X=457620 $Y=309700
X1947 13 7 981 102 711 442 1 102 UDB116SVT24_AO2BB2_0P75 $T=228520 293800 0 0 $X=227940 $Y=293500
X1948 91 528 1040 102 1042 89 1 102 UDB116SVT24_AO2BB2_0P75 $T=423400 304600 0 0 $X=422820 $Y=304300
X1949 1021 53 173 1024 102 1 523 102 UDB116SVT24_ADDF_V1_1 $T=360760 293800 0 0 $X=360180 $Y=293500
X1950 1022 63 204 1021 102 1 364 102 UDB116SVT24_ADDF_V1_1 $T=360760 315400 1 0 $X=360180 $Y=309700
X1951 359 55 770 1026 102 1 363 102 UDB116SVT24_ADDF_V1_1 $T=360760 337000 1 0 $X=360180 $Y=331300
X1952 1023 56 676 1022 102 1 522 102 UDB116SVT24_ADDF_V1_1 $T=363080 304600 0 0 $X=362500 $Y=304300
X1953 1026 52 185 1023 102 1 524 102 UDB116SVT24_ADDF_V1_1 $T=367720 304600 1 0 $X=367140 $Y=298900
X1954 1038 155 504 366 102 1 526 102 UDB116SVT24_ADDF_V1_1 $T=410640 304600 1 180 $X=389180 $Y=304300
X1955 527 46 543 1039 102 1 530 102 UDB116SVT24_ADDF_V1_1 $T=410640 283000 1 0 $X=410060 $Y=277300
X1956 1039 533 500 1038 102 1 1042 102 UDB116SVT24_ADDF_V1_1 $T=410640 304600 1 0 $X=410060 $Y=298900
X1957 48 102 50 469 465 470 1 102 UDB116SVT24_OAI22_0P75 $T=302760 304600 0 180 $X=296380 $Y=298900
X1958 474 102 54 1001 338 998 1 102 UDB116SVT24_OAI22_0P75 $T=309720 283000 0 180 $X=303340 $Y=277300
X1959 477 102 61 344 1004 65 1 102 UDB116SVT24_OAI22_0P75 $T=317840 261400 0 180 $X=311460 $Y=255700
X1960 518 102 517 1018 1020 513 1 102 UDB116SVT24_OAI22_0P75 $T=365400 283000 0 180 $X=359020 $Y=277300
X1961 529 102 531 534 1043 860 1 102 UDB116SVT24_OAI22_0P75 $T=431520 261400 0 0 $X=430940 $Y=261100
X1962 535 102 556 549 380 634 1 102 UDB116SVT24_OAI22_0P75 $T=462840 272200 1 180 $X=456460 $Y=271900
X1963 551 557 102 1046 1 102 UDB116SVT24_EN2_V2_0P75 $T=457040 326200 0 0 $X=456460 $Y=325900
X1964 1 546 551 545 553 102 102 UDB116SVT24_NR3_0P75 $T=452400 315400 0 0 $X=451820 $Y=315100
X1965 86 511 565 1024 102 1 102 3031 UDB116SVT24_MAJI3_1 $T=373520 293800 0 180 $X=364820 $Y=288100
X1966 102 1 827 877 ICV_19 $T=54520 304600 0 0 $X=53940 $Y=304300
X1967 102 1 828 938 ICV_19 $T=105560 283000 0 0 $X=104980 $Y=282700
X1968 102 1 829 687 ICV_19 $T=107880 315400 0 0 $X=107300 $Y=315100
X1969 102 1 642 693 ICV_19 $T=128760 272200 1 0 $X=128180 $Y=266500
X1970 102 1 830 695 ICV_19 $T=131080 315400 0 0 $X=130500 $Y=315100
X1971 102 1 197 811 ICV_19 $T=153120 261400 1 0 $X=152540 $Y=255700
X1972 102 1 198 813 ICV_19 $T=156600 315400 0 0 $X=156020 $Y=315100
X1973 102 1 8 293 ICV_19 $T=171680 272200 1 0 $X=171100 $Y=266500
X1974 102 1 831 961 ICV_19 $T=179800 315400 1 0 $X=179220 $Y=309700
X1975 102 1 21 914 ICV_19 $T=204160 315400 0 0 $X=203580 $Y=315100
X1976 102 1 49 986 ICV_19 $T=243600 326200 1 0 $X=243020 $Y=320500
X1977 102 1 832 988 ICV_19 $T=252880 283000 1 0 $X=252300 $Y=277300
X1978 102 1 658 807 ICV_19 $T=252880 315400 0 0 $X=252300 $Y=315100
X1979 102 1 199 611 ICV_19 $T=281880 315400 1 0 $X=281300 $Y=309700
X1980 102 1 200 337 ICV_19 $T=301600 326200 1 0 $X=301020 $Y=320500
X1981 102 1 201 353 ICV_19 $T=337560 293800 0 0 $X=336980 $Y=293500
X1982 102 1 202 822 ICV_19 $T=346840 315400 1 0 $X=346260 $Y=309700
X1983 102 1 203 916 ICV_19 $T=350320 304600 1 0 $X=349740 $Y=298900
X1984 102 1 833 921 ICV_19 $T=356120 304600 0 0 $X=355540 $Y=304300
X1985 102 1 834 588 ICV_19 $T=360760 304600 1 0 $X=360180 $Y=298900
X1986 102 1 204 771 ICV_19 $T=382800 326200 0 0 $X=382220 $Y=325900
X1987 102 1 154 836 ICV_19 $T=404840 315400 1 0 $X=404260 $Y=309700
X1988 102 1 835 773 ICV_19 $T=410640 261400 0 0 $X=410060 $Y=261100
X1989 102 1 533 1044 ICV_19 $T=431520 283000 1 0 $X=430940 $Y=277300
X1990 102 1 836 715 ICV_19 $T=431520 304600 1 0 $X=430940 $Y=298900
X1991 61 66 1 344 2337 348 102 102 UDB116SVT24_AOI21_0P75 $T=331760 261400 1 0 $X=331180 $Y=255700
X1992 508 66 1 499 2382 348 102 102 UDB116SVT24_AOI21_0P75 $T=348000 261400 1 180 $X=342780 $Y=261100
X1993 506 66 1 1018 2352 516 102 102 UDB116SVT24_AOI21_0P75 $T=353800 272200 1 0 $X=353220 $Y=266500
X1994 519 500 1 1016 2356 361 102 102 UDB116SVT24_AOI21_0P75 $T=365400 261400 0 0 $X=364820 $Y=261100
X1995 96 92 1 1045 2365 543 102 102 UDB116SVT24_AOI21_0P75 $T=448920 293800 1 0 $X=448340 $Y=288100
X1996 101 94 1 560 2372 634 102 102 UDB116SVT24_AOI21_0P75 $T=462840 283000 1 180 $X=457620 $Y=282700
X1997 102 515 514 507 504 1 102 UDB116SVT24_ND3_0P75 $T=354960 283000 0 180 $X=349740 $Y=277300
X1998 102 527 89 837 537 1 102 UDB116SVT24_ND3_0P75 $T=444280 272200 0 0 $X=443700 $Y=271900
X1999 1 434 436 8 414 6 102 102 UDB116SVT24_NR4_0P75 $T=153120 293800 1 0 $X=152540 $Y=288100
X2000 1 475 473 52 1002 49 102 102 UDB116SVT24_NR4_0P75 $T=309720 283000 1 180 $X=303340 $Y=282700
X2001 1 490 488 1008 1009 484 102 102 UDB116SVT24_NR4_0P75 $T=335240 304600 1 180 $X=328860 $Y=304300
X2002 1 495 496 1014 1013 73 102 102 UDB116SVT24_NR4_0P75 $T=337560 283000 0 0 $X=336980 $Y=282700
X2003 1 506 504 45 476 500 102 102 UDB116SVT24_NR4_0P75 $T=348000 272200 1 180 $X=341620 $Y=271900
X2004 428 2294 277 22 430 1 2225 428 102 102 UDB116SVT24_OA2BB2_0P75 $T=142680 337000 0 180 $X=133980 $Y=331300
X2005 428 2300 957 445 422 1 2227 428 102 102 UDB116SVT24_OA2BB2_0P75 $T=174000 304600 1 180 $X=165300 $Y=304300
X2006 506 2354 1019 518 516 1 2228 506 102 102 UDB116SVT24_OA2BB2_0P75 $T=363080 272200 1 180 $X=354380 $Y=271900
X2007 102 1 205 246 2230 ICV_21 $T=49880 283000 0 0 $X=49300 $Y=282700
X2008 102 1 838 247 2231 ICV_21 $T=49880 315400 0 0 $X=49300 $Y=315100
X2009 102 1 839 838 2232 ICV_21 $T=53360 326200 0 0 $X=52780 $Y=325900
X2010 102 1 840 570 2233 ICV_21 $T=66120 272200 0 0 $X=65540 $Y=271900
X2011 102 1 206 945 2234 ICV_21 $T=129920 315400 1 0 $X=129340 $Y=309700
X2012 102 1 841 948 2235 ICV_21 $T=138040 293800 1 0 $X=137460 $Y=288100
X2013 102 1 842 796 2236 ICV_21 $T=146160 272200 0 0 $X=145580 $Y=271900
X2014 102 1 441 647 2237 ICV_21 $T=192560 272200 1 0 $X=191980 $Y=266500
X2015 102 1 652 745 2238 ICV_21 $T=201840 326200 0 0 $X=201260 $Y=325900
X2016 102 1 207 334 2239 ICV_21 $T=291160 315400 1 0 $X=290580 $Y=309700
X2017 102 1 843 575 2241 ICV_21 $T=302760 304600 0 0 $X=302180 $Y=304300
X2018 102 1 208 341 2243 ICV_21 $T=309720 304600 0 0 $X=309140 $Y=304300
X2019 102 1 844 709 2244 ICV_21 $T=309720 315400 0 0 $X=309140 $Y=315100
X2020 102 1 209 1004 2245 ICV_21 $T=316680 283000 1 0 $X=316100 $Y=277300
X2021 102 1 845 1007 2246 ICV_21 $T=335240 272200 0 0 $X=334660 $Y=271900
X2022 102 1 846 672 2247 ICV_21 $T=348000 272200 0 0 $X=347420 $Y=271900
X2023 102 1 520 81 2248 ICV_21 $T=437320 272200 0 0 $X=436740 $Y=271900
X2024 102 1 847 780 2249 ICV_21 $T=448920 304600 1 0 $X=448340 $Y=298900
X2025 531 93 1 534 535 377 539 102 102 3032 UDB116SVT24_AOI32_1 $T=441960 261400 0 0 $X=441380 $Y=261100
X2026 102 1 211 210 2250 ICV_22 $T=70760 272200 1 0 $X=70180 $Y=266500
X2027 102 1 637 635 2251 ICV_22 $T=78880 326200 0 0 $X=78300 $Y=325900
X2028 102 1 213 212 2252 ICV_22 $T=87000 272200 1 0 $X=86420 $Y=266500
X2029 102 1 812 848 2254 ICV_22 $T=162400 304600 1 0 $X=161820 $Y=298900
X2030 102 1 850 849 2255 ICV_22 $T=169360 293800 0 0 $X=168780 $Y=293500
X2031 102 1 852 851 2256 ICV_22 $T=174000 304600 0 0 $X=173420 $Y=304300
X2032 102 1 214 850 2257 ICV_22 $T=180960 293800 0 0 $X=180380 $Y=293500
X2033 102 1 751 215 2258 ICV_22 $T=184440 261400 0 0 $X=183860 $Y=261100
X2034 102 1 747 852 2259 ICV_22 $T=203000 337000 1 0 $X=202420 $Y=331300
X2035 102 1 853 216 2260 ICV_22 $T=204160 304600 1 0 $X=203580 $Y=298900
X2036 102 1 590 854 2261 ICV_22 $T=212280 293800 1 0 $X=211700 $Y=288100
X2037 102 1 856 855 2262 ICV_22 $T=214600 283000 0 0 $X=214020 $Y=282700
X2038 102 1 218 217 2263 ICV_22 $T=225040 272200 0 0 $X=224460 $Y=271900
X2039 102 1 801 663 2264 ICV_22 $T=274920 315400 1 0 $X=274340 $Y=309700
X2040 102 1 219 453 2265 ICV_22 $T=278400 304600 1 0 $X=277820 $Y=298900
X2041 102 1 221 220 2266 ICV_22 $T=279560 261400 0 0 $X=278980 $Y=261100
X2042 102 1 124 667 2267 ICV_22 $T=283040 272200 1 0 $X=282460 $Y=266500
X2043 102 1 222 455 2269 ICV_22 $T=291160 293800 1 0 $X=290580 $Y=288100
X2044 102 1 753 857 2270 ICV_22 $T=292320 315400 0 0 $X=291740 $Y=315100
X2045 102 1 223 456 2271 ICV_22 $T=299280 326200 0 0 $X=298700 $Y=325900
X2046 102 1 224 858 2272 ICV_22 $T=335240 272200 1 0 $X=334660 $Y=266500
X2047 102 1 225 666 2273 ICV_22 $T=337560 326200 1 0 $X=336980 $Y=320500
X2048 102 1 859 669 2274 ICV_22 $T=383960 304600 0 0 $X=383380 $Y=304300
X2049 102 1 226 859 2275 ICV_22 $T=409480 293800 0 0 $X=408900 $Y=293500
X2050 102 1 532 860 2276 ICV_22 $T=426880 261400 0 0 $X=426300 $Y=261100
X2051 523 89 173 632 2358 1 102 861 102 UDB116SVT24_AO22_1 $T=389760 293800 0 0 $X=389180 $Y=293500
X2052 522 89 676 632 2359 1 102 862 102 UDB116SVT24_AO22_1 $T=389760 304600 1 0 $X=389180 $Y=298900
X2053 524 89 823 632 2360 1 102 863 102 UDB116SVT24_AO22_1 $T=399040 304600 1 0 $X=398460 $Y=298900
X2054 526 89 789 632 2362 1 102 864 102 UDB116SVT24_AO22_1 $T=416440 315400 1 0 $X=415860 $Y=309700
X2055 530 89 543 632 2364 1 102 865 102 UDB116SVT24_AO22_1 $T=431520 283000 1 180 $X=422820 $Y=282700
X2056 102 1 227 866 867 868 866 867 437 727 ICV_23 $T=61480 293800 0 0 $X=60900 $Y=293500
X2057 102 1 869 870 871 872 870 872 728 915 ICV_23 $T=61480 315400 0 0 $X=60900 $Y=315100
X2058 102 1 873 874 875 876 871 873 876 729 ICV_23 $T=63800 315400 1 0 $X=63220 $Y=309700
X2059 102 1 877 878 879 880 886 930 730 731 ICV_23 $T=64960 304600 0 0 $X=64380 $Y=304300
X2060 102 1 881 882 883 884 792 883 881 732 ICV_23 $T=68440 293800 1 0 $X=67860 $Y=288100
X2061 102 1 885 886 887 888 868 887 879 639 ICV_23 $T=68440 304600 1 0 $X=67860 $Y=298900
X2062 102 1 889 890 891 892 726 120 831 904 ICV_23 $T=68440 326200 1 0 $X=67860 $Y=320500
X2063 102 1 856 893 228 229 229 909 603 736 ICV_23 $T=69600 261400 1 0 $X=69020 $Y=255700
X2064 102 1 894 895 896 897 254 604 897 737 ICV_23 $T=70760 283000 0 0 $X=70180 $Y=282700
X2065 102 1 230 898 452 899 793 906 255 907 ICV_23 $T=75400 261400 0 0 $X=74820 $Y=261100
X2066 102 1 900 901 231 232 189 232 901 256 ICV_23 $T=83520 337000 1 0 $X=82940 $Y=331300
X2067 102 1 902 903 417 904 874 869 890 735 ICV_23 $T=84680 315400 0 0 $X=84100 $Y=315100
X2068 102 1 411 448 905 233 895 657 911 910 ICV_23 $T=85840 283000 1 0 $X=85260 $Y=277300
X2069 102 1 449 906 907 908 725 908 686 756 ICV_23 $T=91640 272200 1 0 $X=91060 $Y=266500
X2070 102 1 909 910 419 911 935 683 572 755 ICV_23 $T=92800 272200 0 0 $X=92220 $Y=271900
X2071 102 1 234 912 235 236 740 257 259 263 ICV_23 $T=106720 337000 1 0 $X=106140 $Y=331300
X2072 102 1 425 237 238 239 902 270 274 830 ICV_23 $T=125280 326200 1 0 $X=124700 $Y=320500
X2073 102 1 240 241 913 242 277 284 957 289 ICV_23 $T=142680 337000 1 0 $X=142100 $Y=331300
X2074 102 1 914 915 916 917 752 976 579 990 ICV_23 $T=236640 304600 1 0 $X=236060 $Y=298900
X2075 102 1 918 243 661 52 806 620 918 332 ICV_23 $T=267960 293800 1 0 $X=267380 $Y=288100
X2076 102 1 919 244 920 921 716 1025 833 1031 ICV_23 $T=359600 326200 1 0 $X=359020 $Y=320500
X2077 102 1 922 923 924 925 1030 928 365 1033 ICV_23 $T=379320 261400 0 0 $X=378740 $Y=261100
X2078 102 1 926 927 928 504 1020 926 1032 923 ICV_23 $T=379320 272200 0 0 $X=378740 $Y=271900
X2079 458 997 481 459 621 2318 1 123 45 125 52 2320 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=279560 304600 0 0 $X=278980 $Y=304300
X2080 460 463 475 461 129 2383 1 454 46 619 56 2322 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=285360 283000 0 0 $X=284780 $Y=282700
X2081 47 462 622 44 511 2384 1 620 53 126 85 2323 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=293480 272200 1 0 $X=292900 $Y=266500
X2082 457 471 65 43 58 2321 1 618 63 124 55 2324 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=294640 261400 1 0 $X=294060 $Y=255700
X2083 464 999 492 51 473 2385 1 42 62 128 75 2328 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=298120 315400 1 0 $X=297540 $Y=309700
X2084 339 472 506 342 513 2325 1 345 81 130 504 2386 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=308560 326200 1 0 $X=307980 $Y=320500
X2085 52 479 625 59 65 2387 1 621 68 623 63 2326 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=322480 293800 1 180 $X=309140 $Y=293500
X2086 64 486 58 68 129 2327 1 624 55 625 56 2332 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=309720 304600 1 0 $X=309140 $Y=298900
X2087 59 1003 622 67 511 2333 1 623 53 626 85 2329 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=323640 283000 1 180 $X=310300 $Y=282700
X2088 62 480 478 64 481 2334 1 492 57 624 45 2330 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=324800 315400 0 180 $X=311460 $Y=309700
X2089 69 1005 129 67 622 2335 1 131 56 626 53 2331 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=328280 293800 0 180 $X=314940 $Y=288100
X2090 500 1012 487 69 65 2340 1 469 482 131 63 2388 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=337560 293800 1 180 $X=324220 $Y=293500
X2091 81 491 628 501 621 2389 1 506 76 627 52 2349 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=334080 315400 1 0 $X=333500 $Y=309700
X2092 501 1011 58 84 50 2390 1 627 55 631 77 2391 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=337560 293800 1 0 $X=336980 $Y=288100
X2093 500 1006 630 512 506 2341 1 469 82 629 81 2350 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=337560 304600 1 0 $X=336980 $Y=298900
X2094 504 483 628 78 473 2342 1 513 76 493 75 2351 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=337560 315400 0 0 $X=336980 $Y=315100
X2095 504 485 630 512 473 2346 1 513 82 629 75 2353 102 102 UDB116SVT24_AOI2222_V2_0P75 $T=343360 304600 0 0 $X=342780 $Y=304300
X2096 1013 1005 1011 1 349 1009 102 102 UDB116SVT24_AOI31_0P75 $T=336400 283000 1 180 $X=330020 $Y=282700
.ENDS
***************************************
.SUBCKT ICV_25 1 2 3 4 5 6 7 8
** N=12 EP=8 IP=16 FDC=17
M0 2 2 5 1 pfet_cnrx $X=11460 $Y=3200 $D=645
X1 1 2 3 6 ICV_12 $T=11600 0 0 0 $X=11020 $Y=-300
X2 1 2 4 5 7 8 ICV_13 $T=0 0 0 0 $X=-580 $Y=-300
.ENDS
***************************************
.SUBCKT ICV_26 1 2 3 4 5 6 7 8
** N=13 EP=8 IP=19 FDC=37
M0 2 2 12 1 pfet_cnrx $X=21900 $Y=3200 $D=645
X1 1 2 3 4 ICV_12 $T=22040 0 0 0 $X=21460 $Y=-300
X2 5 12 8 6 7 2 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=0 0 0 0 $X=-580 $Y=-300
.ENDS
***************************************
.SUBCKT UDB116SVT24_NR2B_0P75 A VDD X B VSS VNW_P
** N=14 EP=6 IP=0 FDC=7
*.CALIBRE ISOLATED NETS: VPW_N
M0 11 A VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X 11 VSS VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M2 VSS B X VNW_P nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M3 11 A VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M4 13 11 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M5 X B 13 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3400 $D=641
M6 VDD VDD 11 VNW_P pfet_cnrx $X=2180 $Y=3400 $D=645
.ENDS
***************************************
.SUBCKT UDB116SVT24_OAI211_0P75 A2 VSS A1 B2 VDD B1 X VNW_P
** N=18 EP=8 IP=0 FDC=8
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS A2 13 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 13 A1 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 14 B2 13 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 X B1 14 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M4 17 A2 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M5 X A1 17 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M6 VDD B2 X VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
M7 X B1 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT UDB116SVT24_FDPSBQ_1 D SD CK VDD VSS Q VNW_P
** N=31 EP=7 IP=0 FDC=37
*.CALIBRE ISOLATED NETS: VPW_N
M0 13 D VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 13 16 13 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 12 14 13 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 25 16 12 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=500 $D=533
M4 VSS 17 25 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=500 $D=533
M5 26 SD VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=500 $D=533
M6 17 12 26 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=7980 $Y=500 $D=533
M7 VSS 14 16 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=10300 $Y=500 $D=533
M8 14 CK VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=11460 $Y=500 $D=533
M9 27 17 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=13780 $Y=500 $D=533
M10 19 CK 27 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=14940 $Y=500 $D=533
M11 20 14 19 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=16100 $Y=500 $D=533
M12 20 CK 20 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=17260 $Y=500 $D=533
M13 VSS 21 20 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=18420 $Y=500 $D=533
M14 28 SD VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=19580 $Y=500 $D=533
M15 21 19 28 VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=20740 $Y=500 $D=533
M16 Q 19 VSS VNW_P nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=23060 $Y=500 $D=533
M17 29 D VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3200 $D=641
M18 12 16 29 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3200 $D=641
M19 15 14 12 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3200 $D=641
M20 15 16 15 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=4500 $Y=3200 $D=641
M21 VDD 17 15 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=5660 $Y=3200 $D=641
M22 17 SD VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=6820 $Y=3200 $D=641
M23 VDD 12 17 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=7980 $Y=3200 $D=641
M24 VDD 14 16 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=10300 $Y=3200 $D=641
M25 14 CK VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=11460 $Y=3200 $D=641
M26 18 17 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=13780 $Y=3200 $D=641
M27 18 CK 18 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=14940 $Y=3200 $D=641
M28 19 14 18 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=16100 $Y=3200 $D=641
M29 30 CK 19 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=17260 $Y=3200 $D=641
M30 VDD 21 30 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=18420 $Y=3200 $D=641
M31 21 SD VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=19580 $Y=3200 $D=641
M32 VDD 19 21 VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=20740 $Y=3200 $D=641
M33 Q 19 VDD VNW_P pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=23060 $Y=3200 $D=641
M34 16 VDD VDD VNW_P pfet_cnrx $X=9140 $Y=3200 $D=645
M35 VDD VDD 14 VNW_P pfet_cnrx $X=12620 $Y=3200 $D=645
M36 VDD VDD VDD VNW_P pfet_cnrx $X=21900 $Y=3200 $D=645
.ENDS
***************************************
.SUBCKT UDB116SVT24_BUF_1P5 A 2 X VSS VDD VNW_P
** N=12 EP=6 IP=0 FDC=6
*.CALIBRE ISOLATED NETS: VPW_N
M0 VSS A 2 VNW_P nfet L=2.8e-08 W=1.02e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=500 $D=533
M1 X 2 VSS VNW_P nfet L=2.8e-08 W=1.02e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=500 $D=533
M2 VSS 2 X VNW_P nfet L=2.8e-08 W=1.02e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=500 $D=533
M3 VDD A 2 VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=1020 $Y=3400 $D=641
M4 X 2 VDD VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=2180 $Y=3400 $D=641
M5 VDD 2 X VNW_P pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=3340 $Y=3400 $D=641
.ENDS
***************************************
.SUBCKT ICV_27 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
+ 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
+ 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80
+ 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100
+ 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120
+ 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140
+ 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160
+ 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180
+ 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200
+ 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220
+ 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240
+ 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260
+ 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280
+ 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300
+ 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321
+ 322 323 324 326 328 329 330 331 332 333 334 335 336 337 338 339 340 341 343 344
+ 345 346 347 348 349 350 351 353 354 355 356 357 358 362 363
*.CALIBRE ICV_CELL 2
** N=2890 EP=355 IP=8773 FDC=10201
M0 1 377 378 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=89180 $Y=184300 $D=533
M1 378 2 1 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=90340 $Y=184300 $D=533
M2 379 5 378 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=92660 $Y=184300 $D=533
M3 378 3 379 1 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=93820 $Y=184300 $D=533
M4 1 436 433 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=248100 $Y=183800 $D=533
M5 433 437 1 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=250420 $Y=183800 $D=533
M6 2227 39 433 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=251580 $Y=183800 $D=533
M7 1 445 2227 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=252740 $Y=183800 $D=533
M8 2228 447 1 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=257380 $Y=186300 $D=533
M9 2229 39 2228 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=258540 $Y=186300 $D=533
M10 449 41 2229 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=259700 $Y=186300 $D=533
M11 450 449 1 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=262020 $Y=186300 $D=533
M12 1 455 450 1 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=263180 $Y=186300 $D=533
M13 2230 377 91 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=89180 $Y=180900 $D=641
M14 379 2 2230 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=90340 $Y=180900 $D=641
M15 2231 5 379 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=92660 $Y=180900 $D=641
M16 91 3 2231 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=93820 $Y=180900 $D=641
M17 435 436 433 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=248100 $Y=180900 $D=641
M18 444 437 435 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=250420 $Y=180900 $D=641
M19 91 39 444 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=251580 $Y=180900 $D=641
M20 444 445 91 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=252740 $Y=180900 $D=641
M21 91 447 449 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=257380 $Y=189200 $D=641
M22 449 39 91 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=258540 $Y=189200 $D=641
M23 91 41 449 1 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=259700 $Y=189200 $D=641
M24 2253 449 450 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=262020 $Y=189000 $D=641
M25 91 455 2253 1 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=263180 $Y=189000 $D=641
M26 1 1101 1 1 nfet_auxpc2 $X=249260 $Y=183800 $D=537
M27 379 1096 379 1 pfet_auxpc2 $X=91500 $Y=180900 $D=643
M28 1932 91 91 1 pfet_cnrx $X=49740 $Y=178200 $D=645
M29 91 91 91 1 pfet_cnrx $X=49740 $Y=189000 $D=645
M30 91 91 119 1 pfet_cnrx $X=53220 $Y=178200 $D=645
M31 91 91 537 1 pfet_cnrx $X=54380 $Y=210600 $D=645
M32 91 91 538 1 pfet_cnrx $X=54380 $Y=221400 $D=645
M33 91 91 539 1 pfet_cnrx $X=54380 $Y=232200 $D=645
M34 91 91 540 1 pfet_cnrx $X=54380 $Y=243000 $D=645
M35 91 91 97 1 pfet_cnrx $X=54380 $Y=253800 $D=645
M36 91 91 568 1 pfet_cnrx $X=56700 $Y=199800 $D=645
M37 91 91 91 1 pfet_cnrx $X=60180 $Y=202500 $D=645
M38 91 91 642 1 pfet_cnrx $X=60180 $Y=210600 $D=645
M39 91 91 91 1 pfet_cnrx $X=60180 $Y=213300 $D=645
M40 91 91 91 1 pfet_cnrx $X=60180 $Y=224100 $D=645
M41 91 91 91 1 pfet_cnrx $X=60180 $Y=245700 $D=645
M42 91 91 646 1 pfet_cnrx $X=60180 $Y=253800 $D=645
M43 91 91 541 1 pfet_cnrx $X=64820 $Y=180900 $D=645
M44 91 91 542 1 pfet_cnrx $X=64820 $Y=191700 $D=645
M45 91 91 543 1 pfet_cnrx $X=64820 $Y=234900 $D=645
M46 91 91 732 1 pfet_cnrx $X=65980 $Y=202500 $D=645
M47 91 91 731 1 pfet_cnrx $X=65980 $Y=210600 $D=645
M48 91 91 569 1 pfet_cnrx $X=67140 $Y=221400 $D=645
M49 91 91 105 1 pfet_cnrx $X=67140 $Y=243000 $D=645
M50 91 91 690 1 pfet_cnrx $X=68300 $Y=199800 $D=645
M51 91 91 768 1 pfet_cnrx $X=68300 $Y=232200 $D=645
M52 91 91 590 1 pfet_cnrx $X=69460 $Y=253800 $D=645
M53 91 91 734 1 pfet_cnrx $X=71780 $Y=202500 $D=645
M54 91 91 733 1 pfet_cnrx $X=71780 $Y=210600 $D=645
M55 91 91 692 1 pfet_cnrx $X=71780 $Y=245700 $D=645
M56 91 91 843 1 pfet_cnrx $X=72940 $Y=189000 $D=645
M57 91 91 648 1 pfet_cnrx $X=74100 $Y=232200 $D=645
M58 91 91 136 1 pfet_cnrx $X=75260 $Y=253800 $D=645
M59 91 91 846 1 pfet_cnrx $X=76420 $Y=178200 $D=645
M60 91 91 591 1 pfet_cnrx $X=77580 $Y=199800 $D=645
M61 91 91 736 1 pfet_cnrx $X=77580 $Y=202500 $D=645
M62 91 91 735 1 pfet_cnrx $X=77580 $Y=210600 $D=645
M63 91 91 2183 1 pfet_cnrx $X=78740 $Y=232200 $D=645
M64 91 91 769 1 pfet_cnrx $X=78740 $Y=234900 $D=645
M65 91 91 694 1 pfet_cnrx $X=78740 $Y=243000 $D=645
M66 91 91 2185 1 pfet_cnrx $X=79900 $Y=253800 $D=645
M67 91 91 592 1 pfet_cnrx $X=81060 $Y=245700 $D=645
M68 91 91 737 1 pfet_cnrx $X=83380 $Y=202500 $D=645
M69 91 91 387 1 pfet_cnrx $X=83380 $Y=210600 $D=645
M70 91 91 849 1 pfet_cnrx $X=83380 $Y=213300 $D=645
M71 91 91 853 1 pfet_cnrx $X=83380 $Y=224100 $D=645
M72 91 91 739 1 pfet_cnrx $X=84540 $Y=234900 $D=645
M73 91 91 738 1 pfet_cnrx $X=84540 $Y=243000 $D=645
M74 91 91 857 1 pfet_cnrx $X=88020 $Y=191700 $D=645
M75 91 91 741 1 pfet_cnrx $X=89180 $Y=202500 $D=645
M76 91 91 740 1 pfet_cnrx $X=89180 $Y=210600 $D=645
M77 91 91 91 1 pfet_cnrx $X=90340 $Y=178500 $D=645
M78 91 91 861 1 pfet_cnrx $X=90340 $Y=221400 $D=645
M79 91 91 742 1 pfet_cnrx $X=90340 $Y=234900 $D=645
M80 91 91 161 1 pfet_cnrx $X=90340 $Y=243000 $D=645
M81 91 91 746 1 pfet_cnrx $X=96140 $Y=234900 $D=645
M82 91 91 745 1 pfet_cnrx $X=96140 $Y=243000 $D=645
M83 91 91 698 1 pfet_cnrx $X=101940 $Y=221400 $D=645
M84 91 91 613 1 pfet_cnrx $X=101940 $Y=232200 $D=645
M85 91 91 748 1 pfet_cnrx $X=101940 $Y=234900 $D=645
M86 91 91 747 1 pfet_cnrx $X=101940 $Y=243000 $D=645
M87 91 91 609 1 pfet_cnrx $X=104260 $Y=189000 $D=645
M88 91 91 385 1 pfet_cnrx $X=106580 $Y=213300 $D=645
M89 91 91 749 1 pfet_cnrx $X=107740 $Y=234900 $D=645
M90 1935 91 91 1 pfet_cnrx $X=108900 $Y=191700 $D=645
M91 91 91 611 1 pfet_cnrx $X=112380 $Y=191700 $D=645
M92 831 91 91 1 pfet_cnrx $X=114700 $Y=234900 $D=645
M93 91 91 121 1 pfet_cnrx $X=115860 $Y=178200 $D=645
M94 91 91 1040 1 pfet_cnrx $X=117020 $Y=202500 $D=645
M95 91 91 1041 1 pfet_cnrx $X=117020 $Y=210600 $D=645
M96 91 91 91 1 pfet_cnrx $X=119340 $Y=180900 $D=645
M97 91 91 381 1 pfet_cnrx $X=122820 $Y=202500 $D=645
M98 91 91 570 1 pfet_cnrx $X=123980 $Y=199800 $D=645
M99 1939 91 91 1 pfet_cnrx $X=123980 $Y=234900 $D=645
M100 91 91 1042 1 pfet_cnrx $X=125140 $Y=253800 $D=645
M101 91 91 91 1 pfet_cnrx $X=126300 $Y=178500 $D=645
M102 91 91 1043 1 pfet_cnrx $X=126300 $Y=245700 $D=645
M103 1940 91 91 1 pfet_cnrx $X=126300 $Y=253800 $D=645
M104 91 91 770 1 pfet_cnrx $X=127460 $Y=232200 $D=645
M105 91 91 122 1 pfet_cnrx $X=127460 $Y=234900 $D=645
M106 832 91 91 1 pfet_cnrx $X=128620 $Y=234900 $D=645
M107 91 91 571 1 pfet_cnrx $X=129780 $Y=210600 $D=645
M108 91 91 195 1 pfet_cnrx $X=129780 $Y=213300 $D=645
M109 91 91 1045 1 pfet_cnrx $X=129780 $Y=243000 $D=645
M110 91 91 614 1 pfet_cnrx $X=129780 $Y=253800 $D=645
M111 833 91 91 1 pfet_cnrx $X=130940 $Y=213300 $D=645
M112 91 91 1046 1 pfet_cnrx $X=133260 $Y=221400 $D=645
M113 1941 91 91 1 pfet_cnrx $X=134420 $Y=221400 $D=645
M114 91 91 615 1 pfet_cnrx $X=137900 $Y=221400 $D=645
M115 91 91 699 1 pfet_cnrx $X=137900 $Y=245700 $D=645
M116 191 91 91 1 pfet_cnrx $X=139060 $Y=245700 $D=645
M117 91 91 91 1 pfet_cnrx $X=141380 $Y=178500 $D=645
M118 91 91 1048 1 pfet_cnrx $X=141380 $Y=189000 $D=645
M119 91 91 91 1 pfet_cnrx $X=143700 $Y=178500 $D=645
M120 91 91 655 1 pfet_cnrx $X=144860 $Y=224100 $D=645
M121 91 91 835 1 pfet_cnrx $X=144860 $Y=232200 $D=645
M122 91 91 572 1 pfet_cnrx $X=147180 $Y=191700 $D=645
M123 91 91 573 1 pfet_cnrx $X=148340 $Y=199800 $D=645
M124 836 91 91 1 pfet_cnrx $X=148340 $Y=213300 $D=645
M125 91 91 752 1 pfet_cnrx $X=150660 $Y=224100 $D=645
M126 91 91 751 1 pfet_cnrx $X=150660 $Y=232200 $D=645
M127 91 91 545 1 pfet_cnrx $X=152980 $Y=178200 $D=645
M128 1732 91 91 1 pfet_cnrx $X=157620 $Y=200000 $D=645
M129 91 91 703 1 pfet_cnrx $X=158780 $Y=191700 $D=645
M130 1943 91 91 1 pfet_cnrx $X=159940 $Y=191700 $D=645
M131 91 91 91 1 pfet_cnrx $X=161100 $Y=180900 $D=645
M132 91 91 616 1 pfet_cnrx $X=163420 $Y=191700 $D=645
M133 91 91 167 1 pfet_cnrx $X=164580 $Y=232200 $D=645
M134 91 91 1050 1 pfet_cnrx $X=165740 $Y=202500 $D=645
M135 91 91 1051 1 pfet_cnrx $X=165740 $Y=210600 $D=645
M136 91 91 593 1 pfet_cnrx $X=165740 $Y=213300 $D=645
M137 91 91 1052 1 pfet_cnrx $X=165740 $Y=221400 $D=645
M138 91 91 816 1 pfet_cnrx $X=166900 $Y=253800 $D=645
M139 1945 91 91 1 pfet_cnrx $X=168060 $Y=253800 $D=645
M140 91 91 937 1 pfet_cnrx $X=169220 $Y=243000 $D=645
M141 91 91 938 1 pfet_cnrx $X=170380 $Y=189000 $D=645
M142 91 91 125 1 pfet_cnrx $X=171540 $Y=253800 $D=645
M143 91 91 594 1 pfet_cnrx $X=173860 $Y=232200 $D=645
M144 91 91 2192 1 pfet_cnrx $X=173860 $Y=243000 $D=645
M145 1053 91 91 1 pfet_cnrx $X=175020 $Y=189000 $D=645
M146 91 91 91 1 pfet_cnrx $X=176180 $Y=178500 $D=645
M147 91 91 618 1 pfet_cnrx $X=176180 $Y=199800 $D=645
M148 91 91 91 1 pfet_cnrx $X=178500 $Y=234900 $D=645
M149 390 91 91 1 pfet_cnrx $X=179660 $Y=210600 $D=645
M150 1949 91 91 1 pfet_cnrx $X=181980 $Y=243000 $D=645
M151 1951 91 91 1 pfet_cnrx $X=183140 $Y=199800 $D=645
M152 91 91 2245 1 pfet_cnrx $X=184300 $Y=210600 $D=645
M153 91 91 398 1 pfet_cnrx $X=185460 $Y=221400 $D=645
M154 91 91 619 1 pfet_cnrx $X=185460 $Y=243000 $D=645
M155 91 91 617 1 pfet_cnrx $X=186620 $Y=199800 $D=645
M156 2153 91 91 1 pfet_cnrx $X=186620 $Y=213300 $D=645
M157 91 91 622 1 pfet_cnrx $X=186620 $Y=234900 $D=645
M158 91 91 658 1 pfet_cnrx $X=187780 $Y=224100 $D=645
M159 91 91 138 1 pfet_cnrx $X=187780 $Y=232200 $D=645
M160 91 91 2193 1 pfet_cnrx $X=192420 $Y=232200 $D=645
M161 2156 91 91 1 pfet_cnrx $X=197060 $Y=189200 $D=645
M162 91 91 91 1 pfet_cnrx $X=198220 $Y=202500 $D=645
M163 91 91 91 1 pfet_cnrx $X=200540 $Y=210600 $D=645
M164 91 91 1054 1 pfet_cnrx $X=201700 $Y=178200 $D=645
M165 625 91 91 1 pfet_cnrx $X=202860 $Y=189000 $D=645
M166 91 91 623 1 pfet_cnrx $X=204020 $Y=253800 $D=645
M167 91 91 394 1 pfet_cnrx $X=205180 $Y=180900 $D=645
M168 91 91 91 1 pfet_cnrx $X=206340 $Y=191700 $D=645
M169 91 91 91 1 pfet_cnrx $X=207500 $Y=200100 $D=645
M170 91 91 91 1 pfet_cnrx $X=207500 $Y=234900 $D=645
M171 91 91 2196 1 pfet_cnrx $X=209820 $Y=180900 $D=645
M172 91 91 91 1 pfet_cnrx $X=210980 $Y=189300 $D=645
M173 420 91 91 1 pfet_cnrx $X=210980 $Y=232200 $D=645
M174 91 91 91 1 pfet_cnrx $X=212140 $Y=200100 $D=645
M175 91 91 627 1 pfet_cnrx $X=214460 $Y=191700 $D=645
M176 91 91 107 1 pfet_cnrx $X=217940 $Y=189000 $D=645
M177 91 91 1055 1 pfet_cnrx $X=217940 $Y=243000 $D=645
M178 91 91 203 1 pfet_cnrx $X=219100 $Y=178200 $D=645
M179 783 91 91 1 pfet_cnrx $X=222580 $Y=189000 $D=645
M180 91 91 2198 1 pfet_cnrx $X=222580 $Y=202500 $D=645
M181 192 91 91 1 pfet_cnrx $X=223740 $Y=202500 $D=645
M182 91 91 91 1 pfet_cnrx $X=223740 $Y=224100 $D=645
M183 1739 91 91 1 pfet_cnrx $X=223740 $Y=232400 $D=645
M184 91 91 91 1 pfet_cnrx $X=227220 $Y=224100 $D=645
M185 91 91 628 1 pfet_cnrx $X=236500 $Y=245700 $D=645
M186 91 91 1058 1 pfet_cnrx $X=237660 $Y=199800 $D=645
M187 91 91 209 1 pfet_cnrx $X=237660 $Y=253800 $D=645
M188 91 91 91 1 pfet_cnrx $X=241140 $Y=213300 $D=645
M189 91 91 409 1 pfet_cnrx $X=242300 $Y=234900 $D=645
M190 91 91 1909 1 pfet_cnrx $X=242300 $Y=245700 $D=645
M191 91 91 91 1 pfet_cnrx $X=244620 $Y=213300 $D=645
M192 91 91 115 1 pfet_cnrx $X=244620 $Y=245700 $D=645
M193 91 91 91 1 pfet_cnrx $X=249260 $Y=189000 $D=645
M194 91 91 91 1 pfet_cnrx $X=249260 $Y=199800 $D=645
M195 91 91 91 1 pfet_cnrx $X=249260 $Y=210600 $D=645
M196 91 91 91 1 pfet_cnrx $X=249260 $Y=221400 $D=645
M197 91 91 91 1 pfet_cnrx $X=249260 $Y=232200 $D=645
M198 91 91 91 1 pfet_cnrx $X=249260 $Y=234900 $D=645
M199 91 91 91 1 pfet_cnrx $X=249260 $Y=243000 $D=645
M200 2249 91 91 1 pfet_cnrx $X=250420 $Y=221400 $D=645
M201 91 91 91 1 pfet_cnrx $X=251580 $Y=178500 $D=645
M202 91 91 2250 1 pfet_cnrx $X=251580 $Y=224100 $D=645
M203 91 91 91 1 pfet_cnrx $X=252740 $Y=202500 $D=645
M204 91 91 444 1 pfet_cnrx $X=253900 $Y=180900 $D=645
M205 91 91 91 1 pfet_cnrx $X=256220 $Y=178500 $D=645
M206 91 91 575 1 pfet_cnrx $X=262020 $Y=224100 $D=645
M207 91 91 289 1 pfet_cnrx $X=263180 $Y=178200 $D=645
M208 91 91 1059 1 pfet_cnrx $X=266660 $Y=245700 $D=645
M209 91 91 91 1 pfet_cnrx $X=267820 $Y=189300 $D=645
M210 91 91 91 1 pfet_cnrx $X=267820 $Y=234900 $D=645
M211 91 91 1060 1 pfet_cnrx $X=272460 $Y=243000 $D=645
M212 1744 91 91 1 pfet_cnrx $X=273620 $Y=210800 $D=645
M213 91 91 99 1 pfet_cnrx $X=275940 $Y=189000 $D=645
M214 91 91 1061 1 pfet_cnrx $X=277100 $Y=213300 $D=645
M215 91 91 1062 1 pfet_cnrx $X=277100 $Y=221400 $D=645
M216 91 91 707 1 pfet_cnrx $X=278260 $Y=245700 $D=645
M217 1746 91 91 1 pfet_cnrx $X=284060 $Y=221600 $D=645
M218 91 91 577 1 pfet_cnrx $X=286380 $Y=199800 $D=645
M219 91 91 629 1 pfet_cnrx $X=287540 $Y=253800 $D=645
M220 130 91 91 1 pfet_cnrx $X=288700 $Y=178200 $D=645
M221 91 91 109 1 pfet_cnrx $X=288700 $Y=189000 $D=645
M222 91 91 429 1 pfet_cnrx $X=288700 $Y=221400 $D=645
M223 1068 91 91 1 pfet_cnrx $X=288700 $Y=253800 $D=645
M224 91 91 662 1 pfet_cnrx $X=291020 $Y=210600 $D=645
M225 91 91 1065 1 pfet_cnrx $X=293340 $Y=180900 $D=645
M226 91 91 464 1 pfet_cnrx $X=294500 $Y=200000 $D=645
M227 1967 91 91 1 pfet_cnrx $X=295660 $Y=189000 $D=645
M228 91 91 2202 1 pfet_cnrx $X=295660 $Y=210600 $D=645
M229 91 91 210 1 pfet_cnrx $X=295660 $Y=234900 $D=645
M230 91 91 1066 1 pfet_cnrx $X=295660 $Y=243000 $D=645
M231 91 91 46 1 pfet_cnrx $X=295660 $Y=245700 $D=645
M232 91 91 943 1 pfet_cnrx $X=297980 $Y=202500 $D=645
M233 91 91 631 1 pfet_cnrx $X=299140 $Y=189000 $D=645
M234 91 91 754 1 pfet_cnrx $X=301460 $Y=234900 $D=645
M235 91 91 753 1 pfet_cnrx $X=301460 $Y=243000 $D=645
M236 91 91 142 1 pfet_cnrx $X=301460 $Y=245700 $D=645
M237 91 91 91 1 pfet_cnrx $X=302620 $Y=191700 $D=645
M238 1969 91 91 1 pfet_cnrx $X=302620 $Y=234900 $D=645
M239 91 91 630 1 pfet_cnrx $X=306100 $Y=224100 $D=645
M240 91 91 44 1 pfet_cnrx $X=306100 $Y=232200 $D=645
M241 91 91 633 1 pfet_cnrx $X=306100 $Y=234900 $D=645
M242 91 91 578 1 pfet_cnrx $X=307260 $Y=221400 $D=645
M243 838 91 91 1 pfet_cnrx $X=307260 $Y=232200 $D=645
M244 91 91 472 1 pfet_cnrx $X=313060 $Y=191700 $D=645
M245 91 91 1069 1 pfet_cnrx $X=314220 $Y=178200 $D=645
M246 91 91 1070 1 pfet_cnrx $X=316540 $Y=180900 $D=645
M247 91 91 91 1 pfet_cnrx $X=316540 $Y=243300 $D=645
M248 91 91 2205 1 pfet_cnrx $X=317700 $Y=191700 $D=645
M249 91 91 2206 1 pfet_cnrx $X=318860 $Y=178200 $D=645
M250 91 91 101 1 pfet_cnrx $X=321180 $Y=245700 $D=645
M251 91 91 91 1 pfet_cnrx $X=323500 $Y=234900 $D=645
M252 91 91 2257 1 pfet_cnrx $X=324660 $Y=180900 $D=645
M253 91 91 775 1 pfet_cnrx $X=324660 $Y=199800 $D=645
M254 91 91 549 1 pfet_cnrx $X=324660 $Y=243000 $D=645
M255 91 91 91 1 pfet_cnrx $X=325820 $Y=232500 $D=645
M256 91 91 668 1 pfet_cnrx $X=326980 $Y=245700 $D=645
M257 475 91 91 1 pfet_cnrx $X=331620 $Y=180900 $D=645
M258 91 91 1073 1 pfet_cnrx $X=332780 $Y=210600 $D=645
M259 1758 91 91 1 pfet_cnrx $X=332780 $Y=243200 $D=645
M260 91 91 91 1 pfet_cnrx $X=333940 $Y=210600 $D=645
M261 91 91 1075 1 pfet_cnrx $X=333940 $Y=213300 $D=645
M262 91 91 776 1 pfet_cnrx $X=333940 $Y=232200 $D=645
M263 91 91 712 1 pfet_cnrx $X=336260 $Y=199800 $D=645
M264 91 91 132 1 pfet_cnrx $X=336260 $Y=253800 $D=645
M265 91 91 551 1 pfet_cnrx $X=337420 $Y=243000 $D=645
M266 91 91 2207 1 pfet_cnrx $X=340900 $Y=199800 $D=645
M267 91 91 91 1 pfet_cnrx $X=342060 $Y=202500 $D=645
M268 91 91 635 1 pfet_cnrx $X=343220 $Y=253800 $D=645
M269 91 91 487 1 pfet_cnrx $X=344380 $Y=180900 $D=645
M270 91 91 91 1 pfet_cnrx $X=345540 $Y=202500 $D=645
M271 91 91 478 1 pfet_cnrx $X=345540 $Y=213300 $D=645
M272 91 91 91 1 pfet_cnrx $X=346700 $Y=232500 $D=645
M273 1764 91 91 1 pfet_cnrx $X=346700 $Y=254000 $D=645
M274 91 91 91 1 pfet_cnrx $X=347860 $Y=189300 $D=645
M275 91 91 91 1 pfet_cnrx $X=350180 $Y=191700 $D=645
M276 91 91 91 1 pfet_cnrx $X=351340 $Y=189300 $D=645
M277 91 91 91 1 pfet_cnrx $X=351340 $Y=232500 $D=645
M278 91 91 555 1 pfet_cnrx $X=353660 $Y=202500 $D=645
M279 91 91 91 1 pfet_cnrx $X=353660 $Y=245700 $D=645
M280 91 91 110 1 pfet_cnrx $X=358300 $Y=232200 $D=645
M281 91 91 556 1 pfet_cnrx $X=359460 $Y=234900 $D=645
M282 91 91 1974 1 pfet_cnrx $X=360620 $Y=178200 $D=645
M283 91 91 91 1 pfet_cnrx $X=360620 $Y=243300 $D=645
M284 1015 91 91 1 pfet_cnrx $X=361780 $Y=189000 $D=645
M285 91 91 596 1 pfet_cnrx $X=362940 $Y=213300 $D=645
M286 91 91 1975 1 pfet_cnrx $X=362940 $Y=224100 $D=645
M287 91 91 145 1 pfet_cnrx $X=365260 $Y=234900 $D=645
M288 91 91 2264 1 pfet_cnrx $X=366420 $Y=189000 $D=645
M289 91 91 580 1 pfet_cnrx $X=367580 $Y=253800 $D=645
M290 91 91 91 1 pfet_cnrx $X=371060 $Y=234900 $D=645
M291 91 91 560 1 pfet_cnrx $X=378020 $Y=232200 $D=645
M292 91 91 1078 1 pfet_cnrx $X=380340 $Y=210600 $D=645
M293 91 91 1079 1 pfet_cnrx $X=381500 $Y=202500 $D=645
M294 91 91 1080 1 pfet_cnrx $X=386140 $Y=221400 $D=645
M295 91 91 103 1 pfet_cnrx $X=386140 $Y=234900 $D=645
M296 91 91 1081 1 pfet_cnrx $X=390780 $Y=213300 $D=645
M297 91 91 2182 1 pfet_cnrx $X=391940 $Y=180900 $D=645
M298 91 91 1082 1 pfet_cnrx $X=394260 $Y=224100 $D=645
M299 91 91 1083 1 pfet_cnrx $X=395420 $Y=245700 $D=645
M300 91 91 777 1 pfet_cnrx $X=396580 $Y=243000 $D=645
M301 91 91 883 1 pfet_cnrx $X=401220 $Y=232200 $D=645
M302 91 91 582 1 pfet_cnrx $X=402380 $Y=234900 $D=645
M303 91 91 676 1 pfet_cnrx $X=402380 $Y=243000 $D=645
M304 91 91 886 1 pfet_cnrx $X=403540 $Y=210600 $D=645
M305 91 91 1085 1 pfet_cnrx $X=404700 $Y=191700 $D=645
M306 91 91 1086 1 pfet_cnrx $X=404700 $Y=199800 $D=645
M307 91 91 583 1 pfet_cnrx $X=405860 $Y=202500 $D=645
M308 91 91 1087 1 pfet_cnrx $X=408180 $Y=189000 $D=645
M309 91 91 756 1 pfet_cnrx $X=408180 $Y=234900 $D=645
M310 91 91 755 1 pfet_cnrx $X=408180 $Y=243000 $D=645
M311 91 91 889 1 pfet_cnrx $X=409340 $Y=221400 $D=645
M312 91 91 506 1 pfet_cnrx $X=410500 $Y=191700 $D=645
M313 91 91 81 1 pfet_cnrx $X=410500 $Y=199800 $D=645
M314 1782 91 91 1 pfet_cnrx $X=410500 $Y=210800 $D=645
M315 91 91 2269 1 pfet_cnrx $X=412820 $Y=178200 $D=645
M316 91 91 718 1 pfet_cnrx $X=412820 $Y=232200 $D=645
M317 91 91 892 1 pfet_cnrx $X=413980 $Y=213300 $D=645
M318 1977 91 91 1 pfet_cnrx $X=413980 $Y=232200 $D=645
M319 91 91 561 1 pfet_cnrx $X=415140 $Y=210600 $D=645
M320 91 91 758 1 pfet_cnrx $X=416300 $Y=191700 $D=645
M321 91 91 757 1 pfet_cnrx $X=416300 $Y=199800 $D=645
M322 2270 91 91 1 pfet_cnrx $X=417460 $Y=178200 $D=645
M323 2271 91 91 1 pfet_cnrx $X=417460 $Y=180900 $D=645
M324 91 91 719 1 pfet_cnrx $X=417460 $Y=202500 $D=645
M325 91 91 895 1 pfet_cnrx $X=417460 $Y=224100 $D=645
M326 91 91 638 1 pfet_cnrx $X=417460 $Y=232200 $D=645
M327 91 91 598 1 pfet_cnrx $X=417460 $Y=234900 $D=645
M328 1978 91 91 1 pfet_cnrx $X=418620 $Y=232200 $D=645
M329 91 91 720 1 pfet_cnrx $X=419780 $Y=189000 $D=645
M330 91 91 1088 1 pfet_cnrx $X=419780 $Y=253800 $D=645
M331 91 91 778 1 pfet_cnrx $X=420940 $Y=245700 $D=645
M332 91 91 759 1 pfet_cnrx $X=422100 $Y=191700 $D=645
M333 91 91 163 1 pfet_cnrx $X=422100 $Y=199800 $D=645
M334 91 91 640 1 pfet_cnrx $X=422100 $Y=232200 $D=645
M335 91 91 147 1 pfet_cnrx $X=423260 $Y=234900 $D=645
M336 91 91 919 1 pfet_cnrx $X=425580 $Y=243000 $D=645
M337 91 91 599 1 pfet_cnrx $X=426740 $Y=202500 $D=645
M338 91 91 500 1 pfet_cnrx $X=426740 $Y=210600 $D=645
M339 91 91 761 1 pfet_cnrx $X=427900 $Y=191700 $D=645
M340 91 91 760 1 pfet_cnrx $X=427900 $Y=199800 $D=645
M341 91 91 85 1 pfet_cnrx $X=430220 $Y=178200 $D=645
M342 91 91 2211 1 pfet_cnrx $X=430220 $Y=243000 $D=645
M343 91 91 722 1 pfet_cnrx $X=431380 $Y=253800 $D=645
M344 91 91 562 1 pfet_cnrx $X=432540 $Y=189000 $D=645
M345 91 91 164 1 pfet_cnrx $X=432540 $Y=202500 $D=645
M346 91 91 762 1 pfet_cnrx $X=432540 $Y=210600 $D=645
M347 91 91 898 1 pfet_cnrx $X=432540 $Y=221400 $D=645
M348 91 91 600 1 pfet_cnrx $X=432540 $Y=234900 $D=645
M349 91 91 764 1 pfet_cnrx $X=433700 $Y=191700 $D=645
M350 91 91 763 1 pfet_cnrx $X=433700 $Y=199800 $D=645
M351 91 91 159 1 pfet_cnrx $X=433700 $Y=232200 $D=645
M352 91 91 2213 1 pfet_cnrx $X=436020 $Y=253800 $D=645
M353 91 91 197 1 pfet_cnrx $X=437180 $Y=213300 $D=645
M354 91 91 677 1 pfet_cnrx $X=438340 $Y=189000 $D=645
M355 91 91 678 1 pfet_cnrx $X=438340 $Y=221400 $D=645
M356 91 91 2890 1 pfet_cnrx $X=438340 $Y=178200 $D=645
M357 1981 91 91 1 pfet_cnrx $X=439500 $Y=210600 $D=645
M358 91 91 2215 1 pfet_cnrx $X=442980 $Y=189000 $D=645
M359 91 91 601 1 pfet_cnrx $X=442980 $Y=232200 $D=645
M360 91 91 91 1 pfet_cnrx $X=445300 $Y=210900 $D=645
M361 91 91 91 1 pfet_cnrx $X=451100 $Y=180900 $D=645
M362 91 91 563 1 pfet_cnrx $X=453420 $Y=191700 $D=645
M363 91 91 564 1 pfet_cnrx $X=453420 $Y=213300 $D=645
M364 91 91 565 1 pfet_cnrx $X=453420 $Y=224100 $D=645
M365 91 91 566 1 pfet_cnrx $X=453420 $Y=245700 $D=645
M366 840 91 91 1 pfet_cnrx $X=461540 $Y=180900 $D=645
M367 91 91 586 1 pfet_cnrx $X=466180 $Y=191700 $D=645
M368 91 91 91 1 pfet_cnrx $X=466180 $Y=202500 $D=645
M369 91 91 1089 1 pfet_cnrx $X=469660 $Y=178200 $D=645
M370 91 91 1090 1 pfet_cnrx $X=469660 $Y=221400 $D=645
M371 91 91 1091 1 pfet_cnrx $X=469660 $Y=243000 $D=645
M372 91 91 1092 1 pfet_cnrx $X=470820 $Y=189000 $D=645
M373 91 91 685 1 pfet_cnrx $X=470820 $Y=213300 $D=645
M374 91 91 1093 1 pfet_cnrx $X=470820 $Y=232200 $D=645
M375 91 91 928 1 pfet_cnrx $X=470820 $Y=245700 $D=645
M376 91 91 1094 1 pfet_cnrx $X=470820 $Y=253800 $D=645
M377 91 91 91 1 pfet_cnrx $X=471980 $Y=202500 $D=645
M378 91 91 587 1 pfet_cnrx $X=471980 $Y=224100 $D=645
M379 91 91 779 1 pfet_cnrx $X=476620 $Y=199800 $D=645
M380 91 91 941 1 pfet_cnrx $X=476620 $Y=234900 $D=645
M381 91 91 165 1 pfet_cnrx $X=476620 $Y=245700 $D=645
M382 91 91 765 1 pfet_cnrx $X=476620 $Y=253800 $D=645
M383 91 91 520 1 pfet_cnrx $X=478940 $Y=178200 $D=645
M384 91 91 728 1 pfet_cnrx $X=481260 $Y=243000 $D=645
M385 91 91 729 1 pfet_cnrx $X=482420 $Y=232200 $D=645
M386 91 91 931 1 pfet_cnrx $X=483580 $Y=191700 $D=645
M387 91 91 686 1 pfet_cnrx $X=484740 $Y=178200 $D=645
M388 91 91 588 1 pfet_cnrx $X=487060 $Y=213300 $D=645
M389 567 91 91 1 pfet_cnrx $X=488220 $Y=243000 $D=645
M390 91 91 936 1 pfet_cnrx $X=489380 $Y=224100 $D=645
M391 91 91 91 1 pfet_cnrx $X=489380 $Y=232200 $D=645
M392 91 91 91 1 pfet_cnrx $X=489380 $Y=234900 $D=645
M393 91 91 589 1 pfet_cnrx $X=492860 $Y=210600 $D=645
M394 91 91 687 1 pfet_cnrx $X=492860 $Y=213300 $D=645
M395 91 91 780 1 pfet_cnrx $X=494020 $Y=180900 $D=645
M396 91 91 903 1 pfet_cnrx $X=494020 $Y=189000 $D=645
M397 91 91 781 1 pfet_cnrx $X=495180 $Y=221400 $D=645
M398 91 91 767 1 pfet_cnrx $X=495180 $Y=224100 $D=645
M399 91 91 766 1 pfet_cnrx $X=495180 $Y=232200 $D=645
M400 2275 91 91 1 pfet_cnrx $X=497500 $Y=191700 $D=645
M401 91 91 782 1 pfet_cnrx $X=498660 $Y=202500 $D=645
M402 91 91 688 1 pfet_cnrx $X=498660 $Y=210600 $D=645
M403 91 91 2276 1 pfet_cnrx $X=511420 $Y=245700 $D=645
M404 2277 91 91 1 pfet_cnrx $X=519540 $Y=243000 $D=645
M405 91 91 91 1 pfet_cnrx $X=531140 $Y=180900 $D=645
M406 2278 91 91 1 pfet_cnrx $X=532300 $Y=180900 $D=645
M407 91 91 91 1 pfet_cnrx $X=532300 $Y=221400 $D=645
M408 91 91 91 1 pfet_cnrx $X=532300 $Y=232200 $D=645
M409 91 91 91 1 pfet_cnrx $X=535780 $Y=210600 $D=645
M410 91 91 91 1 pfet_cnrx $X=543900 $Y=191700 $D=645
M411 91 91 91 1 pfet_cnrx $X=543900 $Y=253800 $D=645
M412 91 91 91 1 pfet_cnrx $X=550860 $Y=199800 $D=645
M413 91 91 91 1 pfet_cnrx $X=550860 $Y=221400 $D=645
M414 91 91 91 1 pfet_cnrx $X=550860 $Y=232200 $D=645
M415 91 91 91 1 pfet_cnrx $X=554340 $Y=210600 $D=645
M416 91 91 91 1 pfet_cnrx $X=554340 $Y=243000 $D=645
M417 91 91 91 1 pfet_cnrx $X=558980 $Y=178200 $D=645
M418 91 91 91 1 pfet_cnrx $X=562460 $Y=191700 $D=645
M419 91 91 91 1 pfet_cnrx $X=562460 $Y=253800 $D=645
M420 91 91 91 1 pfet_cnrx $X=563620 $Y=234900 $D=645
M421 91 91 91 1 pfet_cnrx $X=567100 $Y=213300 $D=645
M422 91 91 91 1 pfet_cnrx $X=569420 $Y=224100 $D=645
M423 91 91 91 1 pfet_cnrx $X=572900 $Y=202500 $D=645
M424 91 91 91 1 pfet_cnrx $X=577540 $Y=234900 $D=645
M425 91 91 91 1 pfet_cnrx $X=578700 $Y=178200 $D=645
M426 91 91 91 1 pfet_cnrx $X=578700 $Y=180900 $D=645
M427 91 91 91 1 pfet_cnrx $X=578700 $Y=189000 $D=645
M428 91 91 91 1 pfet_cnrx $X=578700 $Y=199800 $D=645
M429 91 91 91 1 pfet_cnrx $X=578700 $Y=202500 $D=645
M430 91 91 91 1 pfet_cnrx $X=578700 $Y=210600 $D=645
M431 91 91 91 1 pfet_cnrx $X=578700 $Y=221400 $D=645
M432 91 91 91 1 pfet_cnrx $X=578700 $Y=224100 $D=645
M433 91 91 91 1 pfet_cnrx $X=578700 $Y=232200 $D=645
M434 91 91 91 1 pfet_cnrx $X=578700 $Y=234900 $D=645
M435 91 91 91 1 pfet_cnrx $X=578700 $Y=243000 $D=645
M436 91 91 91 1 pfet_cnrx $X=578700 $Y=245700 $D=645
M437 91 91 91 1 pfet_cnrx $X=578700 $Y=253800 $D=645
M438 91 91 91 1 pfet_cnrx $X=49740 $Y=180900 $D=646
M439 91 91 91 1 pfet_cnrx $X=49740 $Y=191700 $D=646
M440 91 91 91 1 pfet_cnrx $X=49740 $Y=200100 $D=646
M441 91 91 91 1 pfet_cnrx $X=49740 $Y=202500 $D=646
M442 1710 91 91 1 pfet_cnrx $X=49740 $Y=210800 $D=646
M443 91 91 91 1 pfet_cnrx $X=49740 $Y=213300 $D=646
M444 1712 91 91 1 pfet_cnrx $X=49740 $Y=221600 $D=646
M445 91 91 91 1 pfet_cnrx $X=49740 $Y=224100 $D=646
M446 1714 91 91 1 pfet_cnrx $X=49740 $Y=232400 $D=646
M447 91 91 91 1 pfet_cnrx $X=49740 $Y=234900 $D=646
M448 1716 91 91 1 pfet_cnrx $X=49740 $Y=243200 $D=646
M449 91 91 91 1 pfet_cnrx $X=49740 $Y=245700 $D=646
M450 1718 91 91 1 pfet_cnrx $X=49740 $Y=254000 $D=646
M451 1720 91 91 1 pfet_cnrx $X=60180 $Y=180900 $D=646
M452 1722 91 91 1 pfet_cnrx $X=60180 $Y=191700 $D=646
M453 91 91 643 1 pfet_cnrx $X=60180 $Y=221700 $D=646
M454 91 91 644 1 pfet_cnrx $X=60180 $Y=232500 $D=646
M455 1724 91 91 1 pfet_cnrx $X=60180 $Y=234900 $D=646
M456 91 91 645 1 pfet_cnrx $X=60180 $Y=243300 $D=646
M457 91 91 647 1 pfet_cnrx $X=70620 $Y=234900 $D=646
M458 91 91 906 1 pfet_cnrx $X=82220 $Y=180900 $D=646
M459 91 91 149 1 pfet_cnrx $X=88020 $Y=178500 $D=646
M460 91 91 91 1 pfet_cnrx $X=88020 $Y=180900 $D=646
M461 91 91 91 1 pfet_cnrx $X=94980 $Y=180900 $D=646
M462 91 91 909 1 pfet_cnrx $X=94980 $Y=200000 $D=646
M463 91 91 744 1 pfet_cnrx $X=94980 $Y=202500 $D=646
M464 91 91 743 1 pfet_cnrx $X=94980 $Y=210800 $D=646
M465 1727 91 91 1 pfet_cnrx $X=96140 $Y=178500 $D=646
M466 91 91 865 1 pfet_cnrx $X=96140 $Y=189300 $D=646
M467 91 91 696 1 pfet_cnrx $X=99620 $Y=191700 $D=646
M468 91 91 544 1 pfet_cnrx $X=100780 $Y=178500 $D=646
M469 1934 91 91 1 pfet_cnrx $X=100780 $Y=189300 $D=646
M470 91 91 870 1 pfet_cnrx $X=103100 $Y=254000 $D=646
M471 2148 91 91 1 pfet_cnrx $X=104260 $Y=178500 $D=646
M472 91 91 91 1 pfet_cnrx $X=104260 $Y=191700 $D=646
M473 91 91 194 1 pfet_cnrx $X=104260 $Y=245700 $D=646
M474 91 91 91 1 pfet_cnrx $X=105420 $Y=191700 $D=646
M475 2232 91 91 1 pfet_cnrx $X=105420 $Y=189100 $D=646
M476 91 91 878 1 pfet_cnrx $X=106580 $Y=224100 $D=646
M477 91 91 380 1 pfet_cnrx $X=107740 $Y=191700 $D=646
M478 91 91 162 1 pfet_cnrx $X=107740 $Y=243200 $D=646
M479 113 91 91 1 pfet_cnrx $X=110060 $Y=178400 $D=646
M480 91 91 111 1 pfet_cnrx $X=111220 $Y=221600 $D=646
M481 91 91 2232 1 pfet_cnrx $X=111220 $Y=189100 $D=646
M482 1937 91 91 1 pfet_cnrx $X=112380 $Y=178400 $D=646
M483 2233 91 91 1 pfet_cnrx $X=112380 $Y=189100 $D=646
M484 91 91 1038 1 pfet_cnrx $X=117020 $Y=180900 $D=646
M485 91 91 1039 1 pfet_cnrx $X=117020 $Y=200100 $D=646
M486 91 91 649 1 pfet_cnrx $X=118180 $Y=191700 $D=646
M487 91 91 2233 1 pfet_cnrx $X=118180 $Y=189100 $D=646
M488 91 91 91 1 pfet_cnrx $X=119340 $Y=189200 $D=646
M489 91 91 198 1 pfet_cnrx $X=119340 $Y=232500 $D=646
M490 91 91 650 1 pfet_cnrx $X=121660 $Y=178500 $D=646
M491 91 91 750 1 pfet_cnrx $X=122820 $Y=210900 $D=646
M492 91 91 2234 1 pfet_cnrx $X=122820 $Y=234900 $D=646
M493 91 91 91 1 pfet_cnrx $X=123980 $Y=180900 $D=646
M494 2235 91 91 1 pfet_cnrx $X=125140 $Y=180900 $D=646
M495 2149 91 91 1 pfet_cnrx $X=127460 $Y=202500 $D=646
M496 91 91 1044 1 pfet_cnrx $X=128620 $Y=224100 $D=646
M497 2237 91 91 1 pfet_cnrx $X=129780 $Y=178500 $D=646
M498 834 91 91 1 pfet_cnrx $X=130940 $Y=224100 $D=646
M499 91 91 2235 1 pfet_cnrx $X=130940 $Y=180900 $D=646
M500 2236 91 91 1 pfet_cnrx $X=130940 $Y=253900 $D=646
M501 603 91 91 1 pfet_cnrx $X=133260 $Y=202500 $D=646
M502 91 91 651 1 pfet_cnrx $X=133260 $Y=232500 $D=646
M503 91 91 91 1 pfet_cnrx $X=135580 $Y=202500 $D=646
M504 91 91 652 1 pfet_cnrx $X=135580 $Y=210900 $D=646
M505 91 91 2237 1 pfet_cnrx $X=135580 $Y=178300 $D=646
M506 91 91 91 1 pfet_cnrx $X=136740 $Y=178500 $D=646
M507 91 91 137 1 pfet_cnrx $X=136740 $Y=180900 $D=646
M508 2289 91 91 1 pfet_cnrx $X=136740 $Y=232500 $D=646
M509 91 91 2238 1 pfet_cnrx $X=136740 $Y=234900 $D=646
M510 91 91 189 1 pfet_cnrx $X=139060 $Y=254000 $D=646
M511 91 91 2288 1 pfet_cnrx $X=139060 $Y=213300 $D=646
M512 91 91 2239 1 pfet_cnrx $X=139060 $Y=224100 $D=646
M513 91 91 1047 1 pfet_cnrx $X=140220 $Y=191700 $D=646
M514 91 91 200 1 pfet_cnrx $X=141380 $Y=200100 $D=646
M515 91 91 701 1 pfet_cnrx $X=141380 $Y=243200 $D=646
M516 91 91 91 1 pfet_cnrx $X=142540 $Y=189200 $D=646
M517 2150 91 91 1 pfet_cnrx $X=142540 $Y=213300 $D=646
M518 91 91 653 1 pfet_cnrx $X=142540 $Y=234900 $D=646
M519 91 91 771 1 pfet_cnrx $X=143700 $Y=202500 $D=646
M520 91 91 772 1 pfet_cnrx $X=143700 $Y=210800 $D=646
M521 91 91 654 1 pfet_cnrx $X=143700 $Y=221600 $D=646
M522 91 91 2240 1 pfet_cnrx $X=147180 $Y=245700 $D=646
M523 1729 91 91 1 pfet_cnrx $X=148340 $Y=178500 $D=646
M524 91 91 2188 1 pfet_cnrx $X=151820 $Y=245700 $D=646
M525 384 91 91 1 pfet_cnrx $X=155300 $Y=200000 $D=646
M526 91 91 656 1 pfet_cnrx $X=156460 $Y=232500 $D=646
M527 91 91 2241 1 pfet_cnrx $X=156460 $Y=213300 $D=646
M528 91 91 1049 1 pfet_cnrx $X=158780 $Y=180900 $D=646
M529 91 91 18 1 pfet_cnrx $X=159940 $Y=224100 $D=646
M530 2242 91 91 1 pfet_cnrx $X=159940 $Y=178300 $D=646
M531 91 91 12 1 pfet_cnrx $X=162260 $Y=200100 $D=646
M532 91 91 91 1 pfet_cnrx $X=165740 $Y=180900 $D=646
M533 91 91 2242 1 pfet_cnrx $X=165740 $Y=178300 $D=646
M534 91 91 91 1 pfet_cnrx $X=166900 $Y=202500 $D=646
M535 91 91 389 1 pfet_cnrx $X=166900 $Y=224100 $D=646
M536 2243 91 91 1 pfet_cnrx $X=166900 $Y=180900 $D=646
M537 91 91 657 1 pfet_cnrx $X=169220 $Y=191700 $D=646
M538 91 91 574 1 pfet_cnrx $X=169220 $Y=200100 $D=646
M539 6 91 91 1 pfet_cnrx $X=170380 $Y=178400 $D=646
M540 91 91 2190 1 pfet_cnrx $X=170380 $Y=210900 $D=646
M541 91 91 91 1 pfet_cnrx $X=170380 $Y=224100 $D=646
M542 91 91 208 1 pfet_cnrx $X=170380 $Y=234900 $D=646
M543 963 91 91 1 pfet_cnrx $X=170380 $Y=221600 $D=646
M544 25 91 91 1 pfet_cnrx $X=171540 $Y=189200 $D=646
M545 91 91 91 1 pfet_cnrx $X=172700 $Y=178500 $D=646
M546 1947 91 91 1 pfet_cnrx $X=172700 $Y=200100 $D=646
M547 91 91 91 1 pfet_cnrx $X=172700 $Y=213300 $D=646
M548 91 91 114 1 pfet_cnrx $X=172700 $Y=224100 $D=646
M549 396 91 91 1 pfet_cnrx $X=172700 $Y=234900 $D=646
M550 91 91 2243 1 pfet_cnrx $X=172700 $Y=180900 $D=646
M551 91 91 91 1 pfet_cnrx $X=173860 $Y=189200 $D=646
M552 2152 91 91 1 pfet_cnrx $X=173860 $Y=210900 $D=646
M553 91 91 91 1 pfet_cnrx $X=173860 $Y=180900 $D=646
M554 91 91 91 1 pfet_cnrx $X=175020 $Y=234900 $D=646
M555 2244 91 91 1 pfet_cnrx $X=175020 $Y=243100 $D=646
M556 1734 91 91 1 pfet_cnrx $X=176180 $Y=213300 $D=646
M557 2147 91 91 1 pfet_cnrx $X=176180 $Y=224100 $D=646
M558 91 91 91 1 pfet_cnrx $X=177340 $Y=221700 $D=646
M559 91 91 14 1 pfet_cnrx $X=177340 $Y=180900 $D=646
M560 91 91 91 1 pfet_cnrx $X=179660 $Y=178500 $D=646
M561 91 91 621 1 pfet_cnrx $X=179660 $Y=232400 $D=646
M562 91 91 939 1 pfet_cnrx $X=179660 $Y=245700 $D=646
M563 91 91 98 1 pfet_cnrx $X=180820 $Y=213300 $D=646
M564 2281 91 91 1 pfet_cnrx $X=180820 $Y=221700 $D=646
M565 91 91 2244 1 pfet_cnrx $X=180820 $Y=243100 $D=646
M566 91 91 604 1 pfet_cnrx $X=181980 $Y=232400 $D=646
M567 91 91 2889 1 pfet_cnrx $X=181980 $Y=224100 $D=646
M568 397 91 91 1 pfet_cnrx $X=183140 $Y=213300 $D=646
M569 1953 91 91 1 pfet_cnrx $X=183140 $Y=234900 $D=646
M570 401 91 91 1 pfet_cnrx $X=186620 $Y=243200 $D=646
M571 2246 91 91 1 pfet_cnrx $X=187780 $Y=234900 $D=646
M572 91 91 912 1 pfet_cnrx $X=188940 $Y=254000 $D=646
M573 91 91 403 1 pfet_cnrx $X=190100 $Y=210900 $D=646
M574 2154 91 91 1 pfet_cnrx $X=190100 $Y=221600 $D=646
M575 91 91 1908 1 pfet_cnrx $X=191260 $Y=243200 $D=646
M576 91 91 27 1 pfet_cnrx $X=191260 $Y=254100 $D=646
M577 402 91 91 1 pfet_cnrx $X=192420 $Y=213300 $D=646
M578 91 91 91 1 pfet_cnrx $X=193580 $Y=224100 $D=646
M579 91 91 620 1 pfet_cnrx $X=194740 $Y=202500 $D=646
M580 2155 91 91 1 pfet_cnrx $X=194740 $Y=210900 $D=646
M581 91 91 91 1 pfet_cnrx $X=194740 $Y=213300 $D=646
M582 530 91 91 1 pfet_cnrx $X=194740 $Y=254100 $D=646
M583 91 91 971 1 pfet_cnrx $X=194740 $Y=234900 $D=646
M584 91 91 91 1 pfet_cnrx $X=195900 $Y=213300 $D=646
M585 91 91 2194 1 pfet_cnrx $X=195900 $Y=243200 $D=646
M586 2247 91 91 1 pfet_cnrx $X=195900 $Y=221500 $D=646
M587 91 91 392 1 pfet_cnrx $X=197060 $Y=191700 $D=646
M588 91 91 91 1 pfet_cnrx $X=197060 $Y=234900 $D=646
M589 1735 91 91 1 pfet_cnrx $X=199380 $Y=213300 $D=646
M590 400 91 91 1 pfet_cnrx $X=199380 $Y=232400 $D=646
M591 1954 91 91 1 pfet_cnrx $X=200540 $Y=254100 $D=646
M592 91 91 773 1 pfet_cnrx $X=201700 $Y=224100 $D=646
M593 91 91 2247 1 pfet_cnrx $X=201700 $Y=221500 $D=646
M594 91 91 106 1 pfet_cnrx $X=204020 $Y=191700 $D=646
M595 91 91 624 1 pfet_cnrx $X=204020 $Y=200100 $D=646
M596 91 91 546 1 pfet_cnrx $X=204020 $Y=213300 $D=646
M597 91 91 91 1 pfet_cnrx $X=204020 $Y=232400 $D=646
M598 91 91 418 1 pfet_cnrx $X=204020 $Y=234900 $D=646
M599 2158 91 91 1 pfet_cnrx $X=205180 $Y=202500 $D=646
M600 91 91 413 1 pfet_cnrx $X=205180 $Y=224100 $D=646
M601 91 91 1956 1 pfet_cnrx $X=206340 $Y=189300 $D=646
M602 91 91 91 1 pfet_cnrx $X=206340 $Y=210900 $D=646
M603 91 91 91 1 pfet_cnrx $X=206340 $Y=224100 $D=646
M604 91 91 405 1 pfet_cnrx $X=207500 $Y=213300 $D=646
M605 91 91 940 1 pfet_cnrx $X=207500 $Y=245700 $D=646
M606 91 91 91 1 pfet_cnrx $X=208660 $Y=210900 $D=646
M607 91 91 407 1 pfet_cnrx $X=208660 $Y=224100 $D=646
M608 415 91 91 1 pfet_cnrx $X=208660 $Y=221600 $D=646
M609 91 91 139 1 pfet_cnrx $X=209820 $Y=254000 $D=646
M610 525 91 91 1 pfet_cnrx $X=209820 $Y=224100 $D=646
M611 1958 91 91 1 pfet_cnrx $X=210980 $Y=191700 $D=646
M612 91 91 91 1 pfet_cnrx $X=210980 $Y=202500 $D=646
M613 91 91 91 1 pfet_cnrx $X=210980 $Y=213300 $D=646
M614 1056 91 91 1 pfet_cnrx $X=210980 $Y=245700 $D=646
M615 91 91 411 1 pfet_cnrx $X=213300 $Y=213300 $D=646
M616 91 91 91 1 pfet_cnrx $X=213300 $Y=234900 $D=646
M617 91 91 395 1 pfet_cnrx $X=213300 $Y=210800 $D=646
M618 1736 91 91 1 pfet_cnrx $X=213300 $Y=224100 $D=646
M619 91 91 91 1 pfet_cnrx $X=214460 $Y=234900 $D=646
M620 1057 91 91 1 pfet_cnrx $X=214460 $Y=221600 $D=646
M621 91 91 659 1 pfet_cnrx $X=215620 $Y=180900 $D=646
M622 417 91 91 1 pfet_cnrx $X=215620 $Y=191700 $D=646
M623 91 91 91 1 pfet_cnrx $X=215620 $Y=200100 $D=646
M624 91 91 91 1 pfet_cnrx $X=215620 $Y=213300 $D=646
M625 91 91 2282 1 pfet_cnrx $X=215620 $Y=232500 $D=646
M626 91 91 91 1 pfet_cnrx $X=217940 $Y=191700 $D=646
M627 91 91 2197 1 pfet_cnrx $X=217940 $Y=210900 $D=646
M628 91 91 30 1 pfet_cnrx $X=217940 $Y=224100 $D=646
M629 91 91 2248 1 pfet_cnrx $X=217940 $Y=202500 $D=646
M630 810 91 91 1 pfet_cnrx $X=219100 $Y=232500 $D=646
M631 91 91 605 1 pfet_cnrx $X=220260 $Y=224100 $D=646
M632 91 91 421 1 pfet_cnrx $X=221420 $Y=213300 $D=646
M633 91 91 91 1 pfet_cnrx $X=222580 $Y=210900 $D=646
M634 91 91 140 1 pfet_cnrx $X=223740 $Y=191700 $D=646
M635 91 91 2200 1 pfet_cnrx $X=223740 $Y=178300 $D=646
M636 2181 91 91 1 pfet_cnrx $X=224900 $Y=213300 $D=646
M637 91 91 410 1 pfet_cnrx $X=226060 $Y=191700 $D=646
M638 91 91 31 1 pfet_cnrx $X=227220 $Y=178300 $D=646
M639 91 91 547 1 pfet_cnrx $X=228380 $Y=232500 $D=646
M640 91 91 151 1 pfet_cnrx $X=229540 $Y=243300 $D=646
M641 91 91 91 1 pfet_cnrx $X=230700 $Y=189300 $D=646
M642 606 91 91 1 pfet_cnrx $X=230700 $Y=224100 $D=646
M643 91 91 626 1 pfet_cnrx $X=231860 $Y=191700 $D=646
M644 91 91 2290 1 pfet_cnrx $X=231860 $Y=202500 $D=646
M645 91 91 91 1 pfet_cnrx $X=233020 $Y=224100 $D=646
M646 91 91 91 1 pfet_cnrx $X=233020 $Y=232500 $D=646
M647 2159 91 91 1 pfet_cnrx $X=233020 $Y=243300 $D=646
M648 1960 91 91 1 pfet_cnrx $X=233020 $Y=245700 $D=646
M649 91 91 2287 1 pfet_cnrx $X=233020 $Y=213300 $D=646
M650 91 91 704 1 pfet_cnrx $X=234180 $Y=210900 $D=646
M651 91 91 91 1 pfet_cnrx $X=235340 $Y=202500 $D=646
M652 91 91 91 1 pfet_cnrx $X=235340 $Y=224100 $D=646
M653 91 91 92 1 pfet_cnrx $X=235340 $Y=191700 $D=646
M654 91 91 91 1 pfet_cnrx $X=236500 $Y=213300 $D=646
M655 91 91 91 1 pfet_cnrx $X=236500 $Y=221700 $D=646
M656 91 91 427 1 pfet_cnrx $X=237660 $Y=202500 $D=646
M657 91 91 91 1 pfet_cnrx $X=237660 $Y=210900 $D=646
M658 281 91 91 1 pfet_cnrx $X=237660 $Y=245700 $D=646
M659 91 91 154 1 pfet_cnrx $X=238820 $Y=178600 $D=646
M660 91 91 774 1 pfet_cnrx $X=238820 $Y=189400 $D=646
M661 91 91 91 1 pfet_cnrx $X=238820 $Y=200200 $D=646
M662 91 91 91 1 pfet_cnrx $X=238820 $Y=211000 $D=646
M663 91 91 424 1 pfet_cnrx $X=238820 $Y=213300 $D=646
M664 91 91 91 1 pfet_cnrx $X=238820 $Y=221800 $D=646
M665 91 91 660 1 pfet_cnrx $X=238820 $Y=232600 $D=646
M666 91 91 91 1 pfet_cnrx $X=238820 $Y=243400 $D=646
M667 91 91 91 1 pfet_cnrx $X=238820 $Y=254200 $D=646
M668 91 91 430 1 pfet_cnrx $X=239980 $Y=224100 $D=646
M669 91 91 91 1 pfet_cnrx $X=242300 $Y=224100 $D=646
M670 91 91 422 1 pfet_cnrx $X=243460 $Y=180900 $D=646
M671 91 91 91 1 pfet_cnrx $X=243460 $Y=234900 $D=646
M672 91 91 431 1 pfet_cnrx $X=244620 $Y=224100 $D=646
M673 433 91 91 1 pfet_cnrx $X=246940 $Y=180900 $D=646
M674 91 91 426 1 pfet_cnrx $X=246940 $Y=191700 $D=646
M675 443 91 91 1 pfet_cnrx $X=246940 $Y=213300 $D=646
M676 458 91 91 1 pfet_cnrx $X=246940 $Y=224100 $D=646
M677 91 91 91 1 pfet_cnrx $X=249260 $Y=178500 $D=646
M678 91 91 706 1 pfet_cnrx $X=249260 $Y=202500 $D=646
M679 91 91 91 1 pfet_cnrx $X=249260 $Y=254100 $D=646
M680 91 91 91 1 pfet_cnrx $X=250420 $Y=191700 $D=646
M681 91 91 91 1 pfet_cnrx $X=250420 $Y=210900 $D=646
M682 91 91 91 1 pfet_cnrx $X=250420 $Y=243200 $D=646
M683 91 91 91 1 pfet_cnrx $X=250420 $Y=200000 $D=646
M684 91 91 91 1 pfet_cnrx $X=251580 $Y=191700 $D=646
M685 91 91 91 1 pfet_cnrx $X=252740 $Y=224100 $D=646
M686 2160 91 91 1 pfet_cnrx $X=252740 $Y=234900 $D=646
M687 91 91 2251 1 pfet_cnrx $X=253900 $Y=213300 $D=646
M688 91 91 91 1 pfet_cnrx $X=255060 $Y=213300 $D=646
M689 91 91 442 1 pfet_cnrx $X=255060 $Y=221600 $D=646
M690 91 91 440 1 pfet_cnrx $X=255060 $Y=224100 $D=646
M691 91 91 434 1 pfet_cnrx $X=255060 $Y=200100 $D=646
M692 91 91 437 1 pfet_cnrx $X=256220 $Y=180900 $D=646
M693 449 91 91 1 pfet_cnrx $X=256220 $Y=189200 $D=646
M694 91 91 91 1 pfet_cnrx $X=256220 $Y=191700 $D=646
M695 438 91 91 1 pfet_cnrx $X=256220 $Y=202500 $D=646
M696 91 91 91 1 pfet_cnrx $X=256220 $Y=210900 $D=646
M697 91 91 91 1 pfet_cnrx $X=256220 $Y=232400 $D=646
M698 91 91 108 1 pfet_cnrx $X=256220 $Y=254000 $D=646
M699 91 91 91 1 pfet_cnrx $X=257380 $Y=180900 $D=646
M700 91 91 91 1 pfet_cnrx $X=257380 $Y=191700 $D=646
M701 91 91 91 1 pfet_cnrx $X=257380 $Y=210900 $D=646
M702 2283 91 91 1 pfet_cnrx $X=258540 $Y=178500 $D=646
M703 91 91 91 1 pfet_cnrx $X=258540 $Y=202500 $D=646
M704 91 91 42 1 pfet_cnrx $X=258540 $Y=254100 $D=646
M705 2252 91 91 1 pfet_cnrx $X=258540 $Y=234900 $D=646
M706 796 91 91 1 pfet_cnrx $X=259700 $Y=202500 $D=646
M707 91 91 436 1 pfet_cnrx $X=260860 $Y=180900 $D=646
M708 450 91 91 1 pfet_cnrx $X=260860 $Y=189200 $D=646
M709 91 91 91 1 pfet_cnrx $X=260860 $Y=191700 $D=646
M710 91 91 91 1 pfet_cnrx $X=260860 $Y=210900 $D=646
M711 91 91 91 1 pfet_cnrx $X=262020 $Y=191700 $D=646
M712 91 91 448 1 pfet_cnrx $X=262020 $Y=200100 $D=646
M713 91 91 91 1 pfet_cnrx $X=262020 $Y=210900 $D=646
M714 1064 91 91 1 pfet_cnrx $X=262020 $Y=254100 $D=646
M715 91 91 91 1 pfet_cnrx $X=264340 $Y=189300 $D=646
M716 91 91 91 1 pfet_cnrx $X=264340 $Y=202500 $D=646
M717 91 91 2252 1 pfet_cnrx $X=264340 $Y=234900 $D=646
M718 91 91 2201 1 pfet_cnrx $X=265500 $Y=180900 $D=646
M719 91 91 456 1 pfet_cnrx $X=265500 $Y=191700 $D=646
M720 454 91 91 1 pfet_cnrx $X=265500 $Y=234900 $D=646
M721 428 91 91 1 pfet_cnrx $X=267820 $Y=202500 $D=646
M722 91 91 91 1 pfet_cnrx $X=267820 $Y=210900 $D=646
M723 91 91 141 1 pfet_cnrx $X=268980 $Y=178300 $D=646
M724 91 91 2284 1 pfet_cnrx $X=268980 $Y=200100 $D=646
M725 459 91 91 1 pfet_cnrx $X=268980 $Y=210800 $D=646
M726 2254 91 91 1 pfet_cnrx $X=268980 $Y=224100 $D=646
M727 91 91 91 1 pfet_cnrx $X=270140 $Y=180900 $D=646
M728 91 91 91 1 pfet_cnrx $X=270140 $Y=202500 $D=646
M729 91 91 91 1 pfet_cnrx $X=271300 $Y=180900 $D=646
M730 1741 91 91 1 pfet_cnrx $X=271300 $Y=189300 $D=646
M731 2161 91 91 1 pfet_cnrx $X=271300 $Y=200100 $D=646
M732 91 91 576 1 pfet_cnrx $X=272460 $Y=191700 $D=646
M733 91 91 526 1 pfet_cnrx $X=272460 $Y=178500 $D=646
M734 91 91 91 1 pfet_cnrx $X=273620 $Y=202500 $D=646
M735 91 91 91 1 pfet_cnrx $X=273620 $Y=243200 $D=646
M736 91 91 2254 1 pfet_cnrx $X=274780 $Y=224100 $D=646
M737 2226 91 91 1 pfet_cnrx $X=275940 $Y=178500 $D=646
M738 447 91 91 1 pfet_cnrx $X=277100 $Y=200000 $D=646
M739 91 91 441 1 pfet_cnrx $X=278260 $Y=210900 $D=646
M740 91 91 91 1 pfet_cnrx $X=278260 $Y=213300 $D=646
M741 91 91 91 1 pfet_cnrx $X=278260 $Y=224100 $D=646
M742 91 91 1063 1 pfet_cnrx $X=278260 $Y=232400 $D=646
M743 91 91 91 1 pfet_cnrx $X=279420 $Y=200100 $D=646
M744 91 91 91 1 pfet_cnrx $X=280580 $Y=178500 $D=646
M745 91 91 661 1 pfet_cnrx $X=281740 $Y=189300 $D=646
M746 91 91 91 1 pfet_cnrx $X=281740 $Y=210900 $D=646
M747 460 91 91 1 pfet_cnrx $X=281740 $Y=221600 $D=646
M748 2162 91 91 1 pfet_cnrx $X=282900 $Y=178500 $D=646
M749 1962 91 91 1 pfet_cnrx $X=284060 $Y=254000 $D=646
M750 91 91 527 1 pfet_cnrx $X=285220 $Y=210700 $D=646
M751 91 91 112 1 pfet_cnrx $X=287540 $Y=245700 $D=646
M752 91 91 1964 1 pfet_cnrx $X=292180 $Y=178400 $D=646
M753 91 91 663 1 pfet_cnrx $X=292180 $Y=200000 $D=646
M754 91 91 91 1 pfet_cnrx $X=294500 $Y=180900 $D=646
M755 91 91 462 1 pfet_cnrx $X=300300 $Y=191700 $D=646
M756 91 91 1067 1 pfet_cnrx $X=300300 $Y=213300 $D=646
M757 91 91 709 1 pfet_cnrx $X=300300 $Y=221700 $D=646
M758 91 91 453 1 pfet_cnrx $X=303780 $Y=202500 $D=646
M759 2286 91 91 1 pfet_cnrx $X=303780 $Y=213300 $D=646
M760 91 91 664 1 pfet_cnrx $X=304940 $Y=189200 $D=646
M761 91 91 91 1 pfet_cnrx $X=307260 $Y=191700 $D=646
M762 91 91 91 1 pfet_cnrx $X=307260 $Y=202500 $D=646
M763 91 91 665 1 pfet_cnrx $X=307260 $Y=243300 $D=646
M764 91 91 711 1 pfet_cnrx $X=307260 $Y=210700 $D=646
M765 91 91 2286 1 pfet_cnrx $X=309580 $Y=213300 $D=646
M766 91 91 942 1 pfet_cnrx $X=310740 $Y=189300 $D=646
M767 91 91 2204 1 pfet_cnrx $X=310740 $Y=224100 $D=646
M768 91 91 595 1 pfet_cnrx $X=310740 $Y=245700 $D=646
M769 1074 91 91 1 pfet_cnrx $X=310740 $Y=254000 $D=646
M770 91 91 466 1 pfet_cnrx $X=310740 $Y=210800 $D=646
M771 91 91 91 1 pfet_cnrx $X=311900 $Y=213300 $D=646
M772 2163 91 91 1 pfet_cnrx $X=313060 $Y=189300 $D=646
M773 91 91 666 1 pfet_cnrx $X=313060 $Y=221600 $D=646
M774 91 91 470 1 pfet_cnrx $X=313060 $Y=243300 $D=646
M775 469 91 91 1 pfet_cnrx $X=313060 $Y=234900 $D=646
M776 1749 91 91 1 pfet_cnrx $X=315380 $Y=224100 $D=646
M777 91 91 2255 1 pfet_cnrx $X=315380 $Y=232300 $D=646
M778 91 91 1071 1 pfet_cnrx $X=316540 $Y=200100 $D=646
M779 1752 91 91 1 pfet_cnrx $X=316540 $Y=245700 $D=646
M780 1750 91 91 1 pfet_cnrx $X=316540 $Y=234900 $D=646
M781 1002 91 91 1 pfet_cnrx $X=317700 $Y=180900 $D=646
M782 91 91 91 1 pfet_cnrx $X=318860 $Y=189200 $D=646
M783 2256 91 91 1 pfet_cnrx $X=320020 $Y=178400 $D=646
M784 91 91 548 1 pfet_cnrx $X=320020 $Y=224100 $D=646
M785 1754 91 91 1 pfet_cnrx $X=320020 $Y=243300 $D=646
M786 91 91 667 1 pfet_cnrx $X=321180 $Y=232500 $D=646
M787 91 91 100 1 pfet_cnrx $X=321180 $Y=234900 $D=646
M788 91 91 91 1 pfet_cnrx $X=322340 $Y=224100 $D=646
M789 91 91 811 1 pfet_cnrx $X=323500 $Y=189200 $D=646
M790 91 91 91 1 pfet_cnrx $X=324660 $Y=191700 $D=646
M791 91 91 55 1 pfet_cnrx $X=326980 $Y=180900 $D=646
M792 1755 91 91 1 pfet_cnrx $X=326980 $Y=234900 $D=646
M793 91 91 474 1 pfet_cnrx $X=326980 $Y=178400 $D=646
M794 52 91 91 1 pfet_cnrx $X=328140 $Y=180900 $D=646
M795 1756 91 91 1 pfet_cnrx $X=328140 $Y=191700 $D=646
M796 91 91 91 1 pfet_cnrx $X=328140 $Y=224100 $D=646
M797 91 91 669 1 pfet_cnrx $X=329300 $Y=189300 $D=646
M798 91 91 1072 1 pfet_cnrx $X=329300 $Y=202500 $D=646
M799 467 91 91 1 pfet_cnrx $X=329300 $Y=243200 $D=646
M800 2165 91 91 1 pfet_cnrx $X=330460 $Y=224100 $D=646
M801 91 91 550 1 pfet_cnrx $X=331620 $Y=234900 $D=646
M802 2166 91 91 1 pfet_cnrx $X=331620 $Y=245700 $D=646
M803 471 91 91 1 pfet_cnrx $X=332780 $Y=189300 $D=646
M804 91 91 102 1 pfet_cnrx $X=332780 $Y=191700 $D=646
M805 1972 91 91 1 pfet_cnrx $X=332780 $Y=254000 $D=646
M806 91 91 1076 1 pfet_cnrx $X=335100 $Y=221600 $D=646
M807 91 91 483 1 pfet_cnrx $X=335100 $Y=234900 $D=646
M808 91 91 91 1 pfet_cnrx $X=335100 $Y=202500 $D=646
M809 91 91 91 1 pfet_cnrx $X=336260 $Y=202500 $D=646
M810 91 91 2258 1 pfet_cnrx $X=336260 $Y=180900 $D=646
M811 2259 91 91 1 pfet_cnrx $X=336260 $Y=224100 $D=646
M812 2260 91 91 1 pfet_cnrx $X=337420 $Y=245700 $D=646
M813 481 91 91 1 pfet_cnrx $X=337420 $Y=254000 $D=646
M814 91 91 91 1 pfet_cnrx $X=337420 $Y=180900 $D=646
M815 91 91 465 1 pfet_cnrx $X=337420 $Y=191700 $D=646
M816 91 91 713 1 pfet_cnrx $X=338580 $Y=178500 $D=646
M817 91 91 91 1 pfet_cnrx $X=338580 $Y=189300 $D=646
M818 1760 91 91 1 pfet_cnrx $X=339740 $Y=232400 $D=646
M819 1973 91 91 1 pfet_cnrx $X=339740 $Y=254000 $D=646
M820 91 91 91 1 pfet_cnrx $X=340900 $Y=178500 $D=646
M821 91 91 91 1 pfet_cnrx $X=340900 $Y=191700 $D=646
M822 91 91 670 1 pfet_cnrx $X=340900 $Y=234900 $D=646
M823 91 91 528 1 pfet_cnrx $X=340900 $Y=180900 $D=646
M824 91 91 91 1 pfet_cnrx $X=342060 $Y=180900 $D=646
M825 64 91 91 1 pfet_cnrx $X=342060 $Y=189300 $D=646
M826 2261 91 91 1 pfet_cnrx $X=342060 $Y=200000 $D=646
M827 1762 91 91 1 pfet_cnrx $X=343220 $Y=224100 $D=646
M828 91 91 634 1 pfet_cnrx $X=343220 $Y=243200 $D=646
M829 91 91 552 1 pfet_cnrx $X=344380 $Y=232500 $D=646
M830 2167 91 91 1 pfet_cnrx $X=344380 $Y=234900 $D=646
M831 116 91 91 1 pfet_cnrx $X=344380 $Y=254000 $D=646
M832 91 91 1009 1 pfet_cnrx $X=344380 $Y=245700 $D=646
M833 91 91 91 1 pfet_cnrx $X=345540 $Y=189300 $D=646
M834 91 91 91 1 pfet_cnrx $X=346700 $Y=191700 $D=646
M835 91 91 319 1 pfet_cnrx $X=346700 $Y=178400 $D=646
M836 91 91 553 1 pfet_cnrx $X=347860 $Y=224100 $D=646
M837 91 91 58 1 pfet_cnrx $X=347860 $Y=243200 $D=646
M838 1765 91 91 1 pfet_cnrx $X=349020 $Y=202500 $D=646
M839 91 91 50 1 pfet_cnrx $X=349020 $Y=200000 $D=646
M840 2262 91 91 1 pfet_cnrx $X=350180 $Y=224100 $D=646
M841 91 91 91 1 pfet_cnrx $X=350180 $Y=234900 $D=646
M842 91 91 143 1 pfet_cnrx $X=350180 $Y=245700 $D=646
M843 174 91 91 1 pfet_cnrx $X=350180 $Y=200000 $D=646
M844 91 91 2208 1 pfet_cnrx $X=350180 $Y=213300 $D=646
M845 91 91 554 1 pfet_cnrx $X=351340 $Y=254100 $D=646
M846 91 91 498 1 pfet_cnrx $X=351340 $Y=180900 $D=646
M847 91 91 671 1 pfet_cnrx $X=352500 $Y=178500 $D=646
M848 91 91 91 1 pfet_cnrx $X=352500 $Y=180900 $D=646
M849 91 91 484 1 pfet_cnrx $X=353660 $Y=213300 $D=646
M850 91 91 672 1 pfet_cnrx $X=353660 $Y=243100 $D=646
M851 480 91 91 1 pfet_cnrx $X=354820 $Y=178500 $D=646
M852 91 91 91 1 pfet_cnrx $X=354820 $Y=189300 $D=646
M853 91 91 91 1 pfet_cnrx $X=354820 $Y=191700 $D=646
M854 1768 91 91 1 pfet_cnrx $X=354820 $Y=234900 $D=646
M855 91 91 91 1 pfet_cnrx $X=354820 $Y=254100 $D=646
M856 91 91 91 1 pfet_cnrx $X=354820 $Y=200000 $D=646
M857 91 91 91 1 pfet_cnrx $X=355980 $Y=191700 $D=646
M858 91 91 91 1 pfet_cnrx $X=355980 $Y=200100 $D=646
M859 91 91 91 1 pfet_cnrx $X=355980 $Y=245700 $D=646
M860 91 91 477 1 pfet_cnrx $X=355980 $Y=180900 $D=646
M861 91 91 2262 1 pfet_cnrx $X=355980 $Y=224100 $D=646
M862 134 91 91 1 pfet_cnrx $X=357140 $Y=178400 $D=646
M863 91 91 489 1 pfet_cnrx $X=357140 $Y=189200 $D=646
M864 91 91 1077 1 pfet_cnrx $X=357140 $Y=221700 $D=646
M865 117 91 91 1 pfet_cnrx $X=357140 $Y=224100 $D=646
M866 91 91 492 1 pfet_cnrx $X=357140 $Y=243300 $D=646
M867 1012 91 91 1 pfet_cnrx $X=358300 $Y=180900 $D=646
M868 91 91 211 1 pfet_cnrx $X=358300 $Y=210800 $D=646
M869 1770 91 91 1 pfet_cnrx $X=359460 $Y=191700 $D=646
M870 1772 91 91 1 pfet_cnrx $X=359460 $Y=200100 $D=646
M871 91 91 673 1 pfet_cnrx $X=359460 $Y=202500 $D=646
M872 636 91 91 1 pfet_cnrx $X=359460 $Y=224100 $D=646
M873 91 91 144 1 pfet_cnrx $X=360620 $Y=254100 $D=646
M874 91 91 91 1 pfet_cnrx $X=361780 $Y=178400 $D=646
M875 91 91 2263 1 pfet_cnrx $X=362940 $Y=180900 $D=646
M876 91 91 1014 1 pfet_cnrx $X=362940 $Y=245700 $D=646
M877 493 91 91 1 pfet_cnrx $X=364100 $Y=180900 $D=646
M878 91 91 557 1 pfet_cnrx $X=364100 $Y=191700 $D=646
M879 91 91 579 1 pfet_cnrx $X=364100 $Y=221600 $D=646
M880 91 91 91 1 pfet_cnrx $X=364100 $Y=224100 $D=646
M881 91 91 558 1 pfet_cnrx $X=364100 $Y=200000 $D=646
M882 1016 91 91 1 pfet_cnrx $X=364100 $Y=245700 $D=646
M883 91 91 91 1 pfet_cnrx $X=366420 $Y=180900 $D=646
M884 91 91 53 1 pfet_cnrx $X=366420 $Y=178400 $D=646
M885 1774 91 91 1 pfet_cnrx $X=367580 $Y=224100 $D=646
M886 504 91 91 1 pfet_cnrx $X=367580 $Y=180900 $D=646
M887 91 91 2285 1 pfet_cnrx $X=367580 $Y=243300 $D=646
M888 91 91 91 1 pfet_cnrx $X=368740 $Y=191700 $D=646
M889 91 91 674 1 pfet_cnrx $X=368740 $Y=213300 $D=646
M890 91 91 91 1 pfet_cnrx $X=369900 $Y=191700 $D=646
M891 91 91 715 1 pfet_cnrx $X=369900 $Y=232500 $D=646
M892 91 91 323 1 pfet_cnrx $X=369900 $Y=200100 $D=646
M893 2265 91 91 1 pfet_cnrx $X=371060 $Y=243300 $D=646
M894 91 91 91 1 pfet_cnrx $X=371060 $Y=245700 $D=646
M895 91 91 91 1 pfet_cnrx $X=372220 $Y=180900 $D=646
M896 91 91 146 1 pfet_cnrx $X=372220 $Y=189300 $D=646
M897 637 91 91 1 pfet_cnrx $X=372220 $Y=200100 $D=646
M898 91 91 559 1 pfet_cnrx $X=372220 $Y=224100 $D=646
M899 91 91 91 1 pfet_cnrx $X=373380 $Y=180900 $D=646
M900 91 91 91 1 pfet_cnrx $X=373380 $Y=191700 $D=646
M901 1776 91 91 1 pfet_cnrx $X=373380 $Y=232500 $D=646
M902 91 91 91 1 pfet_cnrx $X=373380 $Y=245700 $D=646
M903 91 91 675 1 pfet_cnrx $X=373380 $Y=254000 $D=646
M904 91 91 91 1 pfet_cnrx $X=373380 $Y=178400 $D=646
M905 2266 91 91 1 pfet_cnrx $X=374540 $Y=189300 $D=646
M906 91 91 607 1 pfet_cnrx $X=375700 $Y=191700 $D=646
M907 91 91 1976 1 pfet_cnrx $X=375700 $Y=200100 $D=646
M908 91 91 91 1 pfet_cnrx $X=376860 $Y=191700 $D=646
M909 91 91 2265 1 pfet_cnrx $X=376860 $Y=243100 $D=646
M910 1021 91 91 1 pfet_cnrx $X=378020 $Y=180900 $D=646
M911 91 91 91 1 pfet_cnrx $X=378020 $Y=234900 $D=646
M912 91 91 84 1 pfet_cnrx $X=379180 $Y=178400 $D=646
M913 91 91 2266 1 pfet_cnrx $X=380340 $Y=189100 $D=646
M914 91 91 91 1 pfet_cnrx $X=381500 $Y=189200 $D=646
M915 1778 91 91 1 pfet_cnrx $X=381500 $Y=234900 $D=646
M916 91 91 502 1 pfet_cnrx $X=381500 $Y=191700 $D=646
M917 91 91 1910 1 pfet_cnrx $X=382660 $Y=180900 $D=646
M918 91 91 91 1 pfet_cnrx $X=382660 $Y=191700 $D=646
M919 91 91 581 1 pfet_cnrx $X=382660 $Y=200000 $D=646
M920 91 91 505 1 pfet_cnrx $X=383820 $Y=189300 $D=646
M921 2267 91 91 1 pfet_cnrx $X=383820 $Y=180900 $D=646
M922 91 91 91 1 pfet_cnrx $X=386140 $Y=189300 $D=646
M923 91 91 156 1 pfet_cnrx $X=388460 $Y=243300 $D=646
M924 91 91 717 1 pfet_cnrx $X=390780 $Y=178500 $D=646
M925 91 91 91 1 pfet_cnrx $X=394260 $Y=178500 $D=646
M926 91 91 507 1 pfet_cnrx $X=394260 $Y=180900 $D=646
M927 2268 91 91 1 pfet_cnrx $X=395420 $Y=180900 $D=646
M928 91 91 597 1 pfet_cnrx $X=395420 $Y=234900 $D=646
M929 91 91 1084 1 pfet_cnrx $X=395420 $Y=254100 $D=646
M930 91 91 91 1 pfet_cnrx $X=397740 $Y=254100 $D=646
M931 91 91 916 1 pfet_cnrx $X=398900 $Y=202500 $D=646
M932 1780 91 91 1 pfet_cnrx $X=400060 $Y=178400 $D=646
M933 91 91 1028 1 pfet_cnrx $X=402380 $Y=180900 $D=646
M934 91 91 91 1 pfet_cnrx $X=403540 $Y=180900 $D=646
M935 91 91 104 1 pfet_cnrx $X=404700 $Y=178500 $D=646
M936 91 91 91 1 pfet_cnrx $X=407020 $Y=180900 $D=646
M937 336 91 91 1 pfet_cnrx $X=408180 $Y=178500 $D=646
M938 78 91 91 1 pfet_cnrx $X=408180 $Y=210800 $D=646
M939 83 91 91 1 pfet_cnrx $X=408180 $Y=180900 $D=646
M940 91 91 91 1 pfet_cnrx $X=411660 $Y=180900 $D=646
M941 91 91 204 1 pfet_cnrx $X=412820 $Y=245700 $D=646
M942 91 91 91 1 pfet_cnrx $X=413980 $Y=178400 $D=646
M943 510 91 91 1 pfet_cnrx $X=413980 $Y=180900 $D=646
M944 91 91 89 1 pfet_cnrx $X=416300 $Y=178400 $D=646
M945 91 91 91 1 pfet_cnrx $X=416300 $Y=180900 $D=646
M946 91 91 340 1 pfet_cnrx $X=422100 $Y=178500 $D=646
M947 91 91 513 1 pfet_cnrx $X=422100 $Y=180900 $D=646
M948 91 91 2209 1 pfet_cnrx $X=424420 $Y=189300 $D=646
M949 1784 91 91 1 pfet_cnrx $X=425580 $Y=178500 $D=646
M950 91 91 511 1 pfet_cnrx $X=425580 $Y=180900 $D=646
M951 91 91 91 1 pfet_cnrx $X=426740 $Y=180900 $D=646
M952 1786 91 91 1 pfet_cnrx $X=427900 $Y=189300 $D=646
M953 91 91 91 1 pfet_cnrx $X=430220 $Y=180900 $D=646
M954 91 91 91 1 pfet_cnrx $X=431380 $Y=180900 $D=646
M955 91 91 503 1 pfet_cnrx $X=434860 $Y=224100 $D=646
M956 91 91 91 1 pfet_cnrx $X=437180 $Y=180900 $D=646
M957 91 91 91 1 pfet_cnrx $X=438340 $Y=180900 $D=646
M958 91 91 2214 1 pfet_cnrx $X=438340 $Y=191700 $D=646
M959 91 91 509 1 pfet_cnrx $X=438340 $Y=202500 $D=646
M960 91 91 91 1 pfet_cnrx $X=438340 $Y=213300 $D=646
M961 91 91 91 1 pfet_cnrx $X=438340 $Y=224100 $D=646
M962 91 91 679 1 pfet_cnrx $X=438340 $Y=234900 $D=646
M963 91 91 206 1 pfet_cnrx $X=438340 $Y=245700 $D=646
M964 91 91 680 1 pfet_cnrx $X=441820 $Y=254100 $D=646
M965 91 91 641 1 pfet_cnrx $X=442980 $Y=210900 $D=646
M966 91 91 148 1 pfet_cnrx $X=444140 $Y=178500 $D=646
M967 91 91 515 1 pfet_cnrx $X=445300 $Y=200100 $D=646
M968 91 91 91 1 pfet_cnrx $X=447620 $Y=178500 $D=646
M969 91 91 602 1 pfet_cnrx $X=447620 $Y=221600 $D=646
M970 91 91 926 1 pfet_cnrx $X=447620 $Y=243200 $D=646
M971 91 91 91 1 pfet_cnrx $X=448780 $Y=180900 $D=646
M972 91 91 681 1 pfet_cnrx $X=448780 $Y=189200 $D=646
M973 1788 91 91 1 pfet_cnrx $X=448780 $Y=191700 $D=646
M974 91 91 91 1 pfet_cnrx $X=448780 $Y=202500 $D=646
M975 2272 91 91 1 pfet_cnrx $X=448780 $Y=210900 $D=646
M976 1790 91 91 1 pfet_cnrx $X=448780 $Y=213300 $D=646
M977 1792 91 91 1 pfet_cnrx $X=448780 $Y=224100 $D=646
M978 91 91 682 1 pfet_cnrx $X=448780 $Y=232400 $D=646
M979 91 91 91 1 pfet_cnrx $X=448780 $Y=234900 $D=646
M980 1794 91 91 1 pfet_cnrx $X=448780 $Y=245700 $D=646
M981 91 91 584 1 pfet_cnrx $X=448780 $Y=254000 $D=646
M982 839 91 91 1 pfet_cnrx $X=451100 $Y=202500 $D=646
M983 91 91 585 1 pfet_cnrx $X=452260 $Y=200100 $D=646
M984 91 91 2272 1 pfet_cnrx $X=454580 $Y=210700 $D=646
M985 2168 91 91 1 pfet_cnrx $X=455740 $Y=180900 $D=646
M986 91 91 91 1 pfet_cnrx $X=455740 $Y=210800 $D=646
M987 2170 91 91 1 pfet_cnrx $X=456900 $Y=200100 $D=646
M988 91 91 683 1 pfet_cnrx $X=459220 $Y=191700 $D=646
M989 91 91 529 1 pfet_cnrx $X=459220 $Y=210800 $D=646
M990 91 91 684 1 pfet_cnrx $X=459220 $Y=213300 $D=646
M991 91 91 2273 1 pfet_cnrx $X=459220 $Y=202500 $D=646
M992 91 91 91 1 pfet_cnrx $X=460380 $Y=202500 $D=646
M993 516 91 91 1 pfet_cnrx $X=462700 $Y=213300 $D=646
M994 523 91 91 1 pfet_cnrx $X=462700 $Y=200000 $D=646
M995 91 91 91 1 pfet_cnrx $X=463860 $Y=210900 $D=646
M996 91 91 91 1 pfet_cnrx $X=465020 $Y=202500 $D=646
M997 91 91 91 1 pfet_cnrx $X=465020 $Y=213300 $D=646
M998 91 91 726 1 pfet_cnrx $X=465020 $Y=224100 $D=646
M999 91 91 91 1 pfet_cnrx $X=467340 $Y=210900 $D=646
M1000 91 91 91 1 pfet_cnrx $X=468500 $Y=200100 $D=646
M1001 91 91 2274 1 pfet_cnrx $X=469660 $Y=180900 $D=646
M1002 91 91 91 1 pfet_cnrx $X=470820 $Y=178500 $D=646
M1003 91 91 91 1 pfet_cnrx $X=470820 $Y=180900 $D=646
M1004 1796 91 91 1 pfet_cnrx $X=474300 $Y=178500 $D=646
M1005 91 91 93 1 pfet_cnrx $X=474300 $Y=180900 $D=646
M1006 91 91 91 1 pfet_cnrx $X=480100 $Y=213300 $D=646
M1007 91 91 730 1 pfet_cnrx $X=485900 $Y=180900 $D=646
M1008 91 91 91 1 pfet_cnrx $X=485900 $Y=210900 $D=646
M1009 91 91 933 1 pfet_cnrx $X=487060 $Y=221700 $D=646
M1010 91 91 91 1 pfet_cnrx $X=490540 $Y=202500 $D=646
M1011 91 91 1798 1 pfet_cnrx $X=492860 $Y=243200 $D=646
M1012 91 91 91 1 pfet_cnrx $X=495180 $Y=254100 $D=646
M1013 2279 91 91 1 pfet_cnrx $X=497500 $Y=254100 $D=646
M1014 91 91 91 1 pfet_cnrx $X=506780 $Y=243300 $D=646
M1015 91 91 91 1 pfet_cnrx $X=510260 $Y=243300 $D=646
M1016 91 91 91 1 pfet_cnrx $X=529980 $Y=245700 $D=646
M1017 2280 91 91 1 pfet_cnrx $X=532300 $Y=245700 $D=646
M1018 91 91 91 1 pfet_cnrx $X=564780 $Y=200100 $D=646
M1019 91 91 91 1 pfet_cnrx $X=564780 $Y=221700 $D=646
M1020 91 91 91 1 pfet_cnrx $X=564780 $Y=232500 $D=646
M1021 91 91 91 1 pfet_cnrx $X=568260 $Y=178600 $D=646
M1022 91 91 91 1 pfet_cnrx $X=568260 $Y=189400 $D=646
M1023 91 91 91 1 pfet_cnrx $X=568260 $Y=200200 $D=646
M1024 91 91 91 1 pfet_cnrx $X=568260 $Y=211000 $D=646
M1025 91 91 91 1 pfet_cnrx $X=568260 $Y=221800 $D=646
M1026 91 91 91 1 pfet_cnrx $X=568260 $Y=232600 $D=646
M1027 91 91 91 1 pfet_cnrx $X=568260 $Y=243400 $D=646
M1028 91 91 91 1 pfet_cnrx $X=568260 $Y=254200 $D=646
M1029 91 91 91 1 pfet_cnrx $X=576380 $Y=191700 $D=646
M1030 91 91 91 1 pfet_cnrx $X=576380 $Y=213300 $D=646
M1031 91 91 91 1 pfet_cnrx $X=578700 $Y=191700 $D=646
M1032 91 91 91 1 pfet_cnrx $X=578700 $Y=213300 $D=646
X1033 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 175000 0 0 $X=578260 $Y=174700
X1034 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 185800 1 0 $X=578260 $Y=180100
X1035 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 185800 0 0 $X=578260 $Y=185500
X1036 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 196600 1 0 $X=578260 $Y=190900
X1037 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 196600 0 0 $X=578260 $Y=196300
X1038 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 207400 1 0 $X=578260 $Y=201700
X1039 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 207400 0 0 $X=578260 $Y=207100
X1040 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 218200 1 0 $X=578260 $Y=212500
X1041 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 218200 0 0 $X=578260 $Y=217900
X1042 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 229000 1 0 $X=578260 $Y=223300
X1043 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 229000 0 0 $X=578260 $Y=228700
X1044 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 239800 1 0 $X=578260 $Y=234100
X1045 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 239800 0 0 $X=578260 $Y=239500
X1046 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 250600 1 0 $X=578260 $Y=244900
X1047 1 91 1 1 UDB116SVT24_CAPR9_1 $T=578840 250600 0 0 $X=578260 $Y=250300
X1048 1 91 1 UDB116SVT24_FILL2 $T=88160 175000 0 0 $X=87580 $Y=174700
X1049 1 91 1 UDB116SVT24_FILL2 $T=117160 185800 1 0 $X=116580 $Y=180100
X1050 1 91 1 UDB116SVT24_FILL2 $T=128760 229000 1 0 $X=128180 $Y=223300
X1051 1 91 1 UDB116SVT24_FILL2 $T=141520 175000 0 0 $X=140940 $Y=174700
X1052 1 91 1 UDB116SVT24_FILL2 $T=158920 185800 1 0 $X=158340 $Y=180100
X1053 1 91 1 UDB116SVT24_FILL2 $T=170520 239800 1 0 $X=169940 $Y=234100
X1054 1 91 1 UDB116SVT24_FILL2 $T=180960 218200 1 0 $X=180380 $Y=212500
X1055 1 91 1 UDB116SVT24_FILL2 $T=194880 239800 1 0 $X=194300 $Y=234100
X1056 1 91 1 UDB116SVT24_FILL2 $T=204160 196600 1 0 $X=203580 $Y=190900
X1057 1 91 1 UDB116SVT24_FILL2 $T=206480 207400 0 0 $X=205900 $Y=207100
X1058 1 91 1 UDB116SVT24_FILL2 $T=213440 218200 1 0 $X=212860 $Y=212500
X1059 1 91 1 UDB116SVT24_FILL2 $T=233160 229000 1 0 $X=232580 $Y=223300
X1060 1 91 1 UDB116SVT24_FILL2 $T=236640 218200 0 0 $X=236060 $Y=217900
X1061 1 91 1 UDB116SVT24_FILL2 $T=238960 218200 1 0 $X=238380 $Y=212500
X1062 1 91 1 UDB116SVT24_FILL2 $T=240120 229000 1 0 $X=239540 $Y=223300
X1063 1 91 1 UDB116SVT24_FILL2 $T=244760 218200 1 0 $X=244180 $Y=212500
X1064 1 91 1 UDB116SVT24_FILL2 $T=244760 229000 1 0 $X=244180 $Y=223300
X1065 1 91 1 UDB116SVT24_FILL2 $T=249400 175000 0 0 $X=248820 $Y=174700
X1066 1 91 1 UDB116SVT24_FILL2 $T=256360 175000 0 0 $X=255780 $Y=174700
X1067 1 91 1 UDB116SVT24_FILL2 $T=269120 196600 0 0 $X=268540 $Y=196300
X1068 1 91 1 UDB116SVT24_FILL2 $T=280720 175000 0 0 $X=280140 $Y=174700
X1069 1 91 1 UDB116SVT24_FILL2 $T=300440 196600 1 0 $X=299860 $Y=190900
X1070 1 91 1 UDB116SVT24_FILL2 $T=309720 218200 1 0 $X=309140 $Y=212500
X1071 1 91 1 UDB116SVT24_FILL2 $T=310880 185800 0 0 $X=310300 $Y=185500
X1072 1 91 1 UDB116SVT24_FILL2 $T=320160 229000 1 0 $X=319580 $Y=223300
X1073 1 91 1 UDB116SVT24_FILL2 $T=321320 239800 1 0 $X=320740 $Y=234100
X1074 1 91 1 UDB116SVT24_FILL2 $T=328280 229000 1 0 $X=327700 $Y=223300
X1075 1 91 1 UDB116SVT24_FILL2 $T=338720 175000 0 0 $X=338140 $Y=174700
X1076 1 91 1 UDB116SVT24_FILL2 $T=344520 229000 0 0 $X=343940 $Y=228700
X1077 1 91 1 UDB116SVT24_FILL2 $T=345680 185800 0 0 $X=345100 $Y=185500
X1078 1 91 1 UDB116SVT24_FILL2 $T=348000 229000 1 0 $X=347420 $Y=223300
X1079 1 91 1 UDB116SVT24_FILL2 $T=352640 175000 0 0 $X=352060 $Y=174700
X1080 1 91 1 UDB116SVT24_FILL2 $T=353800 250600 1 0 $X=353220 $Y=244900
X1081 1 91 1 UDB116SVT24_FILL2 $T=356120 185800 1 0 $X=355540 $Y=180100
X1082 1 91 1 UDB116SVT24_FILL2 $T=370040 196600 0 0 $X=369460 $Y=196300
X1083 1 91 1 UDB116SVT24_FILL2 $T=371200 250600 1 0 $X=370620 $Y=244900
X1084 1 91 1 UDB116SVT24_FILL2 $T=372360 185800 0 0 $X=371780 $Y=185500
X1085 1 91 1 UDB116SVT24_FILL2 $T=383960 185800 0 0 $X=383380 $Y=185500
X1086 1 91 1 UDB116SVT24_FILL2 $T=395560 250600 0 0 $X=394980 $Y=250300
X1087 1 91 1 UDB116SVT24_FILL2 $T=411800 185800 1 0 $X=411220 $Y=180100
X1088 1 91 1 UDB116SVT24_FILL2 $T=443120 207400 0 0 $X=442540 $Y=207100
X1089 1 91 1 UDB116SVT24_FILL2 $T=448920 185800 1 0 $X=448340 $Y=180100
X1090 1 91 1 UDB116SVT24_FILL2 $T=448920 207400 1 0 $X=448340 $Y=201700
X1091 1 91 1 UDB116SVT24_FILL2 $T=495320 250600 0 0 $X=494740 $Y=250300
X1092 1 91 1 UDB116SVT24_FILL2 $T=530120 250600 1 0 $X=529540 $Y=244900
X1093 1 91 1 UDB116SVT24_FILL2 $T=576520 196600 1 0 $X=575940 $Y=190900
X1094 1 91 1 UDB116SVT24_FILL2 $T=576520 218200 1 0 $X=575940 $Y=212500
X1095 1 UDB116SVT24_TAPSS $T=49880 185800 1 0 $X=49300 $Y=180100
X1096 1 UDB116SVT24_TAPSS $T=49880 196600 1 0 $X=49300 $Y=190900
X1097 1 UDB116SVT24_TAPSS $T=49880 207400 1 0 $X=49300 $Y=201700
X1098 1 UDB116SVT24_TAPSS $T=49880 218200 1 0 $X=49300 $Y=212500
X1099 1 UDB116SVT24_TAPSS $T=49880 229000 1 0 $X=49300 $Y=223300
X1100 1 UDB116SVT24_TAPSS $T=49880 239800 1 0 $X=49300 $Y=234100
X1101 1 UDB116SVT24_TAPSS $T=49880 250600 1 0 $X=49300 $Y=244900
X1102 1 UDB116SVT24_TAPSS $T=238960 175000 0 0 $X=238380 $Y=174700
X1103 1 UDB116SVT24_TAPSS $T=238960 185800 0 0 $X=238380 $Y=185500
X1104 1 UDB116SVT24_TAPSS $T=238960 196600 0 0 $X=238380 $Y=196300
X1105 1 UDB116SVT24_TAPSS $T=238960 207400 0 0 $X=238380 $Y=207100
X1106 1 UDB116SVT24_TAPSS $T=238960 218200 0 0 $X=238380 $Y=217900
X1107 1 UDB116SVT24_TAPSS $T=238960 229000 0 0 $X=238380 $Y=228700
X1108 1 UDB116SVT24_TAPSS $T=238960 239800 0 0 $X=238380 $Y=239500
X1109 1 UDB116SVT24_TAPSS $T=238960 250600 0 0 $X=238380 $Y=250300
X1110 1 UDB116SVT24_TAPSS $T=438480 185800 1 0 $X=437900 $Y=180100
X1111 1 UDB116SVT24_TAPSS $T=438480 196600 1 0 $X=437900 $Y=190900
X1112 1 UDB116SVT24_TAPSS $T=438480 207400 1 0 $X=437900 $Y=201700
X1113 1 UDB116SVT24_TAPSS $T=438480 218200 1 0 $X=437900 $Y=212500
X1114 1 UDB116SVT24_TAPSS $T=438480 229000 1 0 $X=437900 $Y=223300
X1115 1 UDB116SVT24_TAPSS $T=438480 239800 1 0 $X=437900 $Y=234100
X1116 1 UDB116SVT24_TAPSS $T=438480 250600 1 0 $X=437900 $Y=244900
X1117 1 UDB116SVT24_TAPSS $T=568400 175000 0 0 $X=567820 $Y=174700
X1118 1 UDB116SVT24_TAPSS $T=568400 185800 0 0 $X=567820 $Y=185500
X1119 1 UDB116SVT24_TAPSS $T=568400 196600 0 0 $X=567820 $Y=196300
X1120 1 UDB116SVT24_TAPSS $T=568400 207400 0 0 $X=567820 $Y=207100
X1121 1 UDB116SVT24_TAPSS $T=568400 218200 0 0 $X=567820 $Y=217900
X1122 1 UDB116SVT24_TAPSS $T=568400 229000 0 0 $X=567820 $Y=228700
X1123 1 UDB116SVT24_TAPSS $T=568400 239800 0 0 $X=567820 $Y=239500
X1124 1 UDB116SVT24_TAPSS $T=568400 250600 0 0 $X=567820 $Y=250300
X1229 1 91 1 UDB116SVT24_FILL3 $T=100920 175000 0 0 $X=100340 $Y=174700
X1230 1 91 1 UDB116SVT24_FILL3 $T=126440 175000 0 0 $X=125860 $Y=174700
X1231 1 91 1 UDB116SVT24_FILL3 $T=133400 229000 0 0 $X=132820 $Y=228700
X1232 1 91 1 UDB116SVT24_FILL3 $T=139200 218200 1 0 $X=138620 $Y=212500
X1233 1 91 1 UDB116SVT24_FILL3 $T=167040 229000 1 0 $X=166460 $Y=223300
X1234 1 91 1 UDB116SVT24_FILL3 $T=172840 175000 0 0 $X=172260 $Y=174700
X1235 1 91 1 UDB116SVT24_FILL3 $T=172840 229000 1 0 $X=172260 $Y=223300
X1236 1 91 1 UDB116SVT24_FILL3 $T=175160 239800 1 0 $X=174580 $Y=234100
X1237 1 91 1 UDB116SVT24_FILL3 $T=177480 218200 0 0 $X=176900 $Y=217900
X1238 1 91 1 UDB116SVT24_FILL3 $T=191400 250600 0 0 $X=190820 $Y=250300
X1239 1 91 1 UDB116SVT24_FILL3 $T=194880 207400 1 0 $X=194300 $Y=201700
X1240 1 91 1 UDB116SVT24_FILL3 $T=204160 196600 0 0 $X=203580 $Y=196300
X1241 1 91 1 UDB116SVT24_FILL3 $T=204160 239800 1 0 $X=203580 $Y=234100
X1242 1 91 1 UDB116SVT24_FILL3 $T=207640 218200 1 0 $X=207060 $Y=212500
X1243 1 91 1 UDB116SVT24_FILL3 $T=207640 250600 1 0 $X=207060 $Y=244900
X1244 1 91 1 UDB116SVT24_FILL3 $T=212280 196600 0 0 $X=211700 $Y=196300
X1245 1 91 1 UDB116SVT24_FILL3 $T=215760 229000 0 0 $X=215180 $Y=228700
X1246 1 91 1 UDB116SVT24_FILL3 $T=220400 229000 1 0 $X=219820 $Y=223300
X1247 1 91 1 UDB116SVT24_FILL3 $T=221560 218200 1 0 $X=220980 $Y=212500
X1248 1 91 1 UDB116SVT24_FILL3 $T=227360 229000 1 0 $X=226780 $Y=223300
X1249 1 91 1 UDB116SVT24_FILL3 $T=229680 239800 0 0 $X=229100 $Y=239500
X1250 1 91 1 UDB116SVT24_FILL3 $T=232000 207400 1 0 $X=231420 $Y=201700
X1251 1 91 1 UDB116SVT24_FILL3 $T=233160 218200 1 0 $X=232580 $Y=212500
X1252 1 91 1 UDB116SVT24_FILL3 $T=243600 185800 1 0 $X=243020 $Y=180100
X1253 1 91 1 UDB116SVT24_FILL3 $T=249400 239800 1 0 $X=248820 $Y=234100
X1254 1 91 1 UDB116SVT24_FILL3 $T=252880 207400 1 0 $X=252300 $Y=201700
X1255 1 91 1 UDB116SVT24_FILL3 $T=258680 250600 0 0 $X=258100 $Y=250300
X1256 1 91 1 UDB116SVT24_FILL3 $T=264480 185800 0 0 $X=263900 $Y=185500
X1257 1 91 1 UDB116SVT24_FILL3 $T=264480 207400 1 0 $X=263900 $Y=201700
X1258 1 91 1 UDB116SVT24_FILL3 $T=270280 207400 1 0 $X=269700 $Y=201700
X1259 1 91 1 UDB116SVT24_FILL3 $T=272600 175000 0 0 $X=272020 $Y=174700
X1260 1 91 1 UDB116SVT24_FILL3 $T=274920 229000 1 0 $X=274340 $Y=223300
X1261 1 91 1 UDB116SVT24_FILL3 $T=278400 207400 0 0 $X=277820 $Y=207100
X1262 1 91 1 UDB116SVT24_FILL3 $T=300440 218200 1 0 $X=299860 $Y=212500
X1263 1 91 1 UDB116SVT24_FILL3 $T=303920 207400 1 0 $X=303340 $Y=201700
X1264 1 91 1 UDB116SVT24_FILL3 $T=313200 239800 0 0 $X=312620 $Y=239500
X1265 1 91 1 UDB116SVT24_FILL3 $T=329440 185800 0 0 $X=328860 $Y=185500
X1266 1 91 1 UDB116SVT24_FILL3 $T=337560 196600 1 0 $X=336980 $Y=190900
X1267 1 91 1 UDB116SVT24_FILL3 $T=338720 185800 0 0 $X=338140 $Y=185500
X1268 1 91 1 UDB116SVT24_FILL3 $T=342200 207400 1 0 $X=341620 $Y=201700
X1269 1 91 1 UDB116SVT24_FILL3 $T=346840 196600 1 0 $X=346260 $Y=190900
X1270 1 91 1 UDB116SVT24_FILL3 $T=351480 185800 0 0 $X=350900 $Y=185500
X1271 1 91 1 UDB116SVT24_FILL3 $T=357280 239800 0 0 $X=356700 $Y=239500
X1272 1 91 1 UDB116SVT24_FILL3 $T=367720 239800 0 0 $X=367140 $Y=239500
X1273 1 91 1 UDB116SVT24_FILL3 $T=390920 175000 0 0 $X=390340 $Y=174700
X1274 1 91 1 UDB116SVT24_FILL3 $T=404840 175000 0 0 $X=404260 $Y=174700
X1275 1 91 1 UDB116SVT24_FILL3 $T=435000 229000 1 0 $X=434420 $Y=223300
X1276 1 91 1 UDB116SVT24_FILL3 $T=444280 175000 0 0 $X=443700 $Y=174700
X1277 1 91 1 UDB116SVT24_FILL3 $T=445440 207400 0 0 $X=444860 $Y=207100
X1278 1 91 1 UDB116SVT24_FILL3 $T=459360 218200 1 0 $X=458780 $Y=212500
X1279 1 91 1 UDB116SVT24_FILL3 $T=506920 239800 0 0 $X=506340 $Y=239500
X1280 1 91 1 UDB116SVT24_FILL3 $T=564920 196600 0 0 $X=564340 $Y=196300
X1281 1 91 1 UDB116SVT24_FILL3 $T=564920 218200 0 0 $X=564340 $Y=217900
X1282 1 91 1 UDB116SVT24_FILL3 $T=564920 229000 0 0 $X=564340 $Y=228700
X1283 1 91 1 UDB116SVT24_FILL12 $T=483720 196600 1 0 $X=483140 $Y=190900
X1284 1 91 1 UDB116SVT24_FILL12 $T=493000 239800 0 0 $X=492420 $Y=239500
X1285 1 91 1 UDB116SVT24_FILL12 $T=551000 196600 0 0 $X=550420 $Y=196300
X1286 1 91 1 UDB116SVT24_FILL12 $T=551000 218200 0 0 $X=550420 $Y=217900
X1287 1 91 1 UDB116SVT24_FILL12 $T=551000 229000 0 0 $X=550420 $Y=228700
X1288 1 91 1 UDB116SVT24_FILL12 $T=554480 207400 0 0 $X=553900 $Y=207100
X1289 1 91 1 UDB116SVT24_FILL12 $T=554480 239800 0 0 $X=553900 $Y=239500
X1290 1 91 1 UDB116SVT24_FILL12 $T=562600 196600 1 0 $X=562020 $Y=190900
X1291 1 91 1 UDB116SVT24_FILL12 $T=563760 239800 1 0 $X=563180 $Y=234100
X1292 1 91 1 UDB116SVT24_FILL6 $T=482560 229000 0 0 $X=481980 $Y=228700
X1293 1 91 1 UDB116SVT24_FILL16 $T=467480 207400 0 0 $X=466900 $Y=207100
X1294 1 91 1 UDB116SVT24_FILL16 $T=472120 207400 1 0 $X=471540 $Y=201700
X1295 1 91 1 UDB116SVT24_FILL16 $T=476760 250600 0 0 $X=476180 $Y=250300
X1296 1 91 1 UDB116SVT24_FILL16 $T=511560 250600 1 0 $X=510980 $Y=244900
X1297 1 91 1 UDB116SVT24_FILL16 $T=532440 218200 0 0 $X=531860 $Y=217900
X1298 1 91 1 UDB116SVT24_FILL16 $T=532440 229000 0 0 $X=531860 $Y=228700
X1299 1 91 1 UDB116SVT24_FILL16 $T=535920 207400 0 0 $X=535340 $Y=207100
X1300 1 91 1 UDB116SVT24_FILL16 $T=544040 196600 1 0 $X=543460 $Y=190900
X1301 1 91 1 UDB116SVT24_FILL16 $T=544040 250600 0 0 $X=543460 $Y=250300
X1302 1 91 1 UDB116SVT24_FILL8 $T=470960 218200 1 0 $X=470380 $Y=212500
X1303 1 91 1 UDB116SVT24_FILL8 $T=510400 239800 0 0 $X=509820 $Y=239500
X1304 1 91 1 UDB116SVT24_FILL8 $T=559120 175000 0 0 $X=558540 $Y=174700
X1305 1 91 1 UDB116SVT24_FILL8 $T=567240 218200 1 0 $X=566660 $Y=212500
X1306 1 91 1 UDB116SVT24_FILL8 $T=569560 229000 1 0 $X=568980 $Y=223300
X1307 1 91 1 UDB116SVT24_FILL32 $T=494160 185800 1 0 $X=493580 $Y=180100
X1308 1 91 1 UDB116SVT24_FILL32 $T=495320 218200 0 0 $X=494740 $Y=217900
X1309 1 91 1 UDB116SVT24_FILL32 $T=495320 229000 0 0 $X=494740 $Y=228700
X1310 1 91 1 UDB116SVT24_FILL32 $T=498800 207400 0 0 $X=498220 $Y=207100
X1311 1 91 1 UDB116SVT24_DCAP_ECOCT_16 $T=497640 196600 1 0 $X=497060 $Y=190900
X1312 1 91 1 UDB116SVT24_DCAP_ECOCT_16 $T=497640 250600 0 0 $X=497060 $Y=250300
X1313 1 91 1 UDB116SVT24_DCAP_ECOCT_16 $T=532440 185800 1 0 $X=531860 $Y=180100
X1314 1 91 1 UDB116SVT24_DCAP_ECOCT_16 $T=532440 250600 1 0 $X=531860 $Y=244900
X1315 1 91 1 UDB116SVT24_FILL64 $T=476760 196600 0 0 $X=476180 $Y=196300
X1316 1 91 1 UDB116SVT24_FILL64 $T=484880 175000 0 0 $X=484300 $Y=174700
X1317 1 91 1 UDB116SVT24_FILL64 $T=489520 239800 1 0 $X=488940 $Y=234100
X1318 1 91 1 UDB116SVT24_FILL64 $T=493000 218200 1 0 $X=492420 $Y=212500
X1319 1 91 1 UDB116SVT24_FILL64 $T=494160 185800 0 0 $X=493580 $Y=185500
X1320 1 91 1 UDB116SVT24_FILL64 $T=495320 229000 1 0 $X=494740 $Y=223300
X1321 1 91 1 UDB116SVT24_FILL64 $T=498800 207400 1 0 $X=498220 $Y=201700
X1322 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 175000 0 0 $X=39440 $Y=174700
X1323 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 185800 1 0 $X=39440 $Y=180100
X1324 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 185800 0 0 $X=39440 $Y=185500
X1325 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 196600 1 0 $X=39440 $Y=190900
X1326 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 196600 0 0 $X=39440 $Y=196300
X1327 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 207400 1 0 $X=39440 $Y=201700
X1328 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 207400 0 0 $X=39440 $Y=207100
X1329 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 218200 1 0 $X=39440 $Y=212500
X1330 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 218200 0 0 $X=39440 $Y=217900
X1331 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 229000 1 0 $X=39440 $Y=223300
X1332 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 229000 0 0 $X=39440 $Y=228700
X1333 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 239800 1 0 $X=39440 $Y=234100
X1334 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 239800 0 0 $X=39440 $Y=239500
X1335 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 250600 1 0 $X=39440 $Y=244900
X1336 1 91 1 1 UDB116SVT24_CAPL9_1 $T=39440 250600 0 0 $X=39440 $Y=250300
X1337 1 91 1 UDB116SVT24_FILL5 $T=562600 250600 0 0 $X=562020 $Y=250300
X1338 1 91 1 UDB116SVT24_FILL5 $T=573040 207400 1 0 $X=572460 $Y=201700
X1339 1 91 1 UDB116SVT24_DCAP_ECOCT_12 $T=511560 250600 0 180 $X=476180 $Y=244900
X1340 1 91 1 UDB116SVT24_DCAP_ECOCT_12 $T=519680 239800 0 0 $X=519100 $Y=239500
X1341 91 23 14 394 1 1 UDB116SVT24_NR2_MM_0P75 $T=174000 185800 1 0 $X=173420 $Y=180100
X1342 91 416 525 412 1 1 UDB116SVT24_NR2_MM_0P75 $T=213440 229000 0 180 $X=209380 $Y=223300
X1343 91 32 31 422 1 1 UDB116SVT24_NR2_MM_0P75 $T=223880 175000 0 0 $X=223300 $Y=174700
X1344 91 414 92 36 1 1 UDB116SVT24_NR2_MM_0P75 $T=232000 196600 1 0 $X=231420 $Y=190900
X1345 91 43 526 437 1 1 UDB116SVT24_NR2_MM_0P75 $T=269120 175000 0 0 $X=268540 $Y=174700
X1346 91 460 527 463 1 1 UDB116SVT24_NR2_MM_0P75 $T=281880 207400 0 0 $X=281300 $Y=207100
X1347 91 465 466 29 1 1 UDB116SVT24_NR2_MM_0P75 $T=307400 207400 0 0 $X=306820 $Y=207100
X1348 91 50 469 48 1 1 UDB116SVT24_NR2_MM_0P75 $T=316680 239800 0 180 $X=312620 $Y=234100
X1349 91 480 528 476 1 1 UDB116SVT24_NR2_MM_0P75 $T=337560 185800 1 0 $X=336980 $Y=180100
X1350 91 486 64 480 1 1 UDB116SVT24_NR2_MM_0P75 $T=345680 185800 1 180 $X=341620 $Y=185500
X1351 91 50 484 67 1 1 UDB116SVT24_NR2_MM_0P75 $T=350320 218200 1 0 $X=349740 $Y=212500
X1352 91 478 477 75 1 1 UDB116SVT24_NR2_MM_0P75 $T=352640 185800 1 0 $X=352060 $Y=180100
X1353 91 50 492 68 1 1 UDB116SVT24_NR2_MM_0P75 $T=353800 239800 0 0 $X=353220 $Y=239500
X1354 91 510 83 80 1 1 UDB116SVT24_NR2_MM_0P75 $T=411800 185800 0 180 $X=407740 $Y=180100
X1355 402 403 91 390 2245 397 1 1 UDB116SVT24_AOI21_MM_1 $T=184440 207400 1 180 $X=179220 $Y=207100
X1356 400 403 91 398 2281 402 1 1 UDB116SVT24_AOI21_MM_1 $T=180960 218200 0 0 $X=180380 $Y=217900
X1357 409 412 91 420 2282 411 1 1 UDB116SVT24_AOI21_MM_1 $T=215760 229000 1 180 $X=210540 $Y=228700
X1358 441 429 91 458 2250 432 1 1 UDB116SVT24_AOI21_MM_1 $T=251720 229000 0 180 $X=246500 $Y=223300
X1359 440 26 91 442 2249 441 1 1 UDB116SVT24_AOI21_MM_1 $T=250560 218200 0 0 $X=249980 $Y=217900
X1360 436 41 91 289 2283 989 1 1 UDB116SVT24_AOI21_MM_1 $T=258680 175000 0 0 $X=258100 $Y=174700
X1361 498 493 91 1015 2264 1012 1 1 UDB116SVT24_AOI21_MM_1 $T=366560 185800 1 180 $X=361340 $Y=185500
X1362 82 84 91 336 2269 80 1 1 UDB116SVT24_AOI21_MM_1 $T=412960 175000 1 180 $X=407740 $Y=174700
X1363 85 84 91 340 2270 80 1 1 UDB116SVT24_AOI21_MM_1 $T=417600 175000 0 0 $X=417020 $Y=174700
X1364 86 84 91 513 2271 80 1 1 UDB116SVT24_AOI21_MM_1 $T=417600 185800 1 0 $X=417020 $Y=180100
X1365 1 91 1 UDB116SVT24_FILL4 $T=122960 207400 1 0 $X=122380 $Y=201700
X1366 1 91 1 UDB116SVT24_FILL4 $T=165880 175000 0 0 $X=165300 $Y=174700
X1367 1 91 1 UDB116SVT24_FILL4 $T=165880 218200 0 0 $X=165300 $Y=217900
X1368 1 91 1 UDB116SVT24_FILL4 $T=185600 218200 0 0 $X=185020 $Y=217900
X1369 1 91 1 UDB116SVT24_FILL4 $T=218080 185800 0 0 $X=217500 $Y=185500
X1370 1 91 1 UDB116SVT24_FILL4 $T=277240 218200 0 0 $X=276660 $Y=217900
X1371 1 91 1 UDB116SVT24_FILL4 $T=324800 239800 0 0 $X=324220 $Y=239500
X1372 1 91 1 UDB116SVT24_FILL4 $T=327120 250600 1 0 $X=326540 $Y=244900
X1373 1 91 1 UDB116SVT24_FILL4 $T=357280 185800 0 0 $X=356700 $Y=185500
X1374 1 91 1 UDB116SVT24_FILL4 $T=403680 207400 0 0 $X=403100 $Y=207100
X1375 1 91 1 UDB116SVT24_FILL4 $T=459360 207400 0 0 $X=458780 $Y=207100
X1376 91 404 397 403 1 1 UDB116SVT24_NR2_0P75 $T=186760 218200 0 180 $X=182700 $Y=212500
X1377 91 409 413 412 1 1 UDB116SVT24_NR2_0P75 $T=201840 229000 1 0 $X=201260 $Y=223300
X1378 91 414 405 415 1 1 UDB116SVT24_NR2_0P75 $T=204160 218200 1 0 $X=203580 $Y=212500
X1379 91 445 436 39 1 1 UDB116SVT24_NR2_0P75 $T=257520 185800 1 0 $X=256940 $Y=180100
X1380 91 451 456 447 1 1 UDB116SVT24_NR2_0P75 $T=262160 196600 1 0 $X=261580 $Y=190900
X1381 91 478 52 476 1 1 UDB116SVT24_NR2_0P75 $T=331760 185800 0 180 $X=327700 $Y=180100
X1382 91 58 467 57 1 1 UDB116SVT24_NR2_0P75 $T=332920 239800 1 180 $X=328860 $Y=239500
X1383 91 479 483 59 1 1 UDB116SVT24_NR2_0P75 $T=331760 239800 1 0 $X=331180 $Y=234100
X1384 91 86 511 88 1 1 UDB116SVT24_NR2_0P75 $T=422240 185800 1 0 $X=421660 $Y=180100
X1385 91 89 529 517 1 1 UDB116SVT24_NR2_0P75 $T=455880 207400 0 0 $X=455300 $Y=207100
X1386 91 89 93 520 1 1 UDB116SVT24_NR2_0P75 $T=470960 185800 1 0 $X=470380 $Y=180100
X1387 28 408 1 91 530 1 UDB116SVT24_AN2_MM_1 $T=200680 250600 1 180 $X=194300 $Y=250300
X1388 46 467 1 91 470 1 UDB116SVT24_AN2_MM_1 $T=307400 239800 0 0 $X=306820 $Y=239500
X1389 1 14 388 392 91 1 UDB116SVT24_ND2_MM_0P75 $T=169360 196600 0 0 $X=168780 $Y=196300
X1390 1 390 531 395 91 1 UDB116SVT24_ND2_MM_0P75 $T=170520 207400 0 0 $X=169940 $Y=207100
X1391 1 22 393 397 91 1 UDB116SVT24_ND2_MM_0P75 $T=172840 218200 1 0 $X=172260 $Y=212500
X1392 1 25 391 23 91 1 UDB116SVT24_ND2_MM_0P75 $T=176320 175000 0 0 $X=175740 $Y=174700
X1393 1 405 404 400 91 1 UDB116SVT24_ND2_MM_0P75 $T=196040 218200 1 0 $X=195460 $Y=212500
X1394 1 409 416 30 91 1 UDB116SVT24_ND2_MM_0P75 $T=223880 229000 1 0 $X=223300 $Y=223300
X1395 1 427 414 29 91 1 UDB116SVT24_ND2_MM_0P75 $T=237800 207400 1 180 $X=233740 $Y=207100
X1396 1 427 432 424 91 1 UDB116SVT24_ND2_MM_0P75 $T=244760 218200 0 180 $X=240700 $Y=212500
X1397 1 438 446 434 91 1 UDB116SVT24_ND2_MM_0P75 $T=250560 196600 0 180 $X=246500 $Y=190900
X1398 1 424 439 441 91 1 UDB116SVT24_ND2_MM_0P75 $T=249400 207400 1 0 $X=248820 $Y=201700
X1399 1 40 452 448 91 1 UDB116SVT24_ND2_MM_0P75 $T=257520 196600 1 0 $X=256940 $Y=190900
X1400 1 443 461 414 91 1 UDB116SVT24_ND2_MM_0P75 $T=261000 207400 1 180 $X=256940 $Y=207100
X1401 1 456 445 455 91 1 UDB116SVT24_ND2_MM_0P75 $T=267960 185800 0 0 $X=267380 $Y=185500
X1402 1 51 49 467 91 1 UDB116SVT24_ND2_MM_0P75 $T=316680 239800 0 0 $X=316100 $Y=239500
X1403 1 470 479 48 91 1 UDB116SVT24_ND2_MM_0P75 $T=323640 239800 1 0 $X=323060 $Y=234100
X1404 1 55 73 477 91 1 UDB116SVT24_ND2_MM_0P75 $T=328280 196600 0 180 $X=324220 $Y=190900
X1405 1 483 94 67 91 1 UDB116SVT24_ND2_MM_0P75 $T=341040 239800 1 0 $X=340460 $Y=234100
X1406 1 488 532 73 91 1 UDB116SVT24_ND2_MM_0P75 $T=345680 207400 1 0 $X=345100 $Y=201700
X1407 1 55 486 478 91 1 UDB116SVT24_ND2_MM_0P75 $T=348000 185800 0 0 $X=347420 $Y=185500
X1408 1 74 533 62 91 1 UDB116SVT24_ND2_MM_0P75 $T=353800 250600 0 180 $X=349740 $Y=244900
X1409 1 63 76 62 91 1 UDB116SVT24_ND2_MM_0P75 $T=354960 250600 1 180 $X=350900 $Y=250300
X1410 1 480 80 489 91 1 UDB116SVT24_ND2_MM_0P75 $T=359600 196600 0 180 $X=355540 $Y=190900
X1411 1 477 490 476 91 1 UDB116SVT24_ND2_MM_0P75 $T=359600 196600 1 180 $X=355540 $Y=196300
X1412 1 490 534 494 91 1 UDB116SVT24_ND2_MM_0P75 $T=367720 229000 0 180 $X=363660 $Y=223300
X1413 1 501 496 502 91 1 UDB116SVT24_ND2_MM_0P75 $T=370040 196600 1 0 $X=369460 $Y=190900
X1414 1 490 535 503 91 1 UDB116SVT24_ND2_MM_0P75 $T=370040 229000 0 0 $X=369460 $Y=228700
X1415 1 72 499 68 91 1 UDB116SVT24_ND2_MM_0P75 $T=378160 239800 1 0 $X=377580 $Y=234100
X1416 1 78 95 510 91 1 UDB116SVT24_ND2_MM_0P75 $T=403680 185800 1 0 $X=403100 $Y=180100
X1417 1 511 536 87 91 1 UDB116SVT24_ND2_MM_0P75 $T=422240 175000 0 0 $X=421660 $Y=174700
X1418 1 83 514 511 91 1 UDB116SVT24_ND2_MM_0P75 $T=428040 185800 1 180 $X=423980 $Y=185500
X1419 1 88 512 83 91 1 UDB116SVT24_ND2_MM_0P75 $T=430360 185800 0 180 $X=426300 $Y=180100
X1420 1 517 522 519 91 1 UDB116SVT24_ND2_MM_0P75 $T=467480 207400 1 180 $X=463420 $Y=207100
X1421 1 520 96 523 91 1 UDB116SVT24_ND2_MM_0P75 $T=474440 175000 1 180 $X=470380 $Y=174700
X1422 401 403 389 1 975 26 91 1 UDB116SVT24_OAI31_1 $T=187920 229000 1 0 $X=187340 $Y=223300
X1423 414 411 412 1 406 265 91 1 UDB116SVT24_OAI31_1 $T=206480 207400 1 180 $X=200100 $Y=207100
X1424 479 50 54 1 1000 1001 91 1 UDB116SVT24_OAI31_1 $T=328280 229000 0 180 $X=321900 $Y=223300
X1425 94 50 61 1 1006 482 91 1 UDB116SVT24_OAI31_1 $T=339880 229000 1 180 $X=333500 $Y=228700
X1426 318 65 66 1 1010 211 91 1 UDB116SVT24_OAI31_1 $T=341040 196600 1 0 $X=340460 $Y=190900
X1427 50 499 70 1 1017 495 91 1 UDB116SVT24_OAI31_1 $T=365400 239800 1 0 $X=364820 $Y=234100
X1428 1021 507 501 1 1022 1028 91 1 UDB116SVT24_OAI31_1 $T=394400 175000 0 0 $X=393820 $Y=174700
X1429 89 522 521 1 1032 1034 91 1 UDB116SVT24_OAI31_1 $T=472120 207400 0 180 $X=465740 $Y=201700
X1430 855 1710 91 1 537 1 UDB116SVT24_BUF_L_1 $T=49880 207400 0 0 $X=49300 $Y=207100
X1431 647 1712 91 1 538 1 UDB116SVT24_BUF_L_1 $T=49880 218200 0 0 $X=49300 $Y=217900
X1432 540 1714 91 1 539 1 UDB116SVT24_BUF_L_1 $T=49880 229000 0 0 $X=49300 $Y=228700
X1433 644 1716 91 1 540 1 UDB116SVT24_BUF_L_1 $T=49880 239800 0 0 $X=49300 $Y=239500
X1434 214 1718 91 1 97 1 UDB116SVT24_BUF_L_1 $T=49880 250600 0 0 $X=49300 $Y=250300
X1435 218 1720 91 1 541 1 UDB116SVT24_BUF_L_1 $T=60320 185800 1 0 $X=59740 $Y=180100
X1436 944 1722 91 1 542 1 UDB116SVT24_BUF_L_1 $T=60320 196600 1 0 $X=59740 $Y=190900
X1437 539 1724 91 1 543 1 UDB116SVT24_BUF_L_1 $T=60320 239800 1 0 $X=59740 $Y=234100
X1438 379 1727 91 1 544 1 UDB116SVT24_BUF_L_1 $T=96280 175000 0 0 $X=95700 $Y=174700
X1439 245 1729 91 1 545 1 UDB116SVT24_BUF_L_1 $T=148480 175000 0 0 $X=147900 $Y=174700
X1440 842 1732 91 1 12 1 UDB116SVT24_BUF_L_1 $T=157760 196600 0 0 $X=157180 $Y=196300
X1441 614 1734 91 1 98 1 UDB116SVT24_BUF_L_1 $T=176320 218200 1 0 $X=175740 $Y=212500
X1442 978 1735 91 1 546 1 UDB116SVT24_BUF_L_1 $T=199520 218200 1 0 $X=198940 $Y=212500
X1443 658 1736 91 1 30 1 UDB116SVT24_BUF_L_1 $T=213440 229000 1 0 $X=212860 $Y=223300
X1444 984 1739 91 1 547 1 UDB116SVT24_BUF_L_1 $T=223880 229000 0 0 $X=223300 $Y=228700
X1445 526 1741 91 1 99 1 UDB116SVT24_BUF_L_1 $T=271440 185800 0 0 $X=270860 $Y=185500
X1446 803 1744 91 1 441 1 UDB116SVT24_BUF_L_1 $T=273760 207400 0 0 $X=273180 $Y=207100
X1447 633 1746 91 1 429 1 UDB116SVT24_BUF_L_1 $T=284200 218200 0 0 $X=283620 $Y=217900
X1448 669 1749 91 1 548 1 UDB116SVT24_BUF_L_1 $T=315520 229000 1 0 $X=314940 $Y=223300
X1449 838 1750 91 1 100 1 UDB116SVT24_BUF_L_1 $T=316680 239800 1 0 $X=316100 $Y=234100
X1450 668 1752 91 1 101 1 UDB116SVT24_BUF_L_1 $T=316680 250600 1 0 $X=316100 $Y=244900
X1451 578 1754 91 1 549 1 UDB116SVT24_BUF_L_1 $T=320160 239800 0 0 $X=319580 $Y=239500
X1452 754 1755 91 1 550 1 UDB116SVT24_BUF_L_1 $T=327120 239800 1 0 $X=326540 $Y=234100
X1453 942 1756 91 1 102 1 UDB116SVT24_BUF_L_1 $T=328280 196600 1 0 $X=327700 $Y=190900
X1454 1005 1758 91 1 551 1 UDB116SVT24_BUF_L_1 $T=332920 239800 0 0 $X=332340 $Y=239500
X1455 792 1760 91 1 552 1 UDB116SVT24_BUF_L_1 $T=339880 229000 0 0 $X=339300 $Y=228700
X1456 555 1762 91 1 553 1 UDB116SVT24_BUF_L_1 $T=343360 229000 1 0 $X=342780 $Y=223300
X1457 320 1764 91 1 554 1 UDB116SVT24_BUF_L_1 $T=346840 250600 0 0 $X=346260 $Y=250300
X1458 532 1765 91 1 555 1 UDB116SVT24_BUF_L_1 $T=349160 207400 1 0 $X=348580 $Y=201700
X1459 550 1768 91 1 556 1 UDB116SVT24_BUF_L_1 $T=354960 239800 1 0 $X=354380 $Y=234100
X1460 1013 1770 91 1 557 1 UDB116SVT24_BUF_L_1 $T=359600 196600 1 0 $X=359020 $Y=190900
X1461 712 1772 91 1 558 1 UDB116SVT24_BUF_L_1 $T=359600 196600 0 0 $X=359020 $Y=196300
X1462 674 1774 91 1 559 1 UDB116SVT24_BUF_L_1 $T=367720 229000 1 0 $X=367140 $Y=223300
X1463 715 1776 91 1 560 1 UDB116SVT24_BUF_L_1 $T=373520 229000 0 0 $X=372940 $Y=228700
X1464 326 1778 91 1 103 1 UDB116SVT24_BUF_L_1 $T=381640 239800 1 0 $X=381060 $Y=234100
X1465 331 1780 91 1 104 1 UDB116SVT24_BUF_L_1 $T=400200 175000 0 0 $X=399620 $Y=174700
X1466 916 1782 91 1 561 1 UDB116SVT24_BUF_L_1 $T=410640 207400 0 0 $X=410060 $Y=207100
X1467 536 1784 91 1 85 1 UDB116SVT24_BUF_L_1 $T=425720 175000 0 0 $X=425140 $Y=174700
X1468 506 1786 91 1 562 1 UDB116SVT24_BUF_L_1 $T=428040 185800 0 0 $X=427460 $Y=185500
X1469 681 1788 91 1 563 1 UDB116SVT24_BUF_L_1 $T=448920 196600 1 0 $X=448340 $Y=190900
X1470 725 1790 91 1 564 1 UDB116SVT24_BUF_L_1 $T=448920 218200 1 0 $X=448340 $Y=212500
X1471 682 1792 91 1 565 1 UDB116SVT24_BUF_L_1 $T=448920 229000 1 0 $X=448340 $Y=223300
X1472 584 1794 91 1 566 1 UDB116SVT24_BUF_L_1 $T=448920 250600 1 0 $X=448340 $Y=244900
X1473 358 1796 91 1 520 1 UDB116SVT24_BUF_L_1 $T=474440 175000 0 0 $X=473860 $Y=174700
X1474 728 1798 91 1 567 1 UDB116SVT24_BUF_L_1 $T=493000 239800 1 180 $X=487780 $Y=239500
X1475 1 91 568 537 ICV_10 $T=49880 196600 0 0 $X=49300 $Y=196300
X1476 1 91 569 733 ICV_10 $T=60320 218200 0 0 $X=59740 $Y=217900
X1477 1 91 105 946 ICV_10 $T=60320 239800 0 0 $X=59740 $Y=239500
X1478 1 91 570 235 ICV_10 $T=117160 196600 0 0 $X=116580 $Y=196300
X1479 1 91 571 879 ICV_10 $T=122960 207400 0 0 $X=122380 $Y=207100
X1480 1 91 572 965 ICV_10 $T=140360 196600 1 0 $X=139780 $Y=190900
X1481 1 91 573 771 ICV_10 $T=141520 196600 0 0 $X=140940 $Y=196300
X1482 1 91 389 593 ICV_10 $T=160080 229000 1 0 $X=159500 $Y=223300
X1483 1 91 574 531 ICV_10 $T=162400 196600 0 0 $X=161820 $Y=196300
X1484 1 91 106 394 ICV_10 $T=197200 196600 1 0 $X=196620 $Y=190900
X1485 1 91 107 271 ICV_10 $T=211120 185800 0 0 $X=210540 $Y=185500
X1486 1 91 108 286 ICV_10 $T=249400 250600 0 0 $X=248820 $Y=250300
X1487 1 91 448 796 ICV_10 $T=255200 196600 0 0 $X=254620 $Y=196300
X1488 1 91 575 288 ICV_10 $T=255200 229000 1 0 $X=254620 $Y=223300
X1489 1 91 576 457 ICV_10 $T=265640 196600 1 0 $X=265060 $Y=190900
X1490 1 91 577 527 ICV_10 $T=279560 196600 0 0 $X=278980 $Y=196300
X1491 1 91 109 300 ICV_10 $T=281880 185800 0 0 $X=281300 $Y=185500
X1492 1 91 578 666 ICV_10 $T=300440 218200 0 0 $X=299860 $Y=217900
X1493 1 91 110 1011 ICV_10 $T=351480 229000 0 0 $X=350900 $Y=228700
X1494 1 91 579 534 ICV_10 $T=357280 218200 0 0 $X=356700 $Y=217900
X1495 1 91 580 675 ICV_10 $T=360760 250600 0 0 $X=360180 $Y=250300
X1496 1 91 581 826 ICV_10 $T=375840 196600 0 0 $X=375260 $Y=196300
X1497 1 91 582 777 ICV_10 $T=395560 239800 1 0 $X=394980 $Y=234100
X1498 1 91 583 1030 ICV_10 $T=399040 207400 1 0 $X=398460 $Y=201700
X1499 1 91 584 350 ICV_10 $T=441960 250600 0 0 $X=441380 $Y=250300
X1500 1 91 585 795 ICV_10 $T=445440 196600 0 0 $X=444860 $Y=196300
X1501 1 91 586 730 ICV_10 $T=459360 196600 1 0 $X=458780 $Y=190900
X1502 1 91 587 1036 ICV_10 $T=465160 229000 1 0 $X=464580 $Y=223300
X1503 1 91 588 932 ICV_10 $T=480240 218200 1 0 $X=479660 $Y=212500
X1504 1 91 589 588 ICV_10 $T=486040 207400 0 0 $X=485460 $Y=207100
X1505 1 91 590 814 ICV_11 $T=60320 250600 0 0 $X=59740 $Y=250300
X1506 1 91 591 544 ICV_11 $T=68440 196600 0 0 $X=67860 $Y=196300
X1507 1 91 592 224 ICV_11 $T=71920 250600 1 0 $X=71340 $Y=244900
X1508 1 91 111 861 ICV_11 $T=102080 218200 0 0 $X=101500 $Y=217900
X1509 1 91 18 846 ICV_11 $T=150800 229000 1 0 $X=150220 $Y=223300
X1510 1 91 593 968 ICV_11 $T=156600 218200 1 0 $X=156020 $Y=212500
X1511 1 91 594 253 ICV_11 $T=164720 229000 0 0 $X=164140 $Y=228700
X1512 1 91 112 299 ICV_11 $T=278400 250600 1 0 $X=277820 $Y=244900
X1513 1 91 595 999 ICV_11 $T=301600 250600 1 0 $X=301020 $Y=244900
X1514 1 91 596 557 ICV_11 $T=353800 218200 1 0 $X=353220 $Y=212500
X1515 1 91 597 1016 ICV_11 $T=386280 239800 1 0 $X=385700 $Y=234100
X1516 1 91 598 597 ICV_11 $T=408320 239800 1 0 $X=407740 $Y=234100
X1517 1 91 599 561 ICV_11 $T=417600 207400 1 0 $X=417020 $Y=201700
X1518 1 91 600 923 ICV_11 $T=423400 239800 1 0 $X=422820 $Y=234100
X1519 1 91 601 679 ICV_11 $T=433840 229000 0 0 $X=433260 $Y=228700
X1520 1 91 602 564 ICV_11 $T=438480 218200 0 0 $X=437900 $Y=217900
X1521 1 91 381 380 1 UDB116SVT24_INV_0P75 $T=105560 196600 1 0 $X=104980 $Y=190900
X1522 1 91 382 113 1 UDB116SVT24_INV_0P75 $T=112520 175000 1 180 $X=109620 $Y=174700
X1523 1 91 14 603 1 UDB116SVT24_INV_0P75 $T=135720 207400 0 180 $X=132820 $Y=201700
X1524 1 91 388 384 1 UDB116SVT24_INV_0P75 $T=157760 196600 1 180 $X=154860 $Y=196300
X1525 1 91 391 6 1 UDB116SVT24_INV_0P75 $T=172840 175000 1 180 $X=169940 $Y=174700
X1526 1 91 389 114 1 UDB116SVT24_INV_0P75 $T=170520 229000 1 0 $X=169940 $Y=223300
X1527 1 91 394 25 1 UDB116SVT24_INV_0P75 $T=174000 185800 1 180 $X=171100 $Y=185500
X1528 1 91 24 396 1 UDB116SVT24_INV_0P75 $T=175160 239800 0 180 $X=172260 $Y=234100
X1529 1 91 399 604 1 UDB116SVT24_INV_0P75 $T=179800 229000 0 0 $X=179220 $Y=228700
X1530 1 91 26 27 1 UDB116SVT24_INV_0P75 $T=189080 250600 0 0 $X=188500 $Y=250300
X1531 1 91 405 402 1 UDB116SVT24_INV_0P75 $T=194880 218200 0 180 $X=191980 $Y=212500
X1532 1 91 412 407 1 UDB116SVT24_INV_0P75 $T=206480 229000 1 0 $X=205900 $Y=223300
X1533 1 91 30 411 1 UDB116SVT24_INV_0P75 $T=211120 218200 1 0 $X=210540 $Y=212500
X1534 1 91 31 417 1 UDB116SVT24_INV_0P75 $T=218080 196600 0 180 $X=215180 $Y=190900
X1535 1 91 416 605 1 UDB116SVT24_INV_0P75 $T=218080 229000 1 0 $X=217500 $Y=223300
X1536 1 91 414 410 1 UDB116SVT24_INV_0P75 $T=223880 196600 1 0 $X=223300 $Y=190900
X1537 1 91 409 606 1 UDB116SVT24_INV_0P75 $T=233160 229000 0 180 $X=230260 $Y=223300
X1538 1 91 426 427 1 UDB116SVT24_INV_0P75 $T=235480 207400 1 0 $X=234900 $Y=201700
X1539 1 91 29 424 1 UDB116SVT24_INV_0P75 $T=236640 218200 1 0 $X=236060 $Y=212500
X1540 1 91 430 431 1 UDB116SVT24_INV_0P75 $T=242440 229000 1 0 $X=241860 $Y=223300
X1541 1 91 38 115 1 UDB116SVT24_INV_0P75 $T=242440 250600 1 0 $X=241860 $Y=244900
X1542 1 91 429 440 1 UDB116SVT24_INV_0P75 $T=252880 229000 1 0 $X=252300 $Y=223300
X1543 1 91 446 437 1 UDB116SVT24_INV_0P75 $T=254040 185800 1 0 $X=253460 $Y=180100
X1544 1 91 448 438 1 UDB116SVT24_INV_0P75 $T=258680 207400 0 180 $X=255780 $Y=201700
X1545 1 91 28 42 1 UDB116SVT24_INV_0P75 $T=256360 250600 0 0 $X=255780 $Y=250300
X1546 1 91 458 454 1 UDB116SVT24_INV_0P75 $T=267960 239800 0 180 $X=265060 $Y=234100
X1547 1 91 441 428 1 UDB116SVT24_INV_0P75 $T=270280 207400 0 180 $X=267380 $Y=201700
X1548 1 91 462 447 1 UDB116SVT24_INV_0P75 $T=279560 196600 1 180 $X=276660 $Y=196300
X1549 1 91 44 460 1 UDB116SVT24_INV_0P75 $T=284200 218200 1 180 $X=281300 $Y=217900
X1550 1 91 453 464 1 UDB116SVT24_INV_0P75 $T=292320 196600 0 0 $X=291740 $Y=196300
X1551 1 91 476 55 1 UDB116SVT24_INV_0P75 $T=324800 185800 1 0 $X=324220 $Y=180100
X1552 1 91 63 481 1 UDB116SVT24_INV_0P75 $T=339880 250600 1 180 $X=336980 $Y=250300
X1553 1 91 478 487 1 UDB116SVT24_INV_0P75 $T=342200 185800 1 0 $X=341620 $Y=180100
X1554 1 91 71 116 1 UDB116SVT24_INV_0P75 $T=346840 250600 1 180 $X=343940 $Y=250300
X1555 1 91 75 480 1 UDB116SVT24_INV_0P75 $T=357280 175000 1 180 $X=354380 $Y=174700
X1556 1 91 486 489 1 UDB116SVT24_INV_0P75 $T=354960 185800 0 0 $X=354380 $Y=185500
X1557 1 91 490 117 1 UDB116SVT24_INV_0P75 $T=359600 229000 0 180 $X=356700 $Y=223300
X1558 1 91 497 493 1 UDB116SVT24_INV_0P75 $T=366560 185800 0 180 $X=363660 $Y=180100
X1559 1 91 501 607 1 UDB116SVT24_INV_0P75 $T=373520 196600 1 0 $X=372940 $Y=190900
X1560 1 91 81 505 1 UDB116SVT24_INV_0P75 $T=381640 185800 0 0 $X=381060 $Y=185500
X1561 1 91 509 507 1 UDB116SVT24_INV_0P75 $T=392080 185800 1 0 $X=391500 $Y=180100
X1562 1 91 80 78 1 UDB116SVT24_INV_0P75 $T=410640 207400 1 180 $X=407740 $Y=207100
X1563 1 91 83 89 1 UDB116SVT24_INV_0P75 $T=414120 175000 0 0 $X=413540 $Y=174700
X1564 1 91 84 510 1 UDB116SVT24_INV_0P75 $T=416440 185800 0 180 $X=413540 $Y=180100
X1565 1 91 519 516 1 UDB116SVT24_INV_0P75 $T=465160 218200 0 180 $X=462260 $Y=212500
X1566 411 31 2248 413 91 525 1 419 1 UDB116SVT24_OAOI211_0P75 $T=211120 207400 1 0 $X=210540 $Y=201700
X1567 452 451 2284 447 91 456 1 457 1 UDB116SVT24_OAOI211_0P75 $T=262160 196600 0 0 $X=261580 $Y=196300
X1568 485 484 2259 920 91 117 1 482 1 UDB116SVT24_OAOI211_0P75 $T=343360 229000 0 180 $X=335820 $Y=223300
X1569 491 492 2285 70 91 117 1 495 1 UDB116SVT24_OAOI211_0P75 $T=360760 239800 0 0 $X=360180 $Y=239500
X1570 24 1908 260 91 1 401 1 UDB116SVT24_OR2_0P75 $T=191400 239800 1 180 $X=186180 $Y=239500
X1571 28 1909 38 91 1 281 1 UDB116SVT24_OR2_0P75 $T=242440 250600 0 180 $X=237220 $Y=244900
X1572 505 1910 504 91 1 1021 1 UDB116SVT24_OR2_0P75 $T=382800 185800 0 180 $X=377580 $Y=180100
X1573 3 25 1 956 957 91 1 UDB116SVT24_OAI21_0P75 $T=100920 185800 1 180 $X=95700 $Y=185500
X1574 380 25 1 955 958 91 1 UDB116SVT24_OAI21_0P75 $T=99760 196600 1 0 $X=99180 $Y=190900
X1575 10 25 1 959 960 91 1 UDB116SVT24_OAI21_0P75 $T=124120 185800 0 180 $X=118900 $Y=180100
X1576 9 25 1 238 961 91 1 UDB116SVT24_OAI21_0P75 $T=121800 175000 0 0 $X=121220 $Y=174700
X1577 4 25 1 962 243 91 1 UDB116SVT24_OAI21_0P75 $T=136880 175000 0 0 $X=136300 $Y=174700
X1578 17 25 1 965 244 91 1 UDB116SVT24_OAI21_0P75 $T=143840 175000 0 0 $X=143260 $Y=174700
X1579 19 25 1 964 969 91 1 UDB116SVT24_OAI21_0P75 $T=161240 185800 1 0 $X=160660 $Y=180100
X1580 401 393 1 953 971 91 1 UDB116SVT24_OAI21_0P75 $T=183280 239800 0 180 $X=178060 $Y=234100
X1581 406 405 1 974 404 91 1 UDB116SVT24_OAI21_0P75 $T=194880 207400 1 180 $X=189660 $Y=207100
X1582 395 419 1 266 982 91 1 UDB116SVT24_OAI21_0P75 $T=211120 185800 1 180 $X=205900 $Y=185500
X1583 414 419 1 982 267 91 1 UDB116SVT24_OAI21_0P75 $T=211120 196600 0 180 $X=205900 $Y=190900
X1584 417 395 1 268 269 91 1 UDB116SVT24_OAI21_0P75 $T=212280 196600 1 180 $X=207060 $Y=196300
X1585 413 605 1 423 410 91 1 UDB116SVT24_OAI21_0P75 $T=218080 207400 0 0 $X=217500 $Y=207100
X1586 425 421 1 984 810 91 1 UDB116SVT24_OAI21_0P75 $T=233160 229000 1 180 $X=227940 $Y=228700
X1587 436 41 1 989 446 91 1 UDB116SVT24_OAI21_0P75 $T=251720 175000 0 0 $X=251140 $Y=174700
X1588 438 40 1 451 434 91 1 UDB116SVT24_OAI21_0P75 $T=251720 196600 1 0 $X=251140 $Y=190900
X1589 456 455 1 43 445 91 1 UDB116SVT24_OAI21_0P75 $T=265640 185800 1 0 $X=265060 $Y=180100
X1590 464 477 1 998 73 91 1 UDB116SVT24_OAI21_0P75 $T=302760 196600 1 0 $X=302180 $Y=190900
X1591 469 837 1 1001 54 91 1 UDB116SVT24_OAI21_0P75 $T=310880 229000 1 0 $X=310300 $Y=223300
X1592 50 470 1 837 71 91 1 UDB116SVT24_OAI21_0P75 $T=325960 229000 1 180 $X=320740 $Y=228700
X1593 50 483 1 485 71 91 1 UDB116SVT24_OAI21_0P75 $T=351480 229000 1 180 $X=346260 $Y=228700
X1594 486 66 1 71 75 91 1 UDB116SVT24_OAI21_0P75 $T=350320 196600 1 0 $X=349740 $Y=190900
X1595 50 72 1 491 71 91 1 UDB116SVT24_OAI21_0P75 $T=350320 239800 1 0 $X=349740 $Y=234100
X1596 500 80 1 1013 471 91 1 UDB116SVT24_OAI21_0P75 $T=368880 196600 0 180 $X=363660 $Y=190900
X1597 80 81 1 508 1012 91 1 UDB116SVT24_OAI21_0P75 $T=373520 185800 1 0 $X=372940 $Y=180100
X1598 510 523 1 90 78 91 1 UDB116SVT24_OAI21_0P75 $T=451240 185800 1 0 $X=450660 $Y=180100
X1599 510 519 1 518 78 91 1 UDB116SVT24_OAI21_0P75 $T=452400 196600 0 0 $X=451820 $Y=196300
X1600 518 529 1 1034 521 91 1 UDB116SVT24_OAI21_0P75 $T=460520 207400 1 0 $X=459940 $Y=201700
X1601 118 1932 1 91 119 1 UDB116SVT24_BUF_1 $T=49880 175000 0 0 $X=49300 $Y=174700
X1602 608 1934 1 91 609 1 UDB116SVT24_BUF_1 $T=100920 185800 0 0 $X=100340 $Y=185500
X1603 610 1935 1 91 611 1 UDB116SVT24_BUF_1 $T=109040 196600 1 0 $X=108460 $Y=190900
X1604 120 1937 1 91 121 1 UDB116SVT24_BUF_1 $T=112520 175000 0 0 $X=111940 $Y=174700
X1605 612 1939 1 91 122 1 UDB116SVT24_BUF_1 $T=124120 239800 1 0 $X=123540 $Y=234100
X1606 613 1940 1 91 614 1 UDB116SVT24_BUF_1 $T=126440 250600 0 0 $X=125860 $Y=250300
X1607 407 1941 1 91 615 1 UDB116SVT24_BUF_1 $T=134560 218200 0 0 $X=133980 $Y=217900
X1608 123 1943 1 91 616 1 UDB116SVT24_BUF_1 $T=160080 196600 1 0 $X=159500 $Y=190900
X1609 124 1945 1 91 125 1 UDB116SVT24_BUF_1 $T=168200 250600 0 0 $X=167620 $Y=250300
X1610 617 1947 1 91 618 1 UDB116SVT24_BUF_1 $T=172840 196600 0 0 $X=172260 $Y=196300
X1611 126 1949 1 91 619 1 UDB116SVT24_BUF_1 $T=182120 239800 0 0 $X=181540 $Y=239500
X1612 620 1951 1 91 617 1 UDB116SVT24_BUF_1 $T=183280 196600 0 0 $X=182700 $Y=196300
X1613 621 1953 1 91 622 1 UDB116SVT24_BUF_1 $T=183280 239800 1 0 $X=182700 $Y=234100
X1614 127 1954 1 91 623 1 UDB116SVT24_BUF_1 $T=200680 250600 0 0 $X=200100 $Y=250300
X1615 624 1956 1 91 625 1 UDB116SVT24_BUF_1 $T=206480 185800 1 180 $X=202420 $Y=185500
X1616 626 1958 1 91 627 1 UDB116SVT24_BUF_1 $T=211120 196600 1 0 $X=210540 $Y=190900
X1617 128 1960 1 91 628 1 UDB116SVT24_BUF_1 $T=233160 250600 1 0 $X=232580 $Y=244900
X1618 129 1962 1 91 629 1 UDB116SVT24_BUF_1 $T=284200 250600 0 0 $X=283620 $Y=250300
X1619 577 1964 1 91 130 1 UDB116SVT24_BUF_1 $T=292320 175000 1 180 $X=288260 $Y=174700
X1620 630 1967 1 91 631 1 UDB116SVT24_BUF_1 $T=295800 185800 0 0 $X=295220 $Y=185500
X1621 632 1969 1 91 633 1 UDB116SVT24_BUF_1 $T=302760 239800 1 0 $X=302180 $Y=234100
X1622 131 1972 1 91 132 1 UDB116SVT24_BUF_1 $T=332920 250600 0 0 $X=332340 $Y=250300
X1623 634 1973 1 91 635 1 UDB116SVT24_BUF_1 $T=339880 250600 0 0 $X=339300 $Y=250300
X1624 133 1974 1 91 134 1 UDB116SVT24_BUF_1 $T=360760 175000 1 180 $X=356700 $Y=174700
X1625 558 1975 1 91 636 1 UDB116SVT24_BUF_1 $T=363080 229000 0 180 $X=359020 $Y=223300
X1626 135 1976 1 91 637 1 UDB116SVT24_BUF_1 $T=375840 196600 1 180 $X=371780 $Y=196300
X1627 48 1977 1 91 638 1 UDB116SVT24_BUF_1 $T=414120 229000 0 0 $X=413540 $Y=228700
X1628 639 1978 1 91 640 1 UDB116SVT24_BUF_1 $T=418760 229000 0 0 $X=418180 $Y=228700
X1629 110 1981 1 91 641 1 UDB116SVT24_BUF_1 $T=439640 207400 0 0 $X=439060 $Y=207100
X1630 400 24 2246 604 1 91 260 971 1 UDB116SVT24_AOAI211_0P75 $T=187920 239800 1 0 $X=187340 $Y=234100
X1631 438 442 2251 430 1 91 427 443 1 UDB116SVT24_AOAI211_0P75 $T=254040 218200 0 180 $X=246500 $Y=212500
X1632 53 475 2257 29 1 91 473 1002 1 UDB116SVT24_AOAI211_0P75 $T=324800 185800 0 180 $X=317260 $Y=180100
X1633 472 52 2256 315 1 91 29 474 1 UDB116SVT24_AOAI211_0P75 $T=320160 175000 0 0 $X=319580 $Y=174700
X1634 481 62 2260 116 1 91 77 1009 1 UDB116SVT24_AOAI211_0P75 $T=337560 250600 1 0 $X=336980 $Y=244900
X1635 64 65 2261 1008 1 91 71 50 1 UDB116SVT24_AOAI211_0P75 $T=342200 196600 0 0 $X=341620 $Y=196300
X1636 507 78 2268 508 1 91 501 1028 1 UDB116SVT24_AOAI211_0P75 $T=395560 185800 1 0 $X=394980 $Y=180100
X1637 1 91 642 735 ICV_12 $T=54520 207400 0 0 $X=53940 $Y=207100
X1638 1 91 643 217 ICV_12 $T=54520 218200 0 0 $X=53940 $Y=217900
X1639 1 91 644 645 ICV_12 $T=54520 229000 0 0 $X=53940 $Y=228700
X1640 1 91 645 538 ICV_12 $T=54520 239800 0 0 $X=53940 $Y=239500
X1641 1 91 646 216 ICV_12 $T=54520 250600 0 0 $X=53940 $Y=250300
X1642 1 91 647 643 ICV_12 $T=64960 239800 1 0 $X=64380 $Y=234100
X1643 1 91 648 739 ICV_12 $T=68440 229000 0 0 $X=67860 $Y=228700
X1644 1 91 136 950 ICV_12 $T=69600 250600 0 0 $X=69020 $Y=250300
X1645 1 91 649 650 ICV_12 $T=112520 196600 1 0 $X=111940 $Y=190900
X1646 1 91 650 959 ICV_12 $T=116000 175000 0 0 $X=115420 $Y=174700
X1647 1 91 651 770 ICV_12 $T=127600 229000 0 0 $X=127020 $Y=228700
X1648 1 91 652 240 ICV_12 $T=129920 207400 0 0 $X=129340 $Y=207100
X1649 1 91 137 962 ICV_12 $T=131080 185800 1 0 $X=130500 $Y=180100
X1650 1 91 653 543 ICV_12 $T=136880 239800 1 0 $X=136300 $Y=234100
X1651 1 91 654 963 ICV_12 $T=138040 218200 0 0 $X=137460 $Y=217900
X1652 1 91 655 752 ICV_12 $T=139200 229000 1 0 $X=138620 $Y=223300
X1653 1 91 656 530 ICV_12 $T=150800 229000 0 0 $X=150220 $Y=228700
X1654 1 91 657 251 ICV_12 $T=163560 196600 1 0 $X=162980 $Y=190900
X1655 1 91 621 648 ICV_12 $T=174000 229000 0 0 $X=173420 $Y=228700
X1656 1 91 658 818 ICV_12 $T=182120 229000 1 0 $X=181540 $Y=223300
X1657 1 91 138 622 ICV_12 $T=182120 229000 0 0 $X=181540 $Y=228700
X1658 1 91 403 815 ICV_12 $T=184440 207400 0 0 $X=183860 $Y=207100
X1659 1 91 139 981 ICV_12 $T=204160 250600 0 0 $X=203580 $Y=250300
X1660 1 91 659 783 ICV_12 $T=209960 185800 1 0 $X=209380 $Y=180100
X1661 1 91 140 983 ICV_12 $T=218080 196600 1 0 $X=217500 $Y=190900
X1662 1 91 626 705 ICV_12 $T=226200 196600 1 0 $X=225620 $Y=190900
X1663 1 91 660 986 ICV_12 $T=233160 229000 0 0 $X=232580 $Y=228700
X1664 1 91 141 291 ICV_12 $T=263320 175000 0 0 $X=262740 $Y=174700
X1665 1 91 661 576 ICV_12 $T=276080 185800 0 0 $X=275500 $Y=185500
X1666 1 91 662 302 ICV_12 $T=285360 207400 0 0 $X=284780 $Y=207100
X1667 1 91 663 637 ICV_12 $T=286520 196600 0 0 $X=285940 $Y=196300
X1668 1 91 142 991 ICV_12 $T=295800 250600 1 0 $X=295220 $Y=244900
X1669 1 91 453 822 ICV_12 $T=298120 207400 1 0 $X=297540 $Y=201700
X1670 1 91 664 997 ICV_12 $T=299280 185800 0 0 $X=298700 $Y=185500
X1671 1 91 665 548 ICV_12 $T=301600 239800 0 0 $X=301020 $Y=239500
X1672 1 91 472 713 ICV_12 $T=307400 196600 1 0 $X=306820 $Y=190900
X1673 1 91 666 1000 ICV_12 $T=307400 218200 0 0 $X=306820 $Y=217900
X1674 1 91 667 711 ICV_12 $T=315520 229000 0 0 $X=314940 $Y=228700
X1675 1 91 668 595 ICV_12 $T=321320 250600 1 0 $X=320740 $Y=244900
X1676 1 91 669 811 ICV_12 $T=323640 185800 0 0 $X=323060 $Y=185500
X1677 1 91 670 552 ICV_12 $T=335240 239800 1 0 $X=334660 $Y=234100
X1678 1 91 634 753 ICV_12 $T=337560 239800 0 0 $X=336980 $Y=239500
X1679 1 91 143 110 ICV_12 $T=344520 250600 1 0 $X=343940 $Y=244900
X1680 1 91 671 321 ICV_12 $T=346840 175000 0 0 $X=346260 $Y=174700
X1681 1 91 672 665 ICV_12 $T=348000 239800 0 0 $X=347420 $Y=239500
X1682 1 91 673 553 ICV_12 $T=353800 207400 1 0 $X=353220 $Y=201700
X1683 1 91 144 322 ICV_12 $T=354960 250600 0 0 $X=354380 $Y=250300
X1684 1 91 145 998 ICV_12 $T=359600 239800 1 0 $X=359020 $Y=234100
X1685 1 91 674 579 ICV_12 $T=363080 218200 1 0 $X=362500 $Y=212500
X1686 1 91 146 995 ICV_12 $T=366560 185800 0 0 $X=365980 $Y=185500
X1687 1 91 675 1014 ICV_12 $T=367720 250600 0 0 $X=367140 $Y=250300
X1688 1 91 676 755 ICV_12 $T=396720 239800 0 0 $X=396140 $Y=239500
X1689 1 91 147 339 ICV_12 $T=417600 239800 1 0 $X=417020 $Y=234100
X1690 1 91 677 724 ICV_12 $T=432680 185800 0 0 $X=432100 $Y=185500
X1691 1 91 509 562 ICV_12 $T=432680 207400 1 0 $X=432100 $Y=201700
X1692 1 91 678 600 ICV_12 $T=432680 218200 0 0 $X=432100 $Y=217900
X1693 1 91 679 565 ICV_12 $T=432680 239800 1 0 $X=432100 $Y=234100
X1694 1 91 680 345 ICV_12 $T=436160 250600 0 0 $X=435580 $Y=250300
X1695 1 91 148 346 ICV_12 $T=438480 175000 0 0 $X=437900 $Y=174700
X1696 1 91 681 1032 ICV_12 $T=443120 185800 0 0 $X=442540 $Y=185500
X1697 1 91 682 349 ICV_12 $T=443120 229000 0 0 $X=442540 $Y=228700
X1698 1 91 683 563 ICV_12 $T=453560 196600 1 0 $X=452980 $Y=190900
X1699 1 91 684 602 ICV_12 $T=453560 218200 1 0 $X=452980 $Y=212500
X1700 1 91 685 1035 ICV_12 $T=465160 218200 1 0 $X=464580 $Y=212500
X1701 1 91 686 353 ICV_12 $T=479080 175000 0 0 $X=478500 $Y=174700
X1702 1 91 687 688 ICV_12 $T=487200 218200 1 0 $X=486620 $Y=212500
X1703 1 91 688 782 ICV_12 $T=493000 207400 0 0 $X=492420 $Y=207100
X1704 1 91 689 690 852 907 ICV_13 $T=56840 196600 0 0 $X=56260 $Y=196300
X1705 1 91 691 692 219 223 ICV_13 $T=60320 250600 1 0 $X=59740 $Y=244900
X1706 1 91 693 694 738 850 ICV_13 $T=67280 239800 0 0 $X=66700 $Y=239500
X1707 1 91 4 149 906 954 ICV_13 $T=76560 175000 0 0 $X=75980 $Y=174700
X1708 1 91 695 696 955 956 ICV_13 $T=88160 196600 1 0 $X=87580 $Y=190900
X1709 1 91 697 698 859 798 ICV_13 $T=90480 218200 0 0 $X=89900 $Y=217900
X1710 1 91 150 699 699 241 ICV_13 $T=126440 250600 1 0 $X=125860 $Y=244900
X1711 1 91 700 701 701 835 ICV_13 $T=129920 239800 0 0 $X=129340 $Y=239500
X1712 1 91 702 703 572 702 ICV_13 $T=147320 196600 1 0 $X=146740 $Y=190900
X1713 1 91 412 151 623 546 ICV_13 $T=218080 239800 0 0 $X=217500 $Y=239500
X1714 1 91 152 704 985 660 ICV_13 $T=222720 207400 0 0 $X=222140 $Y=207100
X1715 1 91 153 154 275 433 ICV_13 $T=227360 175000 0 0 $X=226780 $Y=174700
X1716 1 91 155 426 627 282 ICV_13 $T=235480 196600 1 0 $X=234900 $Y=190900
X1717 1 91 705 706 987 661 ICV_13 $T=237800 207400 1 0 $X=237220 $Y=201700
X1718 1 91 38 707 293 296 ICV_13 $T=266800 250600 1 0 $X=266220 $Y=244900
X1719 1 91 708 709 804 663 ICV_13 $T=288840 218200 0 0 $X=288260 $Y=217900
X1720 1 91 710 711 943 806 ICV_13 $T=295800 207400 0 0 $X=295220 $Y=207100
X1721 1 91 69 712 823 1004 ICV_13 $T=324800 196600 0 0 $X=324220 $Y=196300
X1722 1 91 133 713 664 316 ICV_13 $T=327120 175000 0 0 $X=326540 $Y=174700
X1723 1 91 476 478 177 776 ICV_13 $T=334080 218200 1 0 $X=333500 $Y=212500
X1724 1 91 714 715 677 1017 ICV_13 $T=358440 229000 0 0 $X=357860 $Y=228700
X1725 1 91 716 156 580 328 ICV_13 $T=377000 239800 0 0 $X=376420 $Y=239500
X1726 1 91 157 717 1022 1025 ICV_13 $T=379320 175000 0 0 $X=378740 $Y=174700
X1727 1 91 639 718 524 335 ICV_13 $T=401360 229000 0 0 $X=400780 $Y=228700
X1728 1 91 488 719 334 1010 ICV_13 $T=406000 207400 1 0 $X=405420 $Y=201700
X1729 1 91 501 720 762 931 ICV_13 $T=408320 185800 0 0 $X=407740 $Y=185500
X1730 1 91 721 500 472 880 ICV_13 $T=415280 207400 0 0 $X=414700 $Y=207100
X1731 1 91 158 722 723 778 ICV_13 $T=419920 250600 0 0 $X=419340 $Y=250300
X1732 1 91 723 159 919 185 ICV_13 $T=422240 229000 0 0 $X=421660 $Y=228700
X1733 1 91 724 515 1015 347 ICV_13 $T=433840 196600 0 0 $X=433260 $Y=196300
X1734 1 91 725 726 601 727 ICV_13 $T=453560 229000 1 0 $X=452980 $Y=223300
X1735 1 91 727 728 809 924 ICV_13 $T=469800 239800 0 0 $X=469220 $Y=239500
X1736 1 91 519 729 935 941 ICV_13 $T=470960 229000 0 0 $X=470380 $Y=228700
X1737 1 91 160 730 686 840 ICV_13 $T=474440 185800 1 0 $X=473860 $Y=180100
X1738 1 91 731 732 945 695 ICV_14 $T=60320 207400 1 0 $X=59740 $Y=201700
X1739 1 91 733 734 741 222 ICV_14 $T=66120 207400 1 0 $X=65540 $Y=201700
X1740 1 91 735 736 872 731 ICV_14 $T=71920 207400 1 0 $X=71340 $Y=201700
X1741 1 91 387 737 734 784 ICV_14 $T=77720 207400 1 0 $X=77140 $Y=201700
X1742 1 91 738 739 226 953 ICV_14 $T=78880 239800 1 0 $X=78300 $Y=234100
X1743 1 91 740 741 853 750 ICV_14 $T=83520 207400 1 0 $X=82940 $Y=201700
X1744 1 91 161 742 751 592 ICV_14 $T=84680 239800 1 0 $X=84100 $Y=234100
X1745 1 91 743 744 642 908 ICV_14 $T=89320 207400 1 0 $X=88740 $Y=201700
X1746 1 91 745 746 693 769 ICV_14 $T=90480 239800 1 0 $X=89900 $Y=234100
X1747 1 91 747 748 742 746 ICV_14 $T=96280 239800 1 0 $X=95700 $Y=234100
X1748 1 91 162 749 747 832 ICV_14 $T=102080 239800 1 0 $X=101500 $Y=234100
X1749 1 91 750 381 649 609 ICV_14 $T=117160 207400 1 0 $X=116580 $Y=201700
X1750 1 91 751 752 700 877 ICV_14 $T=145000 229000 1 0 $X=144420 $Y=223300
X1751 1 91 753 754 992 898 ICV_14 $T=295800 239800 1 0 $X=295220 $Y=234100
X1752 1 91 755 756 582 333 ICV_14 $T=402520 239800 1 0 $X=401940 $Y=234100
X1753 1 91 81 506 763 764 ICV_14 $T=404840 196600 1 0 $X=404260 $Y=190900
X1754 1 91 757 758 583 1029 ICV_14 $T=410640 196600 1 0 $X=410060 $Y=190900
X1755 1 91 163 759 338 717 ICV_14 $T=416440 196600 1 0 $X=415860 $Y=190900
X1756 1 91 760 761 761 759 ICV_14 $T=422240 196600 1 0 $X=421660 $Y=190900
X1757 1 91 762 164 720 721 ICV_14 $T=426880 207400 1 0 $X=426300 $Y=201700
X1758 1 91 763 764 757 758 ICV_14 $T=428040 196600 1 0 $X=427460 $Y=190900
X1759 1 91 765 165 566 765 ICV_14 $T=470960 250600 1 0 $X=470380 $Y=244900
X1760 1 91 766 767 781 766 ICV_14 $T=489520 229000 1 0 $X=488940 $Y=223300
X1761 465 1 166 56 91 1 UDB116SVT24_ND2B_0P75 $T=335240 207400 0 180 $X=328860 $Y=201700
X1762 1 91 768 812 ICV_15 $T=60320 229000 0 0 $X=59740 $Y=228700
X1763 1 91 769 768 ICV_15 $T=70760 239800 1 0 $X=70180 $Y=234100
X1764 1 91 770 749 ICV_15 $T=119480 229000 0 0 $X=118900 $Y=228700
X1765 1 91 771 964 ICV_15 $T=135720 207400 1 0 $X=135140 $Y=201700
X1766 1 91 772 836 ICV_15 $T=135720 207400 0 0 $X=135140 $Y=207100
X1767 1 91 167 966 ICV_15 $T=156600 229000 0 0 $X=156020 $Y=228700
X1768 1 91 773 801 ICV_15 $T=193720 229000 1 0 $X=193140 $Y=223300
X1769 1 91 774 280 ICV_15 $T=230840 185800 0 0 $X=230260 $Y=185500
X1770 1 91 46 305 ICV_15 $T=287680 250600 1 0 $X=287100 $Y=244900
X1771 1 91 775 1003 ICV_15 $T=316680 196600 0 0 $X=316100 $Y=196300
X1772 1 91 776 551 ICV_15 $T=325960 229000 0 0 $X=325380 $Y=228700
X1773 1 91 777 1024 ICV_15 $T=388600 239800 0 0 $X=388020 $Y=239500
X1774 1 91 778 1031 ICV_15 $T=412960 250600 1 0 $X=412380 $Y=244900
X1775 1 91 779 930 ICV_15 $T=468640 196600 0 0 $X=468060 $Y=196300
X1776 1 91 780 902 ICV_15 $T=486040 185800 1 0 $X=485460 $Y=180100
X1777 1 91 781 936 ICV_15 $T=487200 218200 0 0 $X=486620 $Y=217900
X1778 1 91 782 589 ICV_15 $T=490680 207400 1 0 $X=490100 $Y=201700
X1779 229 1038 362 233 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=95120 185800 1 0 $X=94540 $Y=180100
X1780 865 1039 212 608 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=95120 196600 0 0 $X=94540 $Y=196300
X1781 744 1040 362 945 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=95120 207400 1 0 $X=94540 $Y=201700
X1782 743 1041 362 949 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=95120 207400 0 0 $X=94540 $Y=207100
X1783 230 1042 362 236 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=103240 250600 0 0 $X=102660 $Y=250300
X1784 232 1043 362 221 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=104400 250600 1 0 $X=103820 $Y=244900
X1785 655 1044 362 948 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=106720 229000 1 0 $X=106140 $Y=223300
X1786 651 1045 362 946 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=107880 239800 0 0 $X=107300 $Y=239500
X1787 652 1046 362 952 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=111360 218200 0 0 $X=110780 $Y=217900
X1788 909 1047 362 951 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=118320 196600 1 0 $X=117740 $Y=190900
X1789 856 1048 362 944 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=119480 185800 0 0 $X=118900 $Y=185500
X1790 242 1049 362 610 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=136880 185800 1 0 $X=136300 $Y=180100
X1791 849 1050 362 250 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=143840 207400 1 0 $X=143260 $Y=201700
X1792 698 1051 362 947 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=143840 207400 0 0 $X=143260 $Y=207100
X1793 697 1052 362 968 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=143840 218200 0 0 $X=143260 $Y=217900
X1794 616 1053 362 970 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=197200 185800 1 180 $X=174580 $Y=185500
X1795 844 1054 362 262 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=179800 175000 0 0 $X=179220 $Y=174700
X1796 939 1055 172 978 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=196040 239800 0 0 $X=195460 $Y=239500
X1797 426 1056 172 981 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=233160 250600 0 180 $X=210540 $Y=244900
X1798 704 1057 172 980 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=236640 218200 1 180 $X=214020 $Y=217900
X1799 273 1058 172 987 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=215760 196600 0 0 $X=215180 $Y=196300
X1800 283 1059 172 290 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=244760 250600 1 0 $X=244180 $Y=244900
X1801 285 1060 172 991 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=250560 239800 0 0 $X=249980 $Y=239500
X1802 287 1061 212 993 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=255200 218200 1 0 $X=254620 $Y=212500
X1803 629 1062 212 990 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=255200 218200 0 0 $X=254620 $Y=217900
X1804 805 1063 212 297 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=256360 229000 0 0 $X=255780 $Y=228700
X1805 756 1064 172 292 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=284200 250600 1 180 $X=261580 $Y=250300
X1806 294 1065 212 303 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=271440 185800 1 0 $X=270860 $Y=180100
X1807 707 1066 172 307 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=273760 239800 0 0 $X=273180 $Y=239500
X1808 662 1067 212 996 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=278400 218200 1 0 $X=277820 $Y=212500
X1809 918 1068 212 306 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=310880 250600 1 180 $X=288260 $Y=250300
X1810 791 1069 212 312 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=292320 175000 0 0 $X=291740 $Y=174700
X1811 308 1070 212 997 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=294640 185800 1 0 $X=294060 $Y=180100
X1812 45 1071 212 468 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=294640 196600 0 0 $X=294060 $Y=196300
X1813 310 1072 212 1003 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=307400 207400 1 0 $X=306820 $Y=201700
X1814 793 1073 212 1004 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=310880 207400 0 0 $X=310300 $Y=207100
X1815 917 1074 212 999 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=332920 250600 1 180 $X=310300 $Y=250300
X1816 672 1075 212 1005 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=312040 218200 1 0 $X=311460 $Y=212500
X1817 824 1076 212 1007 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=313200 218200 0 0 $X=312620 $Y=217900
X1818 670 1077 212 1011 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=335240 218200 0 0 $X=334660 $Y=217900
X1819 596 1078 213 1020 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=358440 207400 0 0 $X=357860 $Y=207100
X1820 714 1079 213 827 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=359600 207400 1 0 $X=359020 $Y=201700
X1821 883 1080 213 1023 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=364240 218200 0 0 $X=363660 $Y=217900
X1822 900 1081 213 1026 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=368880 218200 1 0 $X=368300 $Y=212500
X1823 895 1082 213 1027 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=372360 229000 1 0 $X=371780 $Y=223300
X1824 598 1083 213 1024 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=373520 250600 1 0 $X=372940 $Y=244900
X1825 716 1084 213 330 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=373520 250600 0 0 $X=372940 $Y=250300
X1826 760 1085 213 1029 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=382800 196600 1 0 $X=382220 $Y=190900
X1827 808 1086 213 1030 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=382800 196600 0 0 $X=382220 $Y=196300
X1828 329 1087 213 830 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=386280 185800 0 0 $X=385700 $Y=185500
X1829 718 1088 213 1031 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=397880 250600 0 0 $X=397300 $Y=250300
X1830 794 1089 213 353 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=447760 175000 0 0 $X=447180 $Y=174700
X1831 585 1090 213 1035 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=447760 218200 0 0 $X=447180 $Y=217900
X1832 726 1091 213 354 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=447760 239800 0 0 $X=447180 $Y=239500
X1833 683 1092 213 1037 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=448920 185800 0 0 $X=448340 $Y=185500
X1834 1033 1093 213 1036 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=448920 229000 0 0 $X=448340 $Y=228700
X1835 928 1094 213 357 234 91 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=448920 250600 0 0 $X=448340 $Y=250300
X1836 7 6 91 14 957 383 2232 1 1 UDB116SVT24_AOI22_0P75 $T=111360 185800 1 180 $X=104980 $Y=185500
X1837 8 6 91 14 958 385 2233 1 1 UDB116SVT24_AOI22_0P75 $T=118320 185800 1 180 $X=111940 $Y=185500
X1838 11 6 91 14 961 237 2235 1 1 UDB116SVT24_AOI22_0P75 $T=131080 185800 0 180 $X=124700 $Y=180100
X1839 13 6 91 14 960 200 2237 1 1 UDB116SVT24_AOI22_0P75 $T=135720 175000 1 180 $X=129340 $Y=174700
X1840 20 6 91 14 249 248 2242 1 1 UDB116SVT24_AOI22_0P75 $T=165880 175000 1 180 $X=159500 $Y=174700
X1841 21 6 91 14 969 387 2243 1 1 UDB116SVT24_AOI22_0P75 $T=172840 185800 0 180 $X=166460 $Y=180100
X1842 396 393 91 24 257 399 2244 1 1 UDB116SVT24_AOI22_0P75 $T=175160 239800 0 0 $X=174580 $Y=239500
X1843 400 26 91 605 977 975 2247 1 1 UDB116SVT24_AOI22_0P75 $T=201840 218200 1 180 $X=195460 $Y=217900
X1844 454 42 91 458 988 452 2252 1 1 UDB116SVT24_AOI22_0P75 $T=264480 239800 0 180 $X=258100 $Y=234100
X1845 454 460 91 458 992 440 2254 1 1 UDB116SVT24_AOI22_0P75 $T=274920 229000 0 180 $X=268540 $Y=223300
X1846 47 466 91 117 473 309 2286 1 1 UDB116SVT24_AOI22_0P75 $T=309720 218200 0 180 $X=303340 $Y=212500
X1847 484 483 91 67 494 485 2262 1 1 UDB116SVT24_AOI22_0P75 $T=350320 229000 1 0 $X=349740 $Y=223300
X1848 492 72 91 68 1018 491 2265 1 1 UDB116SVT24_AOI22_0P75 $T=371200 239800 0 0 $X=370620 $Y=239500
X1849 505 504 91 324 1019 1012 2266 1 1 UDB116SVT24_AOI22_0P75 $T=380480 185800 1 180 $X=374100 $Y=185500
X1850 516 89 91 519 1033 78 2272 1 1 UDB116SVT24_AOI22_0P75 $T=454720 207400 1 180 $X=448340 $Y=207100
X1851 34 414 422 410 1 91 783 1 UDB116SVT24_OA22_1 $T=230840 185800 1 180 $X=222140 $Y=185500
X1852 524 1 1 UDB116SVT24_TIEDIN_1 $T=476760 239800 1 0 $X=476180 $Y=234100
X1853 521 517 91 523 516 1 1 UDB116SVT24_AN3B_0P75 $T=468640 196600 1 180 $X=462260 $Y=196300
X1854 400 399 389 1 91 398 2147 1 2889 UDB116SVT24_AOI21B_0P75 $T=182120 229000 0 180 $X=175740 $Y=223300
X1855 1 91 382 231 2148 ICV_18 $T=104400 175000 0 0 $X=103820 $Y=174700
X1856 1 91 784 573 2149 ICV_18 $T=127600 207400 1 0 $X=127020 $Y=201700
X1857 1 91 785 772 2150 ICV_18 $T=142680 218200 1 0 $X=142100 $Y=212500
X1858 1 91 168 967 2152 ICV_18 $T=174000 207400 0 0 $X=173420 $Y=207100
X1859 1 91 169 972 2153 ICV_18 $T=186760 218200 1 0 $X=186180 $Y=212500
X1860 1 91 786 912 2154 ICV_18 $T=190240 218200 0 0 $X=189660 $Y=217900
X1861 1 91 170 974 2155 ICV_18 $T=194880 207400 0 0 $X=194300 $Y=207100
X1862 1 91 787 914 2156 ICV_18 $T=197200 185800 0 0 $X=196620 $Y=185500
X1863 1 91 788 262 2158 ICV_18 $T=205320 207400 1 0 $X=204740 $Y=201700
X1864 1 91 171 278 2159 ICV_18 $T=233160 239800 0 0 $X=232580 $Y=239500
X1865 1 91 789 988 2160 ICV_18 $T=252880 239800 1 0 $X=252300 $Y=234100
X1866 1 91 790 993 2161 ICV_18 $T=271440 196600 0 0 $X=270860 $Y=196300
X1867 1 91 172 212 2162 ICV_18 $T=283040 175000 0 0 $X=282460 $Y=174700
X1868 1 91 791 671 2163 ICV_18 $T=313200 185800 0 0 $X=312620 $Y=185500
X1869 1 91 792 1006 2165 ICV_18 $T=330600 229000 1 0 $X=330020 $Y=223300
X1870 1 91 54 1007 2166 ICV_18 $T=331760 250600 1 0 $X=331180 $Y=244900
X1871 1 91 793 667 2167 ICV_18 $T=344520 239800 1 0 $X=343940 $Y=234100
X1872 1 91 794 586 2168 ICV_18 $T=455880 185800 1 0 $X=455300 $Y=180100
X1873 1 91 795 839 2170 ICV_18 $T=457040 196600 0 0 $X=456460 $Y=196300
X1874 392 173 410 1 413 91 1 UDB116SVT24_AO21B_0P75 $T=198360 207400 1 0 $X=197780 $Y=201700
X1875 3 1 2 5 954 227 91 1 UDB116SVT24_OAI22_0P75 $T=88160 185800 0 180 $X=81780 $Y=180100
X1876 4 1 2 5 228 9 91 1 UDB116SVT24_OAI22_0P75 $T=90480 175000 0 0 $X=89900 $Y=174700
X1877 418 1 416 421 979 615 91 1 UDB116SVT24_OAI22_0P75 $T=213440 239800 0 180 $X=207060 $Y=234100
X1878 431 1 432 458 972 115 91 1 UDB116SVT24_OAI22_0P75 $T=243600 239800 1 0 $X=243020 $Y=234100
X1879 439 1 443 440 983 461 91 1 UDB116SVT24_OAI22_0P75 $T=250560 207400 0 0 $X=249980 $Y=207100
X1880 459 1 29 461 985 428 91 1 UDB116SVT24_OAI22_0P75 $T=267960 207400 1 180 $X=261580 $Y=207100
X1881 50 1 49 314 313 897 91 1 UDB116SVT24_OAI22_0P75 $T=316680 250600 0 180 $X=310300 $Y=244900
X1882 56 1 465 69 1008 80 91 1 UDB116SVT24_OAI22_0P75 $T=336400 207400 1 0 $X=335820 $Y=201700
X1883 512 1 86 513 343 88 91 1 UDB116SVT24_OAI22_0P75 $T=431520 185800 1 0 $X=430940 $Y=180100
X1884 91 411 407 400 409 1 1 UDB116SVT24_NR3_0P75 $T=204160 229000 1 180 $X=198940 $Y=228700
X1885 91 37 428 430 429 1 1 UDB116SVT24_NR3_0P75 $T=235480 229000 1 0 $X=234900 $Y=223300
X1886 91 426 441 434 29 1 1 UDB116SVT24_NR3_0P75 $T=250560 196600 0 0 $X=249980 $Y=196300
X1887 91 440 453 796 450 1 1 UDB116SVT24_NR3_0P75 $T=264480 207400 0 180 $X=259260 $Y=201700
X1888 91 480 478 174 476 1 1 UDB116SVT24_NR3_0P75 $T=354960 196600 1 180 $X=349740 $Y=196300
X1889 91 497 81 502 506 1 1 UDB116SVT24_NR3_0P75 $T=377000 196600 1 0 $X=376420 $Y=190900
X1890 1 91 797 910 ICV_19 $T=107880 239800 1 0 $X=107300 $Y=234100
X1891 1 91 798 785 ICV_19 $T=148480 196600 0 0 $X=147900 $Y=196300
X1892 1 91 175 247 ICV_19 $T=153120 175000 0 0 $X=152540 $Y=174700
X1893 1 91 799 574 ICV_19 $T=165880 218200 1 0 $X=165300 $Y=212500
X1894 1 91 23 938 ICV_19 $T=176320 196600 0 0 $X=175740 $Y=196300
X1895 1 91 800 940 ICV_19 $T=192560 229000 0 0 $X=191980 $Y=228700
X1896 1 91 801 980 ICV_19 $T=201840 218200 0 0 $X=201260 $Y=217900
X1897 1 91 802 547 ICV_19 $T=204160 229000 0 0 $X=203580 $Y=228700
X1898 1 91 803 284 ICV_19 $T=249400 185800 0 0 $X=248820 $Y=185500
X1899 1 91 176 789 ICV_19 $T=249400 229000 0 0 $X=248820 $Y=228700
X1900 1 91 804 990 ICV_19 $T=262160 229000 1 0 $X=261580 $Y=223300
X1901 1 91 455 304 ICV_19 $T=288840 185800 0 0 $X=288260 $Y=185500
X1902 1 91 805 311 ICV_19 $T=306240 239800 1 0 $X=305660 $Y=234100
X1903 1 91 806 1002 ICV_19 $T=317840 196600 1 0 $X=317260 $Y=190900
X1904 1 91 177 636 ICV_19 $T=366560 175000 0 0 $X=365980 $Y=174700
X1905 1 91 807 535 ICV_19 $T=371200 239800 1 0 $X=370620 $Y=234100
X1906 1 91 808 599 ICV_19 $T=432680 207400 0 0 $X=432100 $Y=207100
X1907 1 91 809 567 ICV_19 $T=481400 239800 0 0 $X=480820 $Y=239500
X1908 60 64 91 475 2258 477 1 1 UDB116SVT24_AOI21_0P75 $T=336400 185800 0 180 $X=331180 $Y=180100
X1909 493 78 91 1012 2263 498 1 1 UDB116SVT24_AOI21_0P75 $T=363080 185800 0 180 $X=357860 $Y=180100
X1910 1 410 413 395 30 91 1 UDB116SVT24_ND3_0P75 $T=213440 207400 1 180 $X=208220 $Y=207100
X1911 1 29 420 810 421 91 1 UDB116SVT24_ND3_0P75 $T=219240 229000 0 0 $X=218660 $Y=228700
X1912 1 428 440 459 461 91 1 UDB116SVT24_ND3_0P75 $T=269120 207400 0 0 $X=268540 $Y=207100
X1913 1 474 473 811 471 91 1 UDB116SVT24_ND3_0P75 $T=323640 185800 1 180 $X=318420 $Y=185500
X1914 1 480 478 465 476 91 1 UDB116SVT24_ND3_0P75 $T=337560 196600 0 180 $X=332340 $Y=190900
X1915 1 72 70 58 68 91 1 UDB116SVT24_ND3_0P75 $T=348000 239800 1 180 $X=342780 $Y=239500
X1916 1 496 79 53 78 91 1 UDB116SVT24_ND3_0P75 $T=366560 175000 1 180 $X=361340 $Y=174700
X1917 1 497 69 504 78 91 1 UDB116SVT24_ND3_0P75 $T=367720 185800 1 0 $X=367140 $Y=180100
X1918 424 2287 986 421 421 91 2181 33 1 1 UDB116SVT24_OA2BB2_0P75 $T=233160 218200 0 180 $X=224460 $Y=212500
X1919 507 2267 1025 1021 508 91 2182 507 1 1 UDB116SVT24_OA2BB2_0P75 $T=383960 185800 1 0 $X=383380 $Y=180100
X1920 512 87 91 513 514 344 515 1 1 2890 UDB116SVT24_AOI32_1 $T=430360 175000 0 0 $X=429780 $Y=174700
X1921 1 91 813 812 2183 ICV_22 $T=74240 229000 0 0 $X=73660 $Y=228700
X1922 1 91 178 814 2185 ICV_22 $T=75400 250600 0 0 $X=74820 $Y=250300
X1923 1 91 594 612 2188 ICV_22 $T=147320 250600 1 0 $X=146740 $Y=244900
X1924 1 91 618 815 2190 ICV_22 $T=165880 207400 0 0 $X=165300 $Y=207100
X1925 1 91 816 179 2192 ICV_22 $T=169360 239800 0 0 $X=168780 $Y=239500
X1926 1 91 773 817 2193 ICV_22 $T=187920 229000 0 0 $X=187340 $Y=228700
X1927 1 91 817 818 2194 ICV_22 $T=191400 239800 0 0 $X=190820 $Y=239500
X1928 1 91 788 819 2196 ICV_22 $T=205320 185800 1 0 $X=204740 $Y=180100
X1929 1 91 606 425 2197 ICV_22 $T=213440 207400 0 0 $X=212860 $Y=207100
X1930 1 91 819 820 2198 ICV_22 $T=218080 207400 1 0 $X=217500 $Y=201700
X1931 1 91 625 180 2200 ICV_22 $T=219240 175000 0 0 $X=218660 $Y=174700
X1932 1 91 774 821 2201 ICV_22 $T=261000 185800 1 0 $X=260420 $Y=180100
X1933 1 91 790 181 2202 ICV_22 $T=291160 207400 0 0 $X=290580 $Y=207100
X1934 1 91 708 632 2204 ICV_22 $T=306240 229000 1 0 $X=305660 $Y=223300
X1935 1 91 631 822 2205 ICV_22 $T=313200 196600 1 0 $X=312620 $Y=190900
X1936 1 91 183 182 2206 ICV_22 $T=314360 175000 0 0 $X=313780 $Y=174700
X1937 1 91 775 823 2207 ICV_22 $T=336400 196600 0 0 $X=335820 $Y=196300
X1938 1 91 825 824 2208 ICV_22 $T=345680 218200 1 0 $X=345100 $Y=212500
X1939 1 91 827 826 2209 ICV_22 $T=419920 185800 0 0 $X=419340 $Y=185500
X1940 1 91 722 184 2211 ICV_22 $T=425720 239800 0 0 $X=425140 $Y=239500
X1941 1 91 144 185 2213 ICV_22 $T=431520 250600 0 0 $X=430940 $Y=250300
X1942 1 91 719 828 2214 ICV_22 $T=433840 196600 1 0 $X=433260 $Y=190900
X1943 1 91 830 829 2215 ICV_22 $T=438480 185800 0 0 $X=437900 $Y=185500
X1944 384 383 603 186 2234 91 1 831 1 UDB116SVT24_AO22_1 $T=122960 239800 0 180 $X=114260 $Y=234100
X1945 384 15 603 162 2238 91 1 832 1 UDB116SVT24_AO22_1 $T=136880 239800 0 180 $X=128180 $Y=234100
X1946 384 385 603 111 2288 91 1 833 1 UDB116SVT24_AO22_1 $T=139200 218200 0 180 $X=130500 $Y=212500
X1947 384 16 603 187 2239 91 1 834 1 UDB116SVT24_AO22_1 $T=139200 229000 0 180 $X=130500 $Y=223300
X1948 384 12 603 188 2236 91 1 189 1 UDB116SVT24_AO22_1 $T=131080 250600 0 0 $X=130500 $Y=250300
X1949 384 386 603 167 2289 91 1 835 1 UDB116SVT24_AO22_1 $T=136880 229000 0 0 $X=136300 $Y=228700
X1950 384 387 603 190 2240 91 1 191 1 UDB116SVT24_AO22_1 $T=147320 250600 0 180 $X=138620 $Y=244900
X1951 384 18 603 98 2241 91 1 836 1 UDB116SVT24_AO22_1 $T=156600 218200 0 180 $X=147900 $Y=212500
X1952 423 35 525 410 2290 91 1 192 1 UDB116SVT24_AO22_1 $T=232000 207400 0 180 $X=223300 $Y=201700
X1953 469 470 638 837 2255 91 1 838 1 UDB116SVT24_AO22_1 $T=315520 229000 1 180 $X=306820 $Y=228700
X1954 518 517 519 529 2273 91 1 839 1 UDB116SVT24_AO22_1 $T=459360 207400 0 180 $X=450660 $Y=201700
X1955 90 520 523 93 2274 91 1 840 1 UDB116SVT24_AO22_1 $T=469800 185800 0 180 $X=461100 $Y=180100
X1956 1 91 377 841 842 843 380 843 542 862 ICV_23 $T=49880 185800 0 0 $X=49300 $Y=185500
X1957 1 91 844 845 193 846 215 611 905 845 ICV_23 $T=53360 175000 0 0 $X=52780 $Y=174700
X1958 1 91 847 848 383 849 732 947 858 737 ICV_23 $T=60320 218200 1 0 $X=59740 $Y=212500
X1959 1 91 850 851 852 853 220 948 591 873 ICV_23 $T=60320 229000 1 0 $X=59740 $Y=223300
X1960 1 91 854 855 856 857 568 951 857 911 ICV_23 $T=64960 196600 1 0 $X=64380 $Y=190900
X1961 1 91 858 859 860 861 949 868 848 875 ICV_23 $T=67280 218200 0 0 $X=66700 $Y=217900
X1962 1 91 862 863 864 865 703 904 545 689 ICV_23 $T=73080 185800 0 0 $X=72500 $Y=185500
X1963 1 91 866 867 868 613 952 851 654 860 ICV_23 $T=78880 229000 0 0 $X=78300 $Y=228700
X1964 1 91 869 190 188 870 646 869 871 150 ICV_23 $T=80040 250600 0 0 $X=79460 $Y=250300
X1965 1 91 408 871 186 194 691 590 692 937 ICV_23 $T=81200 250600 1 0 $X=80620 $Y=244900
X1966 1 91 872 873 874 385 740 696 799 736 ICV_23 $T=83520 218200 1 0 $X=82940 $Y=212500
X1967 1 91 875 876 877 878 866 867 834 876 ICV_23 $T=83520 229000 1 0 $X=82940 $Y=223300
X1968 1 91 879 16 187 195 833 863 878 571 ICV_23 $T=106720 218200 1 0 $X=106140 $Y=212500
X1969 1 91 880 881 882 883 496 549 1027 559 ICV_23 $T=378160 229000 0 0 $X=377580 $Y=228700
X1970 1 91 75 884 885 886 885 1020 886 884 ICV_23 $T=380480 207400 0 0 $X=379900 $Y=207100
X1971 1 91 67 887 888 889 888 1023 889 887 ICV_23 $T=386280 218200 0 0 $X=385700 $Y=217900
X1972 1 91 70 890 891 892 896 1026 890 996 ICV_23 $T=390920 218200 1 0 $X=390340 $Y=212500
X1973 1 91 68 893 894 895 894 882 893 807 ICV_23 $T=394400 229000 1 0 $X=393820 $Y=223300
X1974 1 91 825 896 897 898 881 891 51 640 ICV_23 $T=409480 218200 0 0 $X=408900 $Y=217900
X1975 1 91 899 196 900 197 560 892 899 828 ICV_23 $T=414120 218200 1 0 $X=413540 $Y=212500
X1976 1 91 521 901 902 903 903 929 779 780 ICV_23 $T=470960 185800 0 0 $X=470380 $Y=185500
X1977 606 26 30 91 415 413 1 1 UDB116SVT24_AOI31_0P75 $T=214600 218200 1 180 $X=208220 $Y=217900
X1978 977 419 29 91 421 426 1 1 UDB116SVT24_AOI31_0P75 $T=215760 218200 1 0 $X=215180 $Y=212500
X1979 60 528 29 91 471 174 1 1 UDB116SVT24_AOI31_0P75 $T=338720 185800 1 180 $X=332340 $Y=185500
X1980 317 75 478 91 319 477 1 1 UDB116SVT24_AOI31_0P75 $T=341040 175000 0 0 $X=340460 $Y=174700
X1981 502 607 73 91 323 498 1 1 UDB116SVT24_AOI31_0P75 $T=364240 196600 0 0 $X=363660 $Y=196300
X1982 1 91 906 904 905 225 541 864 ICV_25 $T=64960 185800 1 0 $X=64380 $Y=180100
X1983 1 91 909 907 908 569 847 690 ICV_25 $T=77720 196600 0 0 $X=77140 $Y=196300
X1984 1 91 198 386 910 797 168 831 ICV_25 $T=102080 229000 0 0 $X=101500 $Y=228700
X1985 1 91 200 911 199 854 570 239 ICV_25 $T=124120 196600 0 0 $X=123540 $Y=196300
X1986 1 91 912 124 201 619 255 256 ICV_25 $T=171680 250600 0 0 $X=171100 $Y=250300
X1987 1 91 624 913 914 264 973 913 ICV_25 $T=186760 196600 0 0 $X=186180 $Y=196300
X1988 1 91 203 20 202 272 820 270 ICV_25 $T=201840 175000 0 0 $X=201260 $Y=174700
X1989 1 91 916 497 915 1019 915 581 ICV_25 $T=381640 207400 1 0 $X=381060 $Y=201700
X1990 1 91 204 72 917 554 676 332 ICV_25 $T=395560 250600 1 0 $X=394980 $Y=244900
X1991 1 91 919 918 205 922 313 337 ICV_25 $T=408320 239800 0 0 $X=407740 $Y=239500
X1992 1 91 503 920 921 1018 921 641 ICV_25 $T=417600 229000 1 0 $X=417020 $Y=223300
X1993 1 91 206 922 923 678 341 680 ICV_25 $T=421080 250600 1 0 $X=420500 $Y=244900
X1994 1 91 926 924 925 348 927 926 ICV_25 $T=430360 239800 0 0 $X=429780 $Y=239500
X1995 1 91 928 927 207 355 925 351 ICV_25 $T=453560 250600 1 0 $X=452980 $Y=244900
X1996 1 91 931 929 930 829 1037 901 ICV_25 $T=466320 196600 1 0 $X=465740 $Y=190900
X1997 1 91 933 517 932 687 933 685 ICV_25 $T=469800 218200 0 0 $X=469220 $Y=217900
X1998 1 91 936 934 935 934 729 767 ICV_25 $T=472120 229000 1 0 $X=471540 $Y=223300
X1999 1 91 816 694 870 950 234 362 ICV_26 $T=139200 250600 0 0 $X=138620 $Y=250300
X2000 1 91 937 656 745 966 234 362 ICV_26 $T=141520 239800 0 0 $X=140940 $Y=239500
X2001 1 91 938 970 841 967 234 362 ICV_26 $T=142680 185800 0 0 $X=142100 $Y=185500
X2002 1 91 208 748 653 813 234 362 ICV_26 $T=142680 239800 1 0 $X=142100 $Y=234100
X2003 1 91 939 800 246 254 234 363 ICV_26 $T=151960 250600 1 0 $X=151380 $Y=244900
X2004 1 91 620 261 874 259 234 362 ICV_26 $T=167040 207400 1 0 $X=166460 $Y=201700
X2005 1 91 392 787 252 973 234 362 ICV_26 $T=169360 196600 1 0 $X=168780 $Y=190900
X2006 1 91 394 976 657 976 234 362 ICV_26 $T=177480 185800 1 0 $X=176900 $Y=180100
X2007 1 91 940 979 258 263 234 362 ICV_26 $T=179800 250600 1 0 $X=179220 $Y=244900
X2008 1 91 209 276 786 274 234 172 ICV_26 $T=209960 250600 0 0 $X=209380 $Y=250300
X2009 1 91 409 628 802 277 234 172 ICV_26 $T=214600 239800 1 0 $X=214020 $Y=234100
X2010 1 91 422 821 659 279 234 172 ICV_26 $T=215760 185800 1 0 $X=215180 $Y=180100
X2011 1 91 210 994 575 994 234 172 ICV_26 $T=267960 239800 1 0 $X=267380 $Y=234100
X2012 1 91 462 709 706 995 234 212 ICV_26 $T=272600 196600 1 0 $X=272020 $Y=190900
X2013 1 91 630 710 298 463 234 212 ICV_26 $T=278400 229000 1 0 $X=277820 $Y=223300
X2014 1 91 44 556 635 524 234 212 ICV_26 $T=278400 229000 0 0 $X=277820 $Y=228700
X2015 1 91 941 587 684 356 234 213 ICV_26 $T=448920 239800 1 0 $X=448340 $Y=234100
X2016 45 91 942 468 1 1 UDB116SVT24_NR2B_0P75 $T=305080 185800 0 0 $X=304500 $Y=185500
X2017 79 91 84 69 1 1 UDB116SVT24_NR2B_0P75 $T=373520 175000 0 0 $X=372940 $Y=174700
X2018 22 1 398 395 91 393 963 1 UDB116SVT24_OAI211_0P75 $T=177480 218200 1 180 $X=169940 $Y=217900
X2019 407 1 27 421 91 29 418 1 UDB116SVT24_OAI211_0P75 $T=197200 239800 1 0 $X=196620 $Y=234100
X2020 69 1 487 55 91 480 498 1 UDB116SVT24_OAI211_0P75 $T=344520 185800 1 0 $X=343940 $Y=180100
X2021 76 1 77 1009 91 490 1014 1 UDB116SVT24_OAI211_0P75 $T=356120 250600 1 0 $X=355540 $Y=244900
X2022 74 1 71 533 91 490 1016 1 UDB116SVT24_OAI211_0P75 $T=371200 250600 0 180 $X=363660 $Y=244900
X2023 295 212 234 91 1 943 1 UDB116SVT24_FDPSBQ_1 $T=273760 207400 1 0 $X=273180 $Y=201700
X2024 673 212 234 91 1 211 1 UDB116SVT24_FDPSBQ_1 $T=334080 207400 0 0 $X=333500 $Y=207100
X2025 212 2226 213 1 91 1 UDB116SVT24_BUF_1P5 $T=276080 175000 0 0 $X=275500 $Y=174700
.ENDS
***************************************
.SUBCKT ICV_28 1 2 3 4 5 6
*.CALIBRE ICV_CELL 9
** N=11 EP=6 IP=14 FDC=10
X0 1 2 3 5 ICV_12 $T=0 0 0 0 $X=-580 $Y=-300
X1 1 2 4 6 ICV_12 $T=0 10800 1 0 $X=-580 $Y=5100
.ENDS
***************************************
.SUBCKT ICV_29 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
+ 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
+ 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80
+ 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100
+ 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120
+ 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140
+ 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160
+ 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180
+ 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200
+ 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220
+ 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240
+ 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260
+ 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280
+ 282 283 284 285 286 287 288 289 290 291 292 293 298
*.CALIBRE ICV_CELL 2
** N=2642 EP=293 IP=7917 FDC=10459
M0 62 30 370 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=252740 $Y=132300 $D=533
M1 62 370 371 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=255060 $Y=132300 $D=533
M2 2094 372 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=256220 $Y=132300 $D=533
M3 374 371 2094 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=257380 $Y=132300 $D=533
M4 375 370 374 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=258540 $Y=132300 $D=533
M5 375 371 375 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=259700 $Y=132300 $D=533
M6 62 378 375 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=260860 $Y=132300 $D=533
M7 378 374 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=262020 $Y=132300 $D=533
M8 379 370 378 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=263180 $Y=132300 $D=533
M9 381 371 379 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=264340 $Y=132300 $D=533
M10 381 370 381 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=265500 $Y=132300 $D=533
M11 62 384 381 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=266660 $Y=132300 $D=533
M12 62 379 384 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=268980 $Y=132300 $D=533
M13 385 384 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=270140 $Y=132300 $D=533
M14 2095 31 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=271300 $Y=173000 $D=533
M15 62 30 386 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=272460 $Y=162200 $D=533
M16 388 29 2095 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=272460 $Y=173000 $D=533
M17 388 395 388 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=273620 $Y=173000 $D=533
M18 62 386 391 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=274780 $Y=162200 $D=533
M19 390 392 388 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=274780 $Y=173000 $D=533
M20 2096 394 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=275940 $Y=162200 $D=533
M21 2097 395 390 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=275940 $Y=173000 $D=533
M22 397 386 2096 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=277100 $Y=162200 $D=533
M23 62 399 2097 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=277100 $Y=173000 $D=533
M24 398 391 397 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=278260 $Y=162200 $D=533
M25 399 390 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=278260 $Y=173000 $D=533
M26 398 386 398 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=279420 $Y=162200 $D=533
M27 62 400 398 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=280580 $Y=162200 $D=533
M28 400 397 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=281740 $Y=162200 $D=533
M29 62 392 395 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=281740 $Y=173000 $D=533
M30 401 391 400 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=282900 $Y=162200 $D=533
M31 392 30 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=282900 $Y=173000 $D=533
M32 402 386 401 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=284060 $Y=162200 $D=533
M33 402 391 402 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=285220 $Y=162200 $D=533
M34 2098 399 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=285220 $Y=173000 $D=533
M35 62 407 402 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=286380 $Y=162200 $D=533
M36 404 30 2098 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=286380 $Y=173000 $D=533
M37 405 392 404 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=287540 $Y=173000 $D=533
M38 62 401 407 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=288700 $Y=162200 $D=533
M39 405 30 405 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=288700 $Y=173000 $D=533
M40 411 407 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=289860 $Y=162200 $D=533
M41 62 408 405 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=289860 $Y=173000 $D=533
M42 62 407 411 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=291020 $Y=162200 $D=533
M43 408 404 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=291020 $Y=173000 $D=533
M44 411 407 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=292180 $Y=162200 $D=533
M45 412 404 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=293340 $Y=173000 $D=533
M46 2099 420 36 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=307260 $Y=140600 $D=533
M47 2100 414 2099 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=308420 $Y=140600 $D=533
M48 2101 424 2100 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=309580 $Y=140600 $D=533
M49 62 422 2101 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=310740 $Y=140600 $D=533
M50 420 413 62 62 nfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=311900 $Y=140600 $D=533
M51 436 433 431 62 nfet L=2.8e-08 W=1.1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=332780 $Y=153900 $D=533
M52 62 434 436 62 nfet L=2.8e-08 W=1.1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=333940 $Y=153900 $D=533
M53 440 437 436 62 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=336260 $Y=153900 $D=533
M54 62 439 440 62 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=337420 $Y=153900 $D=533
M55 440 432 62 62 nfet L=2.8e-08 W=1e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=338580 $Y=153900 $D=533
M56 1 30 370 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=252740 $Y=135000 $D=641
M57 1 370 371 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=255060 $Y=135000 $D=641
M58 373 372 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=256220 $Y=135000 $D=641
M59 373 371 373 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=257380 $Y=135000 $D=641
M60 374 370 373 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=258540 $Y=135000 $D=641
M61 2113 371 374 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=259700 $Y=135000 $D=641
M62 1 378 2113 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=260860 $Y=135000 $D=641
M63 378 374 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=262020 $Y=135000 $D=641
M64 378 370 378 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=263180 $Y=135000 $D=641
M65 379 371 378 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=264340 $Y=135000 $D=641
M66 2114 370 379 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=265500 $Y=135000 $D=641
M67 1 384 2114 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=266660 $Y=135000 $D=641
M68 1 379 384 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=268980 $Y=135000 $D=641
M69 385 384 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=270140 $Y=135000 $D=641
M70 1 31 387 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=271300 $Y=170100 $D=641
M71 1 30 386 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=272460 $Y=159300 $D=641
M72 387 29 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=272460 $Y=170100 $D=641
M73 390 395 387 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=273620 $Y=170100 $D=641
M74 1 386 391 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=274780 $Y=159300 $D=641
M75 393 392 390 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=274780 $Y=170100 $D=641
M76 396 394 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=275940 $Y=159300 $D=641
M77 393 395 393 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=275940 $Y=170100 $D=641
M78 396 386 396 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=277100 $Y=159300 $D=641
M79 1 399 393 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=277100 $Y=170100 $D=641
M80 397 391 396 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=278260 $Y=159300 $D=641
M81 399 390 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=278260 $Y=170100 $D=641
M82 2116 386 397 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=279420 $Y=159300 $D=641
M83 1 400 2116 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=280580 $Y=159300 $D=641
M84 400 397 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=281740 $Y=159300 $D=641
M85 1 392 395 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=281740 $Y=170100 $D=641
M86 400 391 400 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=282900 $Y=159300 $D=641
M87 392 30 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=282900 $Y=170100 $D=641
M88 401 386 400 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=284060 $Y=159300 $D=641
M89 2117 391 401 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=285220 $Y=159300 $D=641
M90 403 399 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=285220 $Y=170100 $D=641
M91 1 407 2117 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=286380 $Y=159300 $D=641
M92 403 30 403 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=286380 $Y=170100 $D=641
M93 404 392 403 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=287540 $Y=170100 $D=641
M94 1 401 407 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=288700 $Y=159300 $D=641
M95 2118 30 404 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=288700 $Y=170100 $D=641
M96 411 407 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=289860 $Y=159300 $D=641
M97 1 408 2118 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=289860 $Y=170100 $D=641
M98 1 407 411 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=291020 $Y=159300 $D=641
M99 408 404 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=291020 $Y=170100 $D=641
M100 411 407 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=292180 $Y=159300 $D=641
M101 412 404 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=293340 $Y=170100 $D=641
M102 36 420 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=307260 $Y=137700 $D=641
M103 1 414 36 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=308420 $Y=137700 $D=641
M104 36 424 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=309580 $Y=137700 $D=641
M105 1 422 36 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=310740 $Y=137700 $D=641
M106 420 413 1 62 pfet L=2.8e-08 W=1.7e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=311900 $Y=137700 $D=641
M107 431 433 1 62 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=332780 $Y=156700 $D=641
M108 438 434 431 62 pfet L=2.8e-08 W=1.6e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=333940 $Y=156700 $D=641
M109 438 437 1 62 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=336260 $Y=156800 $D=641
M110 2125 439 438 62 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=337420 $Y=156800 $D=641
M111 1 432 2125 62 pfet L=2.8e-08 W=1.5e-07 p_la=-4e-09 ulp=1 analog=0 acv_opt=-1 nf=1 $X=338580 $Y=156800 $D=641
M112 1 1 1 62 pfet_cnrx $X=49740 $Y=102600 $D=645
M113 1 1 1 62 pfet_cnrx $X=49740 $Y=156600 $D=645
M114 1 1 517 62 pfet_cnrx $X=56700 $Y=167400 $D=645
M115 1 1 743 62 pfet_cnrx $X=57860 $Y=135000 $D=645
M116 1 1 744 62 pfet_cnrx $X=57860 $Y=145800 $D=645
M117 1 1 1 62 pfet_cnrx $X=60180 $Y=94500 $D=645
M118 1819 1 1 62 pfet_cnrx $X=60180 $Y=148500 $D=645
M119 1 1 519 62 pfet_cnrx $X=61340 $Y=124200 $D=645
M120 1 1 611 62 pfet_cnrx $X=63660 $Y=145800 $D=645
M121 1 1 345 62 pfet_cnrx $X=63660 $Y=148500 $D=645
M122 1822 1 1 62 pfet_cnrx $X=65980 $Y=170100 $D=645
M123 1 1 1 62 pfet_cnrx $X=67140 $Y=94500 $D=645
M124 1 1 10 62 pfet_cnrx $X=67140 $Y=105300 $D=645
M125 1 1 4 62 pfet_cnrx $X=67140 $Y=116100 $D=645
M126 1 1 612 62 pfet_cnrx $X=67140 $Y=124200 $D=645
M127 1 1 520 62 pfet_cnrx $X=67140 $Y=126900 $D=645
M128 1 1 551 62 pfet_cnrx $X=67140 $Y=135000 $D=645
M129 1 1 521 62 pfet_cnrx $X=67140 $Y=137700 $D=645
M130 1 1 797 62 pfet_cnrx $X=67140 $Y=156600 $D=645
M131 1 1 522 62 pfet_cnrx $X=67140 $Y=159300 $D=645
M132 1 1 120 62 pfet_cnrx $X=68300 $Y=167400 $D=645
M133 1 1 578 62 pfet_cnrx $X=69460 $Y=113400 $D=645
M134 1 1 2 62 pfet_cnrx $X=69460 $Y=145800 $D=645
M135 1 1 827 62 pfet_cnrx $X=69460 $Y=148500 $D=645
M136 1 1 337 62 pfet_cnrx $X=69460 $Y=170100 $D=645
M137 1 1 138 62 pfet_cnrx $X=71780 $Y=102600 $D=645
M138 1 1 613 62 pfet_cnrx $X=72940 $Y=94500 $D=645
M139 1 1 614 62 pfet_cnrx $X=72940 $Y=105300 $D=645
M140 1 1 828 62 pfet_cnrx $X=72940 $Y=124200 $D=645
M141 1 1 829 62 pfet_cnrx $X=72940 $Y=126900 $D=645
M142 1 1 830 62 pfet_cnrx $X=72940 $Y=135000 $D=645
M143 1 1 167 62 pfet_cnrx $X=72940 $Y=137700 $D=645
M144 1 1 586 62 pfet_cnrx $X=72940 $Y=156600 $D=645
M145 1 1 831 62 pfet_cnrx $X=72940 $Y=159300 $D=645
M146 1824 1 1 62 pfet_cnrx $X=74100 $Y=124200 $D=645
M147 1 1 832 62 pfet_cnrx $X=75260 $Y=145800 $D=645
M148 1 1 833 62 pfet_cnrx $X=75260 $Y=148500 $D=645
M149 1 1 615 62 pfet_cnrx $X=77580 $Y=102600 $D=645
M150 1 1 581 62 pfet_cnrx $X=77580 $Y=124200 $D=645
M151 1 1 121 62 pfet_cnrx $X=78740 $Y=116100 $D=645
M152 1 1 834 62 pfet_cnrx $X=78740 $Y=135000 $D=645
M153 1 1 835 62 pfet_cnrx $X=78740 $Y=137700 $D=645
M154 1 1 836 62 pfet_cnrx $X=78740 $Y=156600 $D=645
M155 1 1 837 62 pfet_cnrx $X=78740 $Y=159300 $D=645
M156 1 1 123 62 pfet_cnrx $X=79900 $Y=167400 $D=645
M157 1 1 838 62 pfet_cnrx $X=81060 $Y=145800 $D=645
M158 1 1 839 62 pfet_cnrx $X=81060 $Y=148500 $D=645
M159 1 1 659 62 pfet_cnrx $X=81060 $Y=170100 $D=645
M160 1 1 66 62 pfet_cnrx $X=83380 $Y=105300 $D=645
M161 1 1 661 62 pfet_cnrx $X=84540 $Y=126900 $D=645
M162 1 1 840 62 pfet_cnrx $X=84540 $Y=135000 $D=645
M163 1 1 168 62 pfet_cnrx $X=84540 $Y=137700 $D=645
M164 1 1 841 62 pfet_cnrx $X=84540 $Y=156600 $D=645
M165 1 1 842 62 pfet_cnrx $X=84540 $Y=159300 $D=645
M166 1 1 843 62 pfet_cnrx $X=86860 $Y=145800 $D=645
M167 1 1 844 62 pfet_cnrx $X=86860 $Y=148500 $D=645
M168 1 1 483 62 pfet_cnrx $X=88020 $Y=102600 $D=645
M169 1 1 139 62 pfet_cnrx $X=89180 $Y=113400 $D=645
M170 1 1 845 62 pfet_cnrx $X=90340 $Y=135000 $D=645
M171 1 1 846 62 pfet_cnrx $X=90340 $Y=137700 $D=645
M172 1 1 847 62 pfet_cnrx $X=90340 $Y=156600 $D=645
M173 1 1 848 62 pfet_cnrx $X=90340 $Y=159300 $D=645
M174 1 1 849 62 pfet_cnrx $X=92660 $Y=145800 $D=645
M175 1 1 745 62 pfet_cnrx $X=94980 $Y=94500 $D=645
M176 1 1 664 62 pfet_cnrx $X=94980 $Y=105300 $D=645
M177 1 1 1 62 pfet_cnrx $X=98460 $Y=159300 $D=645
M178 1 1 140 62 pfet_cnrx $X=103100 $Y=113400 $D=645
M179 1 1 344 62 pfet_cnrx $X=103100 $Y=116100 $D=645
M180 1 1 1 62 pfet_cnrx $X=104260 $Y=159300 $D=645
M181 1 1 669 62 pfet_cnrx $X=106580 $Y=105300 $D=645
M182 1 1 584 62 pfet_cnrx $X=112380 $Y=159300 $D=645
M183 1 1 974 62 pfet_cnrx $X=113540 $Y=167400 $D=645
M184 585 1 1 62 pfet_cnrx $X=114700 $Y=167400 $D=645
M185 1 1 975 62 pfet_cnrx $X=117020 $Y=124200 $D=645
M186 1828 1 1 62 pfet_cnrx $X=118180 $Y=124200 $D=645
M187 1 1 977 62 pfet_cnrx $X=118180 $Y=137700 $D=645
M188 84 1 1 62 pfet_cnrx $X=119340 $Y=137700 $D=645
M189 1 1 1 62 pfet_cnrx $X=120500 $Y=170100 $D=645
M190 1 1 341 62 pfet_cnrx $X=121660 $Y=124200 $D=645
M191 1 1 1830 62 pfet_cnrx $X=122820 $Y=137700 $D=645
M192 1 1 484 62 pfet_cnrx $X=128620 $Y=159300 $D=645
M193 1 1 746 62 pfet_cnrx $X=129780 $Y=102600 $D=645
M194 1 1 76 62 pfet_cnrx $X=129780 $Y=167400 $D=645
M195 1 1 485 62 pfet_cnrx $X=134420 $Y=126900 $D=645
M196 1 1 1 62 pfet_cnrx $X=137900 $Y=135300 $D=645
M197 1 1 1 62 pfet_cnrx $X=137900 $Y=159300 $D=645
M198 1 1 674 62 pfet_cnrx $X=141380 $Y=102600 $D=645
M199 1 1 73 62 pfet_cnrx $X=142540 $Y=113400 $D=645
M200 1 1 1 62 pfet_cnrx $X=143700 $Y=135300 $D=645
M201 1 1 985 62 pfet_cnrx $X=146020 $Y=105300 $D=645
M202 1 1 987 62 pfet_cnrx $X=146020 $Y=148500 $D=645
M203 1 1 988 62 pfet_cnrx $X=147180 $Y=94500 $D=645
M204 1 1 589 62 pfet_cnrx $X=147180 $Y=124200 $D=645
M205 1 1 1 62 pfet_cnrx $X=148340 $Y=116100 $D=645
M206 1 1 747 62 pfet_cnrx $X=148340 $Y=156600 $D=645
M207 587 1 1 62 pfet_cnrx $X=149500 $Y=113400 $D=645
M208 1 1 525 62 pfet_cnrx $X=150660 $Y=135000 $D=645
M209 1 1 588 62 pfet_cnrx $X=157620 $Y=116100 $D=645
M210 1 1 1 62 pfet_cnrx $X=157620 $Y=124500 $D=645
M211 1 1 1 62 pfet_cnrx $X=158780 $Y=135300 $D=645
M212 86 1 1 62 pfet_cnrx $X=158780 $Y=170100 $D=645
M213 1591 1 1 62 pfet_cnrx $X=161100 $Y=116100 $D=645
M214 1 1 74 62 pfet_cnrx $X=164580 $Y=105300 $D=645
M215 1 1 490 62 pfet_cnrx $X=166900 $Y=124200 $D=645
M216 1 1 1 62 pfet_cnrx $X=166900 $Y=135300 $D=645
M217 1 1 1 62 pfet_cnrx $X=166900 $Y=170100 $D=645
M218 1 1 553 62 pfet_cnrx $X=168060 $Y=167400 $D=645
M219 1 1 1 62 pfet_cnrx $X=169220 $Y=126900 $D=645
M220 1 1 87 62 pfet_cnrx $X=170380 $Y=156600 $D=645
M221 1 1 1 62 pfet_cnrx $X=171540 $Y=116100 $D=645
M222 1 1 993 62 pfet_cnrx $X=171540 $Y=145800 $D=645
M223 1 1 994 62 pfet_cnrx $X=175020 $Y=94500 $D=645
M224 1 1 995 62 pfet_cnrx $X=175020 $Y=102600 $D=645
M225 88 1 1 62 pfet_cnrx $X=176180 $Y=102600 $D=645
M226 1 1 679 62 pfet_cnrx $X=181980 $Y=156600 $D=645
M227 1 1 1 62 pfet_cnrx $X=183140 $Y=146100 $D=645
M228 1842 1 1 62 pfet_cnrx $X=183140 $Y=156600 $D=645
M229 1 1 1 62 pfet_cnrx $X=183140 $Y=170100 $D=645
M230 1 1 681 62 pfet_cnrx $X=184300 $Y=113400 $D=645
M231 1 1 1 62 pfet_cnrx $X=185460 $Y=170100 $D=645
M232 1 1 682 62 pfet_cnrx $X=186620 $Y=94500 $D=645
M233 1 1 360 62 pfet_cnrx $X=186620 $Y=156600 $D=645
M234 1 1 1 62 pfet_cnrx $X=187780 $Y=126900 $D=645
M235 1 1 357 62 pfet_cnrx $X=192420 $Y=102600 $D=645
M236 1 1 997 62 pfet_cnrx $X=193580 $Y=148500 $D=645
M237 1 1 1 62 pfet_cnrx $X=193580 $Y=170100 $D=645
M238 1 1 998 62 pfet_cnrx $X=194740 $Y=124200 $D=645
M239 594 1 1 62 pfet_cnrx $X=195900 $Y=124200 $D=645
M240 1 1 1000 62 pfet_cnrx $X=195900 $Y=167400 $D=645
M241 1 1 686 62 pfet_cnrx $X=198220 $Y=156600 $D=645
M242 764 1 1 62 pfet_cnrx $X=199380 $Y=137700 $D=645
M243 1 1 354 62 pfet_cnrx $X=201700 $Y=167400 $D=645
M244 1 1 129 62 pfet_cnrx $X=204020 $Y=102600 $D=645
M245 90 1 1 62 pfet_cnrx $X=204020 $Y=124200 $D=645
M246 1 1 1 62 pfet_cnrx $X=204020 $Y=126900 $D=645
M247 596 1 1 62 pfet_cnrx $X=205180 $Y=102600 $D=645
M248 356 1 1 62 pfet_cnrx $X=207500 $Y=137700 $D=645
M249 1 1 1847 62 pfet_cnrx $X=208660 $Y=102600 $D=645
M250 2046 1 1 62 pfet_cnrx $X=208660 $Y=105300 $D=645
M251 1 1 529 62 pfet_cnrx $X=208660 $Y=170100 $D=645
M252 3 1 1 62 pfet_cnrx $X=209820 $Y=137700 $D=645
M253 1 1 1002 62 pfet_cnrx $X=212140 $Y=145800 $D=645
M254 597 1 1 62 pfet_cnrx $X=213300 $Y=145800 $D=645
M255 1 1 491 62 pfet_cnrx $X=213300 $Y=156600 $D=645
M256 1605 1 1 62 pfet_cnrx $X=215620 $Y=135200 $D=645
M257 1 1 92 62 pfet_cnrx $X=215620 $Y=137700 $D=645
M258 1 1 1005 62 pfet_cnrx $X=217940 $Y=159300 $D=645
M259 1 1 1006 62 pfet_cnrx $X=220260 $Y=94500 $D=645
M260 1 1 689 62 pfet_cnrx $X=220260 $Y=102600 $D=645
M261 1 1 492 62 pfet_cnrx $X=220260 $Y=135000 $D=645
M262 1 1 478 62 pfet_cnrx $X=220260 $Y=148500 $D=645
M263 1 1 766 62 pfet_cnrx $X=222580 $Y=105300 $D=645
M264 1012 1 1 62 pfet_cnrx $X=222580 $Y=137700 $D=645
M265 1 1 767 62 pfet_cnrx $X=224900 $Y=145800 $D=645
M266 365 1 1 62 pfet_cnrx $X=227220 $Y=156600 $D=645
M267 1610 1 1 62 pfet_cnrx $X=227220 $Y=167600 $D=645
M268 1 1 1 62 pfet_cnrx $X=228380 $Y=126900 $D=645
M269 1 1 1852 62 pfet_cnrx $X=230700 $Y=156600 $D=645
M270 1 1 131 62 pfet_cnrx $X=231860 $Y=94500 $D=645
M271 363 1 1 62 pfet_cnrx $X=231860 $Y=156600 $D=645
M272 1 1 494 62 pfet_cnrx $X=231860 $Y=167400 $D=645
M273 1 1 1 62 pfet_cnrx $X=233020 $Y=159300 $D=645
M274 1 1 133 62 pfet_cnrx $X=234180 $Y=105300 $D=645
M275 1 1 1008 62 pfet_cnrx $X=235340 $Y=116100 $D=645
M276 1 1 1011 62 pfet_cnrx $X=237660 $Y=113400 $D=645
M277 1 1 362 62 pfet_cnrx $X=238820 $Y=126900 $D=645
M278 95 1 1 62 pfet_cnrx $X=242300 $Y=159300 $D=645
M279 1 1 697 62 pfet_cnrx $X=243460 $Y=94500 $D=645
M280 1616 1 1 62 pfet_cnrx $X=244620 $Y=137700 $D=645
M281 1 1 1013 62 pfet_cnrx $X=245780 $Y=148500 $D=645
M282 1 1 1854 62 pfet_cnrx $X=245780 $Y=159300 $D=645
M283 1 1 69 62 pfet_cnrx $X=249260 $Y=137700 $D=645
M284 1 1 1 62 pfet_cnrx $X=249260 $Y=145800 $D=645
M285 1 1 1 62 pfet_cnrx $X=249260 $Y=156600 $D=645
M286 1856 1 1 62 pfet_cnrx $X=249260 $Y=167400 $D=645
M287 1 1 593 62 pfet_cnrx $X=250420 $Y=126900 $D=645
M288 1 1 158 62 pfet_cnrx $X=251580 $Y=105300 $D=645
M289 1 1 97 62 pfet_cnrx $X=252740 $Y=167400 $D=645
M290 1 1 495 62 pfet_cnrx $X=253900 $Y=102600 $D=645
M291 1 1 70 62 pfet_cnrx $X=253900 $Y=113400 $D=645
M292 1 1 496 62 pfet_cnrx $X=253900 $Y=124200 $D=645
M293 371 1 1 62 pfet_cnrx $X=253900 $Y=135000 $D=645
M294 1015 1 1 62 pfet_cnrx $X=253900 $Y=167400 $D=645
M295 1 1 628 62 pfet_cnrx $X=255060 $Y=145800 $D=645
M296 1 1 556 62 pfet_cnrx $X=255060 $Y=148500 $D=645
M297 1 1 1 62 pfet_cnrx $X=256220 $Y=159300 $D=645
M298 1 1 77 62 pfet_cnrx $X=258540 $Y=137700 $D=645
M299 1 1 114 62 pfet_cnrx $X=259700 $Y=113400 $D=645
M300 1 1 531 62 pfet_cnrx $X=259700 $Y=116100 $D=645
M301 1 1 629 62 pfet_cnrx $X=259700 $Y=124200 $D=645
M302 1 1 557 62 pfet_cnrx $X=259700 $Y=126900 $D=645
M303 1 1 855 62 pfet_cnrx $X=260860 $Y=145800 $D=645
M304 1 1 700 62 pfet_cnrx $X=260860 $Y=156600 $D=645
M305 1 1 497 62 pfet_cnrx $X=262020 $Y=105300 $D=645
M306 1 1 857 62 pfet_cnrx $X=265500 $Y=116100 $D=645
M307 1 1 858 62 pfet_cnrx $X=265500 $Y=124200 $D=645
M308 1 1 532 62 pfet_cnrx $X=267820 $Y=94500 $D=645
M309 384 1 1 62 pfet_cnrx $X=267820 $Y=135000 $D=645
M310 1 1 98 62 pfet_cnrx $X=270140 $Y=159300 $D=645
M311 1 1 385 62 pfet_cnrx $X=271300 $Y=135000 $D=645
M312 386 1 1 62 pfet_cnrx $X=271300 $Y=159300 $D=645
M313 1 1 533 62 pfet_cnrx $X=272460 $Y=102600 $D=645
M314 2115 1 1 62 pfet_cnrx $X=272460 $Y=156600 $D=645
M315 1 1 142 62 pfet_cnrx $X=273620 $Y=113400 $D=645
M316 391 1 1 62 pfet_cnrx $X=273620 $Y=159300 $D=645
M317 1 1 749 62 pfet_cnrx $X=274780 $Y=145800 $D=645
M318 1629 1 1 62 pfet_cnrx $X=275940 $Y=167600 $D=645
M319 1 1 705 62 pfet_cnrx $X=277100 $Y=124200 $D=645
M320 1 1 931 62 pfet_cnrx $X=277100 $Y=156600 $D=645
M321 1858 1 1 62 pfet_cnrx $X=278260 $Y=124200 $D=645
M322 600 1 1 62 pfet_cnrx $X=278260 $Y=156600 $D=645
M323 1 1 394 62 pfet_cnrx $X=279420 $Y=94500 $D=645
M324 1 1 811 62 pfet_cnrx $X=279420 $Y=105300 $D=645
M325 1 1 630 62 pfet_cnrx $X=279420 $Y=113400 $D=645
M326 1 1 399 62 pfet_cnrx $X=279420 $Y=170100 $D=645
M327 1 1 632 62 pfet_cnrx $X=280580 $Y=148500 $D=645
M328 1 1 498 62 pfet_cnrx $X=280580 $Y=167400 $D=645
M329 395 1 1 62 pfet_cnrx $X=280580 $Y=170100 $D=645
M330 1 1 100 62 pfet_cnrx $X=281740 $Y=124200 $D=645
M331 1 1 706 62 pfet_cnrx $X=282900 $Y=135000 $D=645
M332 1 1 392 62 pfet_cnrx $X=284060 $Y=170100 $D=645
M333 792 1 1 62 pfet_cnrx $X=285220 $Y=148500 $D=645
M334 1 1 534 62 pfet_cnrx $X=287540 $Y=145800 $D=645
M335 407 1 1 62 pfet_cnrx $X=287540 $Y=159300 $D=645
M336 1 1 71 62 pfet_cnrx $X=289860 $Y=105300 $D=645
M337 601 1 1 62 pfet_cnrx $X=289860 $Y=113400 $D=645
M338 1 1 414 62 pfet_cnrx $X=292180 $Y=135000 $D=645
M339 1 1 408 62 pfet_cnrx $X=292180 $Y=170100 $D=645
M340 1 1 1861 62 pfet_cnrx $X=293340 $Y=113400 $D=645
M341 1 1 411 62 pfet_cnrx $X=293340 $Y=159300 $D=645
M342 1 1 932 62 pfet_cnrx $X=293340 $Y=167600 $D=645
M343 102 1 1 62 pfet_cnrx $X=294500 $Y=148500 $D=645
M344 1 1 412 62 pfet_cnrx $X=294500 $Y=170100 $D=645
M345 1 1 410 62 pfet_cnrx $X=295660 $Y=126900 $D=645
M346 1 1 389 62 pfet_cnrx $X=296820 $Y=94500 $D=645
M347 793 1 1 62 pfet_cnrx $X=296820 $Y=105300 $D=645
M348 1 1 116 62 pfet_cnrx $X=297980 $Y=135000 $D=645
M349 1 1 535 62 pfet_cnrx $X=299140 $Y=137700 $D=645
M350 1 1 635 62 pfet_cnrx $X=300300 $Y=170100 $D=645
M351 1 1 1 62 pfet_cnrx $X=302620 $Y=146100 $D=645
M352 2050 1 1 62 pfet_cnrx $X=304940 $Y=135200 $D=645
M353 1 1 1 62 pfet_cnrx $X=304940 $Y=137700 $D=645
M354 1 1 136 62 pfet_cnrx $X=304940 $Y=159300 $D=645
M355 1 1 413 62 pfet_cnrx $X=306100 $Y=94500 $D=645
M356 1 1 1019 62 pfet_cnrx $X=306100 $Y=102600 $D=645
M357 1 1 1 62 pfet_cnrx $X=306100 $Y=137700 $D=645
M358 1864 1 1 62 pfet_cnrx $X=306100 $Y=159300 $D=645
M359 1 1 1 62 pfet_cnrx $X=307260 $Y=148500 $D=645
M360 1635 1 1 62 pfet_cnrx $X=309580 $Y=124400 $D=645
M361 1 1 603 62 pfet_cnrx $X=309580 $Y=159300 $D=645
M362 1 1 558 62 pfet_cnrx $X=309580 $Y=170100 $D=645
M363 1 1 1 62 pfet_cnrx $X=310740 $Y=105300 $D=645
M364 1 1 1 62 pfet_cnrx $X=311900 $Y=113700 $D=645
M365 1 1 420 62 pfet_cnrx $X=313060 $Y=137700 $D=645
M366 605 1 1 62 pfet_cnrx $X=313060 $Y=145800 $D=645
M367 104 1 1 62 pfet_cnrx $X=314220 $Y=137700 $D=645
M368 1 1 1021 62 pfet_cnrx $X=315380 $Y=167400 $D=645
M369 1 1 1867 62 pfet_cnrx $X=316540 $Y=145800 $D=645
M370 1 1 1 62 pfet_cnrx $X=316540 $Y=167400 $D=645
M371 2122 1 1 62 pfet_cnrx $X=316540 $Y=170100 $D=645
M372 1 1 1022 62 pfet_cnrx $X=317700 $Y=126900 $D=645
M373 1 1 1870 62 pfet_cnrx $X=317700 $Y=137700 $D=645
M374 1 1 536 62 pfet_cnrx $X=318860 $Y=94500 $D=645
M375 1 1 537 62 pfet_cnrx $X=318860 $Y=102600 $D=645
M376 1 1 750 62 pfet_cnrx $X=318860 $Y=105300 $D=645
M377 1 1 1 62 pfet_cnrx $X=318860 $Y=116100 $D=645
M378 1640 1 1 62 pfet_cnrx $X=318860 $Y=156800 $D=645
M379 1 1 72 62 pfet_cnrx $X=321180 $Y=113400 $D=645
M380 1 1 1 62 pfet_cnrx $X=321180 $Y=159300 $D=645
M381 1 1 859 62 pfet_cnrx $X=322340 $Y=145800 $D=645
M382 1025 1 1 62 pfet_cnrx $X=323500 $Y=145800 $D=645
M383 1 1 861 62 pfet_cnrx $X=324660 $Y=102600 $D=645
M384 1026 1 1 62 pfet_cnrx $X=324660 $Y=137700 $D=645
M385 1 1 1 62 pfet_cnrx $X=329300 $Y=113700 $D=645
M386 1 1 442 62 pfet_cnrx $X=329300 $Y=148500 $D=645
M387 1 1 1 62 pfet_cnrx $X=329300 $Y=167700 $D=645
M388 1 1 1 62 pfet_cnrx $X=335100 $Y=148500 $D=645
M389 106 1 1 62 pfet_cnrx $X=335100 $Y=159300 $D=645
M390 1 1 1023 62 pfet_cnrx $X=336260 $Y=124200 $D=645
M391 1 1 428 62 pfet_cnrx $X=337420 $Y=167400 $D=645
M392 1 1 539 62 pfet_cnrx $X=338580 $Y=105300 $D=645
M393 1 1 503 62 pfet_cnrx $X=338580 $Y=113400 $D=645
M394 1 1 1 62 pfet_cnrx $X=339740 $Y=116100 $D=645
M395 1648 1 1 62 pfet_cnrx $X=339740 $Y=156800 $D=645
M396 1 1 143 62 pfet_cnrx $X=344380 $Y=94500 $D=645
M397 1 1 144 62 pfet_cnrx $X=344380 $Y=102600 $D=645
M398 1 1 636 62 pfet_cnrx $X=344380 $Y=105300 $D=645
M399 1 1 540 62 pfet_cnrx $X=346700 $Y=116100 $D=645
M400 1 1 1 62 pfet_cnrx $X=346700 $Y=159300 $D=645
M401 1 1 712 62 pfet_cnrx $X=350180 $Y=113400 $D=645
M402 1 1 752 62 pfet_cnrx $X=350180 $Y=126900 $D=645
M403 795 1 1 62 pfet_cnrx $X=350180 $Y=135000 $D=645
M404 1 1 107 62 pfet_cnrx $X=350180 $Y=137700 $D=645
M405 1 1 448 62 pfet_cnrx $X=351340 $Y=146000 $D=645
M406 109 1 1 62 pfet_cnrx $X=353660 $Y=167400 $D=645
M407 1 1 639 62 pfet_cnrx $X=355980 $Y=126900 $D=645
M408 1 1 753 62 pfet_cnrx $X=358300 $Y=94500 $D=645
M409 1 1 754 62 pfet_cnrx $X=358300 $Y=102600 $D=645
M410 1 1 755 62 pfet_cnrx $X=358300 $Y=105300 $D=645
M411 1 1 559 62 pfet_cnrx $X=359460 $Y=113400 $D=645
M412 1 1 864 62 pfet_cnrx $X=364100 $Y=102600 $D=645
M413 1 1 1027 62 pfet_cnrx $X=364100 $Y=124200 $D=645
M414 1 1 756 62 pfet_cnrx $X=364100 $Y=170100 $D=645
M415 1 1 560 62 pfet_cnrx $X=365260 $Y=126900 $D=645
M416 1 1 607 62 pfet_cnrx $X=365260 $Y=167400 $D=645
M417 1 1 1 62 pfet_cnrx $X=366420 $Y=135300 $D=645
M418 1 1 505 62 pfet_cnrx $X=368740 $Y=137700 $D=645
M419 1 1 757 62 pfet_cnrx $X=368740 $Y=156600 $D=645
M420 1653 1 1 62 pfet_cnrx $X=368740 $Y=167600 $D=645
M421 1 1 119 62 pfet_cnrx $X=369900 $Y=170100 $D=645
M422 1 1 542 62 pfet_cnrx $X=371060 $Y=105300 $D=645
M423 111 1 1 62 pfet_cnrx $X=371060 $Y=113400 $D=645
M424 1 1 1028 62 pfet_cnrx $X=373380 $Y=145800 $D=645
M425 1 1 506 62 pfet_cnrx $X=373380 $Y=167400 $D=645
M426 1 1 507 62 pfet_cnrx $X=374540 $Y=102600 $D=645
M427 1 1 1880 62 pfet_cnrx $X=374540 $Y=113400 $D=645
M428 1 1 508 62 pfet_cnrx $X=374540 $Y=135000 $D=645
M429 1 1 606 62 pfet_cnrx $X=375700 $Y=94500 $D=645
M430 1 1 715 62 pfet_cnrx $X=376860 $Y=126900 $D=645
M431 1 1 1 62 pfet_cnrx $X=379180 $Y=159300 $D=645
M432 1 1 643 62 pfet_cnrx $X=380340 $Y=102600 $D=645
M433 1 1 561 62 pfet_cnrx $X=380340 $Y=105300 $D=645
M434 1 1 644 62 pfet_cnrx $X=380340 $Y=135000 $D=645
M435 1 1 562 62 pfet_cnrx $X=382660 $Y=145800 $D=645
M436 1660 1 1 62 pfet_cnrx $X=382660 $Y=170100 $D=645
M437 1 1 78 62 pfet_cnrx $X=384980 $Y=94500 $D=645
M438 1 1 1030 62 pfet_cnrx $X=384980 $Y=116100 $D=645
M439 1 1 866 62 pfet_cnrx $X=386140 $Y=102600 $D=645
M440 1 1 867 62 pfet_cnrx $X=386140 $Y=105300 $D=645
M441 1 1 719 62 pfet_cnrx $X=386140 $Y=113400 $D=645
M442 1 1 608 62 pfet_cnrx $X=388460 $Y=126900 $D=645
M443 1 1 1 62 pfet_cnrx $X=388460 $Y=167700 $D=645
M444 609 1 1 62 pfet_cnrx $X=389620 $Y=126900 $D=645
M445 1 1 563 62 pfet_cnrx $X=389620 $Y=135000 $D=645
M446 1 1 645 62 pfet_cnrx $X=390780 $Y=94500 $D=645
M447 1 1 868 62 pfet_cnrx $X=391940 $Y=102600 $D=645
M448 1 1 869 62 pfet_cnrx $X=391940 $Y=105300 $D=645
M449 1 1 1883 62 pfet_cnrx $X=393100 $Y=126900 $D=645
M450 2130 1 1 62 pfet_cnrx $X=396580 $Y=170100 $D=645
M451 1 1 463 62 pfet_cnrx $X=398900 $Y=116100 $D=645
M452 1 1 564 62 pfet_cnrx $X=401220 $Y=102600 $D=645
M453 1 1 460 62 pfet_cnrx $X=401220 $Y=135000 $D=645
M454 1 1 543 62 pfet_cnrx $X=401220 $Y=145800 $D=645
M455 1 1 154 62 pfet_cnrx $X=401220 $Y=167400 $D=645
M456 1 1 1033 62 pfet_cnrx $X=402380 $Y=156600 $D=645
M457 1 1 727 62 pfet_cnrx $X=403540 $Y=105300 $D=645
M458 456 1 1 62 pfet_cnrx $X=403540 $Y=156600 $D=645
M459 1 1 1034 62 pfet_cnrx $X=403540 $Y=159300 $D=645
M460 1 1 1 62 pfet_cnrx $X=403540 $Y=170100 $D=645
M461 1 1 544 62 pfet_cnrx $X=404700 $Y=113400 $D=645
M462 1 1 647 62 pfet_cnrx $X=404700 $Y=116100 $D=645
M463 1 1 2132 62 pfet_cnrx $X=408180 $Y=156600 $D=645
M464 1 1 1 62 pfet_cnrx $X=409340 $Y=124500 $D=645
M465 1 1 870 62 pfet_cnrx $X=410500 $Y=113400 $D=645
M466 1 1 871 62 pfet_cnrx $X=410500 $Y=116100 $D=645
M467 1 1 1 62 pfet_cnrx $X=410500 $Y=170100 $D=645
M468 1 1 565 62 pfet_cnrx $X=412820 $Y=105300 $D=645
M469 2642 1 1 62 pfet_cnrx $X=413980 $Y=156600 $D=645
M470 1 1 1 62 pfet_cnrx $X=413980 $Y=167700 $D=645
M471 1 1 1 62 pfet_cnrx $X=413980 $Y=170100 $D=645
M472 1666 1 1 62 pfet_cnrx $X=415140 $Y=148500 $D=645
M473 1 1 872 62 pfet_cnrx $X=416300 $Y=113400 $D=645
M474 1 1 873 62 pfet_cnrx $X=416300 $Y=116100 $D=645
M475 1 1 1 62 pfet_cnrx $X=417460 $Y=135300 $D=645
M476 1 1 1 62 pfet_cnrx $X=419780 $Y=105300 $D=645
M477 1 1 760 62 pfet_cnrx $X=423260 $Y=126900 $D=645
M478 1 1 1035 62 pfet_cnrx $X=424420 $Y=137700 $D=645
M479 1 1 649 62 pfet_cnrx $X=425580 $Y=105300 $D=645
M480 1 1 567 62 pfet_cnrx $X=425580 $Y=113400 $D=645
M481 1 1 546 62 pfet_cnrx $X=425580 $Y=145800 $D=645
M482 1 1 547 62 pfet_cnrx $X=426740 $Y=148500 $D=645
M483 1 1 568 62 pfet_cnrx $X=426740 $Y=167400 $D=645
M484 1 1 1 62 pfet_cnrx $X=426740 $Y=170100 $D=645
M485 1 1 1 62 pfet_cnrx $X=427900 $Y=94500 $D=645
M486 1 1 548 62 pfet_cnrx $X=429060 $Y=116100 $D=645
M487 1 1 549 62 pfet_cnrx $X=429060 $Y=124200 $D=645
M488 1 1 650 62 pfet_cnrx $X=429060 $Y=126900 $D=645
M489 1 1 651 62 pfet_cnrx $X=431380 $Y=113400 $D=645
M490 1 1 1 62 pfet_cnrx $X=437180 $Y=94500 $D=645
M491 1 1 569 62 pfet_cnrx $X=438340 $Y=124200 $D=645
M492 1 1 471 62 pfet_cnrx $X=439500 $Y=145800 $D=645
M493 1 1 1036 62 pfet_cnrx $X=444140 $Y=156600 $D=645
M494 1 1 1037 62 pfet_cnrx $X=446460 $Y=135000 $D=645
M495 1 1 1 62 pfet_cnrx $X=448780 $Y=94500 $D=645
M496 1 1 1 62 pfet_cnrx $X=448780 $Y=105300 $D=645
M497 1 1 1 62 pfet_cnrx $X=448780 $Y=116100 $D=645
M498 1 1 1 62 pfet_cnrx $X=451100 $Y=170100 $D=645
M499 1 1 513 62 pfet_cnrx $X=453420 $Y=126900 $D=645
M500 1 1 514 62 pfet_cnrx $X=453420 $Y=137700 $D=645
M501 1 1 761 62 pfet_cnrx $X=453420 $Y=145800 $D=645
M502 1 1 734 62 pfet_cnrx $X=458060 $Y=135000 $D=645
M503 1 1 1 62 pfet_cnrx $X=458060 $Y=170100 $D=645
M504 1 1 654 62 pfet_cnrx $X=459220 $Y=137700 $D=645
M505 1 1 550 62 pfet_cnrx $X=462700 $Y=156600 $D=645
M506 1 1 762 62 pfet_cnrx $X=463860 $Y=159300 $D=645
M507 1 1 1 62 pfet_cnrx $X=463860 $Y=170100 $D=645
M508 1 1 1038 62 pfet_cnrx $X=467340 $Y=167400 $D=645
M509 1 1 515 62 pfet_cnrx $X=470820 $Y=137700 $D=645
M510 1 1 824 62 pfet_cnrx $X=470820 $Y=145800 $D=645
M511 1 1 1039 62 pfet_cnrx $X=470820 $Y=148500 $D=645
M512 1 1 736 62 pfet_cnrx $X=474300 $Y=156600 $D=645
M513 1 1 1 62 pfet_cnrx $X=475460 $Y=102600 $D=645
M514 1 1 738 62 pfet_cnrx $X=478940 $Y=167400 $D=645
M515 1 1 739 62 pfet_cnrx $X=482420 $Y=148500 $D=645
M516 1 1 2134 62 pfet_cnrx $X=484740 $Y=124200 $D=645
M517 1 1 763 62 pfet_cnrx $X=484740 $Y=159300 $D=645
M518 1 1 1 62 pfet_cnrx $X=485900 $Y=105300 $D=645
M519 1 1 741 62 pfet_cnrx $X=485900 $Y=156600 $D=645
M520 1 1 1 62 pfet_cnrx $X=490540 $Y=126900 $D=645
M521 1 1 826 62 pfet_cnrx $X=496340 $Y=167400 $D=645
M522 2135 1 1 62 pfet_cnrx $X=497500 $Y=126900 $D=645
M523 1 1 1 62 pfet_cnrx $X=504460 $Y=105300 $D=645
M524 1 1 1 62 pfet_cnrx $X=505620 $Y=113400 $D=645
M525 1 1 1 62 pfet_cnrx $X=518380 $Y=105300 $D=645
M526 2136 1 1 62 pfet_cnrx $X=519540 $Y=105300 $D=645
M527 1 1 1 62 pfet_cnrx $X=523020 $Y=94500 $D=645
M528 1 1 1 62 pfet_cnrx $X=523020 $Y=116100 $D=645
M529 2137 1 1 62 pfet_cnrx $X=532300 $Y=116100 $D=645
M530 1 1 1 62 pfet_cnrx $X=532300 $Y=135000 $D=645
M531 1 1 1 62 pfet_cnrx $X=533460 $Y=167400 $D=645
M532 1 1 1 62 pfet_cnrx $X=542740 $Y=113400 $D=645
M533 1 1 1 62 pfet_cnrx $X=543900 $Y=126900 $D=645
M534 1 1 1 62 pfet_cnrx $X=545060 $Y=137700 $D=645
M535 1 1 1 62 pfet_cnrx $X=545060 $Y=145800 $D=645
M536 1 1 1 62 pfet_cnrx $X=549700 $Y=102600 $D=645
M537 1 1 1 62 pfet_cnrx $X=550860 $Y=135000 $D=645
M538 1 1 1 62 pfet_cnrx $X=552020 $Y=167400 $D=645
M539 1 1 1 62 pfet_cnrx $X=554340 $Y=105300 $D=645
M540 1 1 1 62 pfet_cnrx $X=556660 $Y=148500 $D=645
M541 1 1 1 62 pfet_cnrx $X=556660 $Y=170100 $D=645
M542 1 1 1 62 pfet_cnrx $X=558980 $Y=124200 $D=645
M543 1 1 1 62 pfet_cnrx $X=558980 $Y=159300 $D=645
M544 1 1 1 62 pfet_cnrx $X=560140 $Y=94500 $D=645
M545 1 1 1 62 pfet_cnrx $X=560140 $Y=156600 $D=645
M546 1 1 1 62 pfet_cnrx $X=561300 $Y=113400 $D=645
M547 1 1 1 62 pfet_cnrx $X=562460 $Y=126900 $D=645
M548 1 1 1 62 pfet_cnrx $X=563620 $Y=137700 $D=645
M549 1 1 1 62 pfet_cnrx $X=563620 $Y=145800 $D=645
M550 1 1 1 62 pfet_cnrx $X=567100 $Y=156600 $D=645
M551 1 1 1 62 pfet_cnrx $X=572900 $Y=105300 $D=645
M552 1 1 1 62 pfet_cnrx $X=577540 $Y=137700 $D=645
M553 1 1 1 62 pfet_cnrx $X=577540 $Y=159300 $D=645
M554 1 1 1 62 pfet_cnrx $X=578700 $Y=94500 $D=645
M555 1 1 1 62 pfet_cnrx $X=578700 $Y=102600 $D=645
M556 1 1 1 62 pfet_cnrx $X=578700 $Y=105300 $D=645
M557 1 1 1 62 pfet_cnrx $X=578700 $Y=113400 $D=645
M558 1 1 1 62 pfet_cnrx $X=578700 $Y=116100 $D=645
M559 1 1 1 62 pfet_cnrx $X=578700 $Y=124200 $D=645
M560 1 1 1 62 pfet_cnrx $X=578700 $Y=135000 $D=645
M561 1 1 1 62 pfet_cnrx $X=578700 $Y=137700 $D=645
M562 1 1 1 62 pfet_cnrx $X=578700 $Y=145800 $D=645
M563 1 1 1 62 pfet_cnrx $X=578700 $Y=156600 $D=645
M564 1 1 1 62 pfet_cnrx $X=578700 $Y=159300 $D=645
M565 1 1 1 62 pfet_cnrx $X=578700 $Y=167400 $D=645
M566 1 1 1 62 pfet_cnrx $X=49740 $Y=94500 $D=646
M567 1 1 1 62 pfet_cnrx $X=49740 $Y=105300 $D=646
M568 1566 1 1 62 pfet_cnrx $X=49740 $Y=113600 $D=646
M569 1 1 1 62 pfet_cnrx $X=49740 $Y=116100 $D=646
M570 1568 1 1 62 pfet_cnrx $X=49740 $Y=124400 $D=646
M571 1 1 1 62 pfet_cnrx $X=49740 $Y=126900 $D=646
M572 1 1 1 62 pfet_cnrx $X=49740 $Y=135300 $D=646
M573 1 1 1 62 pfet_cnrx $X=49740 $Y=137700 $D=646
M574 1 1 1 62 pfet_cnrx $X=49740 $Y=146100 $D=646
M575 1 1 1 62 pfet_cnrx $X=49740 $Y=148500 $D=646
M576 1 1 1 62 pfet_cnrx $X=49740 $Y=159300 $D=646
M577 1 1 1 62 pfet_cnrx $X=49740 $Y=167700 $D=646
M578 1 1 1 62 pfet_cnrx $X=49740 $Y=170100 $D=646
M579 1 1 482 62 pfet_cnrx $X=54380 $Y=113700 $D=646
M580 1 1 65 62 pfet_cnrx $X=54380 $Y=124500 $D=646
M581 1 1 1 62 pfet_cnrx $X=60180 $Y=105300 $D=646
M582 1 1 1 62 pfet_cnrx $X=60180 $Y=116100 $D=646
M583 1 1 1 62 pfet_cnrx $X=60180 $Y=126900 $D=646
M584 1 1 1 62 pfet_cnrx $X=60180 $Y=137700 $D=646
M585 1 1 1 62 pfet_cnrx $X=60180 $Y=159300 $D=646
M586 2036 1 1 62 pfet_cnrx $X=60180 $Y=170100 $D=646
M587 1 1 518 62 pfet_cnrx $X=61340 $Y=113700 $D=646
M588 1 1 1 62 pfet_cnrx $X=63660 $Y=102900 $D=646
M589 1570 1 1 62 pfet_cnrx $X=78740 $Y=105300 $D=646
M590 1 1 658 62 pfet_cnrx $X=81060 $Y=113700 $D=646
M591 1572 1 1 62 pfet_cnrx $X=83380 $Y=102800 $D=646
M592 1 1 1 62 pfet_cnrx $X=86860 $Y=94500 $D=646
M593 571 1 1 62 pfet_cnrx $X=88020 $Y=170100 $D=646
M594 1 1 1 62 pfet_cnrx $X=90340 $Y=170100 $D=646
M595 1 1 663 62 pfet_cnrx $X=91500 $Y=167600 $D=646
M596 1 1 850 62 pfet_cnrx $X=92660 $Y=148500 $D=646
M597 572 1 1 62 pfet_cnrx $X=93820 $Y=146000 $D=646
M598 1 1 616 62 pfet_cnrx $X=94980 $Y=113700 $D=646
M599 1 1 800 62 pfet_cnrx $X=94980 $Y=124400 $D=646
M600 1 1 580 62 pfet_cnrx $X=96140 $Y=116100 $D=646
M601 1 1 666 62 pfet_cnrx $X=96140 $Y=126900 $D=646
M602 1 1 851 62 pfet_cnrx $X=96140 $Y=135300 $D=646
M603 1 1 852 62 pfet_cnrx $X=96140 $Y=137700 $D=646
M604 1 1 1 62 pfet_cnrx $X=96140 $Y=146100 $D=646
M605 1 1 617 62 pfet_cnrx $X=96140 $Y=156800 $D=646
M606 1 1 618 62 pfet_cnrx $X=96140 $Y=159300 $D=646
M607 1 1 619 62 pfet_cnrx $X=96140 $Y=170100 $D=646
M608 1 1 1 62 pfet_cnrx $X=98460 $Y=146100 $D=646
M609 1 1 1 62 pfet_cnrx $X=98460 $Y=148500 $D=646
M610 1 1 667 62 pfet_cnrx $X=99620 $Y=102800 $D=646
M611 1 1 620 62 pfet_cnrx $X=100780 $Y=94500 $D=646
M612 1 1 523 62 pfet_cnrx $X=103100 $Y=135300 $D=646
M613 1826 1 1 62 pfet_cnrx $X=106580 $Y=135300 $D=646
M614 1 1 853 62 pfet_cnrx $X=108900 $Y=113700 $D=646
M615 1 1 854 62 pfet_cnrx $X=108900 $Y=116100 $D=646
M616 1 1 583 62 pfet_cnrx $X=110060 $Y=135300 $D=646
M617 2102 1 1 62 pfet_cnrx $X=113540 $Y=135300 $D=646
M618 2038 1 1 62 pfet_cnrx $X=117020 $Y=113700 $D=646
M619 1 1 1 62 pfet_cnrx $X=117020 $Y=116100 $D=646
M620 1 1 976 62 pfet_cnrx $X=118180 $Y=126900 $D=646
M621 1 1 978 62 pfet_cnrx $X=118180 $Y=156900 $D=646
M622 1 1 340 62 pfet_cnrx $X=118180 $Y=159300 $D=646
M623 1 1 1827 62 pfet_cnrx $X=118180 $Y=167600 $D=646
M624 1 1 979 62 pfet_cnrx $X=118180 $Y=170100 $D=646
M625 1 1 2102 62 pfet_cnrx $X=119340 $Y=135100 $D=646
M626 1 1 980 62 pfet_cnrx $X=120500 $Y=146100 $D=646
M627 1 1 981 62 pfet_cnrx $X=120500 $Y=148500 $D=646
M628 1 1 573 62 pfet_cnrx $X=120500 $Y=167600 $D=646
M629 1 1 982 62 pfet_cnrx $X=121660 $Y=102900 $D=646
M630 1 1 1 62 pfet_cnrx $X=121660 $Y=156900 $D=646
M631 1 1 983 62 pfet_cnrx $X=122820 $Y=94500 $D=646
M632 1 1 1 62 pfet_cnrx $X=122820 $Y=113700 $D=646
M633 1 1 621 62 pfet_cnrx $X=122820 $Y=116100 $D=646
M634 2103 1 1 62 pfet_cnrx $X=122820 $Y=124300 $D=646
M635 1 1 804 62 pfet_cnrx $X=123980 $Y=105300 $D=646
M636 1 1 1 62 pfet_cnrx $X=123980 $Y=146100 $D=646
M637 1 1 1 62 pfet_cnrx $X=123980 $Y=148500 $D=646
M638 1 1 574 62 pfet_cnrx $X=123980 $Y=156800 $D=646
M639 1575 1 1 62 pfet_cnrx $X=123980 $Y=159300 $D=646
M640 1 1 1 62 pfet_cnrx $X=125140 $Y=94500 $D=646
M641 1 1 524 62 pfet_cnrx $X=125140 $Y=126900 $D=646
M642 1578 1 1 62 pfet_cnrx $X=125140 $Y=170100 $D=646
M643 1 1 1 62 pfet_cnrx $X=126300 $Y=135300 $D=646
M644 1 1 2103 62 pfet_cnrx $X=128620 $Y=124300 $D=646
M645 1580 1 1 62 pfet_cnrx $X=129780 $Y=126900 $D=646
M646 1 1 67 62 pfet_cnrx $X=129780 $Y=170100 $D=646
M647 1583 1 1 62 pfet_cnrx $X=130940 $Y=113700 $D=646
M648 1586 1 1 62 pfet_cnrx $X=130940 $Y=135300 $D=646
M649 2040 1 1 62 pfet_cnrx $X=132100 $Y=170100 $D=646
M650 1 1 671 62 pfet_cnrx $X=134420 $Y=137700 $D=646
M651 1 1 622 62 pfet_cnrx $X=134420 $Y=159300 $D=646
M652 1 1 486 62 pfet_cnrx $X=135580 $Y=113700 $D=646
M653 1 1 487 62 pfet_cnrx $X=135580 $Y=135300 $D=646
M654 1 1 673 62 pfet_cnrx $X=135580 $Y=156900 $D=646
M655 1 1 623 62 pfet_cnrx $X=135580 $Y=167700 $D=646
M656 2041 1 1 62 pfet_cnrx $X=136740 $Y=137700 $D=646
M657 1 1 552 62 pfet_cnrx $X=137900 $Y=124500 $D=646
M658 13 1 1 62 pfet_cnrx $X=137900 $Y=156900 $D=646
M659 2104 1 1 62 pfet_cnrx $X=137900 $Y=170100 $D=646
M660 1 1 1 62 pfet_cnrx $X=140220 $Y=156900 $D=646
M661 343 1 1 62 pfet_cnrx $X=141380 $Y=126900 $D=646
M662 15 1 1 62 pfet_cnrx $X=142540 $Y=137700 $D=646
M663 1832 1 1 62 pfet_cnrx $X=143700 $Y=124500 $D=646
M664 1 1 1 62 pfet_cnrx $X=143700 $Y=126900 $D=646
M665 1588 1 1 62 pfet_cnrx $X=143700 $Y=159300 $D=646
M666 1 1 141 62 pfet_cnrx $X=143700 $Y=167700 $D=646
M667 1 1 2104 62 pfet_cnrx $X=143700 $Y=170100 $D=646
M668 1 1 984 62 pfet_cnrx $X=144860 $Y=116100 $D=646
M669 1 1 1 62 pfet_cnrx $X=144860 $Y=126900 $D=646
M670 1 1 1 62 pfet_cnrx $X=144860 $Y=137700 $D=646
M671 1 1 1 62 pfet_cnrx $X=146020 $Y=137700 $D=646
M672 1 1 986 62 pfet_cnrx $X=146020 $Y=146100 $D=646
M673 2042 1 1 62 pfet_cnrx $X=146020 $Y=170100 $D=646
M674 1 1 1 62 pfet_cnrx $X=147180 $Y=148500 $D=646
M675 2043 1 1 62 pfet_cnrx $X=147180 $Y=167700 $D=646
M676 1 1 488 62 pfet_cnrx $X=148340 $Y=159300 $D=646
M677 2105 1 1 62 pfet_cnrx $X=148340 $Y=124300 $D=646
M678 1 1 1 62 pfet_cnrx $X=149500 $Y=146100 $D=646
M679 2106 1 1 62 pfet_cnrx $X=151820 $Y=170100 $D=646
M680 1 1 347 62 pfet_cnrx $X=152980 $Y=94500 $D=646
M681 1 1 675 62 pfet_cnrx $X=152980 $Y=102800 $D=646
M682 1 1 1833 62 pfet_cnrx $X=152980 $Y=113600 $D=646
M683 2107 1 1 62 pfet_cnrx $X=152980 $Y=167500 $D=646
M684 1836 1 1 62 pfet_cnrx $X=154140 $Y=116100 $D=646
M685 1 1 590 62 pfet_cnrx $X=154140 $Y=156900 $D=646
M686 1 1 2105 62 pfet_cnrx $X=154140 $Y=124500 $D=646
M687 1 1 348 62 pfet_cnrx $X=155300 $Y=113600 $D=646
M688 1 1 624 62 pfet_cnrx $X=156460 $Y=135300 $D=646
M689 1 1 676 62 pfet_cnrx $X=157620 $Y=105300 $D=646
M690 1 1 2106 62 pfet_cnrx $X=157620 $Y=170100 $D=646
M691 11 1 1 62 pfet_cnrx $X=158780 $Y=116100 $D=646
M692 1 1 2107 62 pfet_cnrx $X=158780 $Y=167500 $D=646
M693 1594 1 1 62 pfet_cnrx $X=162260 $Y=124500 $D=646
M694 1 1 353 62 pfet_cnrx $X=162260 $Y=156900 $D=646
M695 1 1 1837 62 pfet_cnrx $X=162260 $Y=170100 $D=646
M696 1 1 489 62 pfet_cnrx $X=165740 $Y=116100 $D=646
M697 1 1 678 62 pfet_cnrx $X=166900 $Y=113700 $D=646
M698 1 1 989 62 pfet_cnrx $X=166900 $Y=126900 $D=646
M699 1838 1 1 62 pfet_cnrx $X=166900 $Y=156900 $D=646
M700 1 1 990 62 pfet_cnrx $X=168060 $Y=137700 $D=646
M701 2108 1 1 62 pfet_cnrx $X=169220 $Y=135300 $D=646
M702 1 1 991 62 pfet_cnrx $X=169220 $Y=148500 $D=646
M703 1 1 625 62 pfet_cnrx $X=170380 $Y=105300 $D=646
M704 1 1 992 62 pfet_cnrx $X=170380 $Y=159300 $D=646
M705 1 1 1 62 pfet_cnrx $X=171540 $Y=137700 $D=646
M706 1 1 1 62 pfet_cnrx $X=171540 $Y=148500 $D=646
M707 1 1 351 62 pfet_cnrx $X=172700 $Y=105300 $D=646
M708 1 1 1 62 pfet_cnrx $X=172700 $Y=113700 $D=646
M709 1 1 626 62 pfet_cnrx $X=172700 $Y=124400 $D=646
M710 2109 1 1 62 pfet_cnrx $X=172700 $Y=159300 $D=646
M711 1 1 1 62 pfet_cnrx $X=173860 $Y=116100 $D=646
M712 2044 1 1 62 pfet_cnrx $X=173860 $Y=126900 $D=646
M713 1 1 627 62 pfet_cnrx $X=173860 $Y=167600 $D=646
M714 1 1 748 62 pfet_cnrx $X=175020 $Y=170100 $D=646
M715 1 1 2108 62 pfet_cnrx $X=175020 $Y=135100 $D=646
M716 1 1 1 62 pfet_cnrx $X=176180 $Y=105300 $D=646
M717 1 1 1 62 pfet_cnrx $X=178500 $Y=146100 $D=646
M718 1 1 2109 62 pfet_cnrx $X=178500 $Y=159300 $D=646
M719 1 1 1841 62 pfet_cnrx $X=179660 $Y=102900 $D=646
M720 1 1 1 62 pfet_cnrx $X=179660 $Y=126900 $D=646
M721 2110 1 1 62 pfet_cnrx $X=179660 $Y=135100 $D=646
M722 1 1 2110 62 pfet_cnrx $X=185460 $Y=135100 $D=646
M723 1597 1 1 62 pfet_cnrx $X=187780 $Y=102900 $D=646
M724 1 1 526 62 pfet_cnrx $X=190100 $Y=146000 $D=646
M725 2111 1 1 62 pfet_cnrx $X=190100 $Y=135100 $D=646
M726 1 1 554 62 pfet_cnrx $X=193580 $Y=113600 $D=646
M727 1 1 996 62 pfet_cnrx $X=193580 $Y=137700 $D=646
M728 1 1 527 62 pfet_cnrx $X=194740 $Y=126900 $D=646
M729 1 1 1 62 pfet_cnrx $X=194740 $Y=148500 $D=646
M730 1 1 999 62 pfet_cnrx $X=195900 $Y=116100 $D=646
M731 1 1 806 62 pfet_cnrx $X=195900 $Y=159300 $D=646
M732 1 1 2111 62 pfet_cnrx $X=195900 $Y=135300 $D=646
M733 68 1 1 62 pfet_cnrx $X=197060 $Y=170100 $D=646
M734 1 1 684 62 pfet_cnrx $X=198220 $Y=94500 $D=646
M735 1 1 1001 62 pfet_cnrx $X=198220 $Y=105300 $D=646
M736 1 1 1 62 pfet_cnrx $X=198220 $Y=137700 $D=646
M737 1 1 1 62 pfet_cnrx $X=199380 $Y=116100 $D=646
M738 1 1 1844 62 pfet_cnrx $X=199380 $Y=124400 $D=646
M739 358 1 1 62 pfet_cnrx $X=199380 $Y=156800 $D=646
M740 765 1 1 62 pfet_cnrx $X=200540 $Y=105300 $D=646
M741 1 1 1 62 pfet_cnrx $X=200540 $Y=126900 $D=646
M742 1 1 352 62 pfet_cnrx $X=201700 $Y=116100 $D=646
M743 350 1 1 62 pfet_cnrx $X=201700 $Y=126900 $D=646
M744 1 1 1 62 pfet_cnrx $X=201700 $Y=156800 $D=646
M745 1 1 1600 62 pfet_cnrx $X=201700 $Y=170100 $D=646
M746 1 1 475 62 pfet_cnrx $X=202860 $Y=124400 $D=646
M747 1 1 528 62 pfet_cnrx $X=202860 $Y=135200 $D=646
M748 1 1 1 62 pfet_cnrx $X=202860 $Y=156900 $D=646
M749 1 1 476 62 pfet_cnrx $X=206340 $Y=135200 $D=646
M750 1 1 1845 62 pfet_cnrx $X=207500 $Y=124400 $D=646
M751 1602 1 1 62 pfet_cnrx $X=208660 $Y=156900 $D=646
M752 1 1 477 62 pfet_cnrx $X=210980 $Y=124500 $D=646
M753 1 1 555 62 pfet_cnrx $X=210980 $Y=167700 $D=646
M754 1848 1 1 62 pfet_cnrx $X=212140 $Y=137700 $D=646
M755 1 1 688 62 pfet_cnrx $X=213300 $Y=116100 $D=646
M756 1 1 1 62 pfet_cnrx $X=213300 $Y=124500 $D=646
M757 359 1 1 62 pfet_cnrx $X=213300 $Y=135200 $D=646
M758 2047 1 1 62 pfet_cnrx $X=213300 $Y=167700 $D=646
M759 1 1 1 62 pfet_cnrx $X=214460 $Y=105300 $D=646
M760 1 1 112 62 pfet_cnrx $X=214460 $Y=170100 $D=646
M761 1 1 1003 62 pfet_cnrx $X=215620 $Y=113600 $D=646
M762 1 1 1851 62 pfet_cnrx $X=216780 $Y=146000 $D=646
M763 1 1 1004 62 pfet_cnrx $X=216780 $Y=148500 $D=646
M764 1 1 1 62 pfet_cnrx $X=219100 $Y=159300 $D=646
M765 1 1 1 62 pfet_cnrx $X=219100 $Y=167600 $D=646
M766 2112 1 1 62 pfet_cnrx $X=220260 $Y=156700 $D=646
M767 1 1 355 62 pfet_cnrx $X=221420 $Y=167700 $D=646
M768 1 1 79 62 pfet_cnrx $X=222580 $Y=148500 $D=646
M769 1 1 1 62 pfet_cnrx $X=223740 $Y=148500 $D=646
M770 1608 1 1 62 pfet_cnrx $X=224900 $Y=159300 $D=646
M771 27 1 1 62 pfet_cnrx $X=224900 $Y=167700 $D=646
M772 1 1 1007 62 pfet_cnrx $X=226060 $Y=126900 $D=646
M773 1 1 2112 62 pfet_cnrx $X=226060 $Y=156700 $D=646
M774 1 1 493 62 pfet_cnrx $X=229540 $Y=159300 $D=646
M775 1 1 132 62 pfet_cnrx $X=231860 $Y=102900 $D=646
M776 1 1 692 62 pfet_cnrx $X=231860 $Y=135300 $D=646
M777 1613 1 1 62 pfet_cnrx $X=234180 $Y=126900 $D=646
M778 1 1 1009 62 pfet_cnrx $X=235340 $Y=124500 $D=646
M779 1 1 695 62 pfet_cnrx $X=236500 $Y=146100 $D=646
M780 2048 1 1 62 pfet_cnrx $X=236500 $Y=159300 $D=646
M781 1 1 1010 62 pfet_cnrx $X=236500 $Y=170100 $D=646
M782 1 1 1 62 pfet_cnrx $X=237660 $Y=156900 $D=646
M783 1 1 75 62 pfet_cnrx $X=238820 $Y=103000 $D=646
M784 1 1 1 62 pfet_cnrx $X=238820 $Y=113800 $D=646
M785 1 1 1 62 pfet_cnrx $X=238820 $Y=124600 $D=646
M786 1 1 530 62 pfet_cnrx $X=238820 $Y=135400 $D=646
M787 1 1 1 62 pfet_cnrx $X=238820 $Y=146200 $D=646
M788 1 1 1 62 pfet_cnrx $X=238820 $Y=157000 $D=646
M789 1 1 1 62 pfet_cnrx $X=238820 $Y=167800 $D=646
M790 1 1 1 62 pfet_cnrx $X=238820 $Y=170100 $D=646
M791 1618 1 1 62 pfet_cnrx $X=249260 $Y=102800 $D=646
M792 1620 1 1 62 pfet_cnrx $X=249260 $Y=113600 $D=646
M793 1622 1 1 62 pfet_cnrx $X=249260 $Y=124400 $D=646
M794 1 1 1 62 pfet_cnrx $X=249260 $Y=135300 $D=646
M795 370 1 1 62 pfet_cnrx $X=251580 $Y=135300 $D=646
M796 1 1 113 62 pfet_cnrx $X=251580 $Y=159300 $D=646
M797 1 1 160 62 pfet_cnrx $X=252740 $Y=116100 $D=646
M798 1 1 29 62 pfet_cnrx $X=253900 $Y=159300 $D=646
M799 1624 1 1 62 pfet_cnrx $X=257380 $Y=105300 $D=646
M800 2138 1 1 62 pfet_cnrx $X=259700 $Y=159300 $D=646
M801 1 1 808 62 pfet_cnrx $X=260860 $Y=94500 $D=646
M802 1 1 856 62 pfet_cnrx $X=260860 $Y=148500 $D=646
M803 1 1 1014 62 pfet_cnrx $X=260860 $Y=170100 $D=646
M804 372 1 1 62 pfet_cnrx $X=262020 $Y=146000 $D=646
M805 2641 1 1 62 pfet_cnrx $X=262020 $Y=156700 $D=646
M806 1 1 1 62 pfet_cnrx $X=264340 $Y=170100 $D=646
M807 1 1 701 62 pfet_cnrx $X=265500 $Y=102900 $D=646
M808 1 1 169 62 pfet_cnrx $X=265500 $Y=113700 $D=646
M809 1 1 170 62 pfet_cnrx $X=265500 $Y=126900 $D=646
M810 1627 1 1 62 pfet_cnrx $X=265500 $Y=148500 $D=646
M811 1857 1 1 62 pfet_cnrx $X=266660 $Y=159300 $D=646
M812 1 1 80 62 pfet_cnrx $X=266660 $Y=170100 $D=646
M813 1 1 2139 62 pfet_cnrx $X=266660 $Y=146100 $D=646
M814 1 1 2035 62 pfet_cnrx $X=267820 $Y=156700 $D=646
M815 1 1 703 62 pfet_cnrx $X=270140 $Y=137700 $D=646
M816 1 1 382 62 pfet_cnrx $X=270140 $Y=148500 $D=646
M817 387 1 1 62 pfet_cnrx $X=270140 $Y=170100 $D=646
M818 383 1 1 62 pfet_cnrx $X=272460 $Y=148500 $D=646
M819 1 1 1 62 pfet_cnrx $X=274780 $Y=148500 $D=646
M820 1 1 631 62 pfet_cnrx $X=280580 $Y=146100 $D=646
M821 1 1 1860 62 pfet_cnrx $X=281740 $Y=156900 $D=646
M822 1 1 814 62 pfet_cnrx $X=282900 $Y=116100 $D=646
M823 1 1 135 62 pfet_cnrx $X=284060 $Y=102800 $D=646
M824 2049 1 1 62 pfet_cnrx $X=284060 $Y=113600 $D=646
M825 1631 1 1 62 pfet_cnrx $X=285220 $Y=105300 $D=646
M826 1 1 1 62 pfet_cnrx $X=286380 $Y=156900 $D=646
M827 1 1 115 62 pfet_cnrx $X=286380 $Y=167700 $D=646
M828 1 1 1016 62 pfet_cnrx $X=287540 $Y=126900 $D=646
M829 2140 1 1 62 pfet_cnrx $X=288700 $Y=167700 $D=646
M830 1 1 1 62 pfet_cnrx $X=289860 $Y=126900 $D=646
M831 1 1 1017 62 pfet_cnrx $X=292180 $Y=137700 $D=646
M832 1 1 633 62 pfet_cnrx $X=292180 $Y=156800 $D=646
M833 1 1 708 62 pfet_cnrx $X=293340 $Y=124500 $D=646
M834 1 1 634 62 pfet_cnrx $X=293340 $Y=146100 $D=646
M835 1 1 2119 62 pfet_cnrx $X=293340 $Y=148500 $D=646
M836 1 1 1 62 pfet_cnrx $X=296820 $Y=124500 $D=646
M837 1 1 1863 62 pfet_cnrx $X=297980 $Y=148500 $D=646
M838 1633 1 1 62 pfet_cnrx $X=299140 $Y=113600 $D=646
M839 1 1 1 62 pfet_cnrx $X=299140 $Y=146100 $D=646
M840 1 1 409 62 pfet_cnrx $X=301460 $Y=148500 $D=646
M841 422 1 1 62 pfet_cnrx $X=302620 $Y=135200 $D=646
M842 1 1 1 62 pfet_cnrx $X=302620 $Y=148500 $D=646
M843 1 1 499 62 pfet_cnrx $X=303780 $Y=113700 $D=646
M844 424 1 1 62 pfet_cnrx $X=303780 $Y=124400 $D=646
M845 1 1 1018 62 pfet_cnrx $X=304940 $Y=116100 $D=646
M846 1 1 417 62 pfet_cnrx $X=304940 $Y=148500 $D=646
M847 1 1 2120 62 pfet_cnrx $X=304940 $Y=105300 $D=646
M848 1 1 1 62 pfet_cnrx $X=306100 $Y=105300 $D=646
M849 1 1 1 62 pfet_cnrx $X=306100 $Y=113700 $D=646
M850 416 1 1 62 pfet_cnrx $X=307260 $Y=116100 $D=646
M851 2051 1 1 62 pfet_cnrx $X=307260 $Y=146100 $D=646
M852 1 1 418 62 pfet_cnrx $X=309580 $Y=113700 $D=646
M853 2121 1 1 62 pfet_cnrx $X=310740 $Y=135100 $D=646
M854 1 1 117 62 pfet_cnrx $X=311900 $Y=94500 $D=646
M855 1 1 118 62 pfet_cnrx $X=311900 $Y=102900 $D=646
M856 1 1 1 62 pfet_cnrx $X=311900 $Y=148500 $D=646
M857 1 1 1 62 pfet_cnrx $X=313060 $Y=148500 $D=646
M858 1 1 1 62 pfet_cnrx $X=313060 $Y=116100 $D=646
M859 1 1 1 62 pfet_cnrx $X=314220 $Y=116100 $D=646
M860 1 1 500 62 pfet_cnrx $X=314220 $Y=124400 $D=646
M861 1 1 1020 62 pfet_cnrx $X=314220 $Y=156900 $D=646
M862 1638 1 1 62 pfet_cnrx $X=316540 $Y=113700 $D=646
M863 1 1 1 62 pfet_cnrx $X=316540 $Y=148500 $D=646
M864 575 1 1 62 pfet_cnrx $X=316540 $Y=156900 $D=646
M865 1 1 1 62 pfet_cnrx $X=316540 $Y=159300 $D=646
M866 1 1 2121 62 pfet_cnrx $X=316540 $Y=135300 $D=646
M867 1 1 1 62 pfet_cnrx $X=318860 $Y=135300 $D=646
M868 1 1 576 62 pfet_cnrx $X=318860 $Y=159300 $D=646
M869 1 1 272 62 pfet_cnrx $X=321180 $Y=170100 $D=646
M870 794 1 1 62 pfet_cnrx $X=322340 $Y=116100 $D=646
M871 1 1 860 62 pfet_cnrx $X=322340 $Y=148500 $D=646
M872 1642 1 1 62 pfet_cnrx $X=322340 $Y=167600 $D=646
M873 1 1 501 62 pfet_cnrx $X=323500 $Y=156900 $D=646
M874 1 1 81 62 pfet_cnrx $X=323500 $Y=170100 $D=646
M875 1 1 369 62 pfet_cnrx $X=324660 $Y=105300 $D=646
M876 1 1 1 62 pfet_cnrx $X=324660 $Y=170100 $D=646
M877 1 1 1 62 pfet_cnrx $X=326980 $Y=113700 $D=646
M878 1 1 502 62 pfet_cnrx $X=326980 $Y=167700 $D=646
M879 2053 1 1 62 pfet_cnrx $X=329300 $Y=159300 $D=646
M880 1 1 1 62 pfet_cnrx $X=329300 $Y=170100 $D=646
M881 1 1 2123 62 pfet_cnrx $X=330460 $Y=116100 $D=646
M882 437 1 1 62 pfet_cnrx $X=330460 $Y=170100 $D=646
M883 1 1 538 62 pfet_cnrx $X=331620 $Y=105300 $D=646
M884 1 1 751 62 pfet_cnrx $X=331620 $Y=156700 $D=646
M885 1643 1 1 62 pfet_cnrx $X=332780 $Y=167700 $D=646
M886 1646 1 1 62 pfet_cnrx $X=333940 $Y=113700 $D=646
M887 1 1 817 62 pfet_cnrx $X=335100 $Y=126900 $D=646
M888 1 1 438 62 pfet_cnrx $X=335100 $Y=156800 $D=646
M889 1 1 818 62 pfet_cnrx $X=336260 $Y=94500 $D=646
M890 1 1 710 62 pfet_cnrx $X=336260 $Y=102900 $D=646
M891 1 1 421 62 pfet_cnrx $X=336260 $Y=116100 $D=646
M892 577 1 1 62 pfet_cnrx $X=336260 $Y=148500 $D=646
M893 1 1 1 62 pfet_cnrx $X=337420 $Y=124400 $D=646
M894 1 1 2124 62 pfet_cnrx $X=337420 $Y=170100 $D=646
M895 1 1 1 62 pfet_cnrx $X=338580 $Y=148500 $D=646
M896 41 1 1 62 pfet_cnrx $X=338580 $Y=170100 $D=646
M897 1 1 1872 62 pfet_cnrx $X=338580 $Y=159300 $D=646
M898 1 1 430 62 pfet_cnrx $X=340900 $Y=124400 $D=646
M899 1 1 1024 62 pfet_cnrx $X=340900 $Y=135300 $D=646
M900 1 1 1 62 pfet_cnrx $X=340900 $Y=170100 $D=646
M901 1 1 1 62 pfet_cnrx $X=342060 $Y=124400 $D=646
M902 1 1 423 62 pfet_cnrx $X=342060 $Y=126900 $D=646
M903 434 1 1 62 pfet_cnrx $X=342060 $Y=148500 $D=646
M904 432 1 1 62 pfet_cnrx $X=342060 $Y=170100 $D=646
M905 1 1 426 62 pfet_cnrx $X=343220 $Y=167700 $D=646
M906 2054 1 1 62 pfet_cnrx $X=344380 $Y=135300 $D=646
M907 1 1 1 62 pfet_cnrx $X=344380 $Y=148500 $D=646
M908 1 1 504 62 pfet_cnrx $X=344380 $Y=156900 $D=646
M909 1 1 2033 62 pfet_cnrx $X=344380 $Y=159300 $D=646
M910 1 1 1 62 pfet_cnrx $X=345540 $Y=146100 $D=646
M911 1875 1 1 62 pfet_cnrx $X=346700 $Y=137700 $D=646
M912 439 1 1 62 pfet_cnrx $X=346700 $Y=148500 $D=646
M913 1 1 1 62 pfet_cnrx $X=346700 $Y=170100 $D=646
M914 1 1 1 62 pfet_cnrx $X=346700 $Y=167700 $D=646
M915 1 1 1 62 pfet_cnrx $X=347860 $Y=146100 $D=646
M916 1 1 1 62 pfet_cnrx $X=347860 $Y=170100 $D=646
M917 1 1 637 62 pfet_cnrx $X=350180 $Y=94500 $D=646
M918 1 1 862 62 pfet_cnrx $X=350180 $Y=102900 $D=646
M919 1 1 863 62 pfet_cnrx $X=350180 $Y=105300 $D=646
M920 1 1 1 62 pfet_cnrx $X=350180 $Y=159300 $D=646
M921 1 1 45 62 pfet_cnrx $X=350180 $Y=170100 $D=646
M922 1 1 1 62 pfet_cnrx $X=351340 $Y=156900 $D=646
M923 1 1 638 62 pfet_cnrx $X=352500 $Y=116100 $D=646
M924 1 1 1 62 pfet_cnrx $X=352500 $Y=170100 $D=646
M925 1 1 1 62 pfet_cnrx $X=352500 $Y=148500 $D=646
M926 1 1 2034 62 pfet_cnrx $X=352500 $Y=167600 $D=646
M927 1 1 1 62 pfet_cnrx $X=353660 $Y=148500 $D=646
M928 1 1 444 62 pfet_cnrx $X=354820 $Y=156700 $D=646
M929 1 1 640 62 pfet_cnrx $X=355980 $Y=137700 $D=646
M930 1 1 47 62 pfet_cnrx $X=355980 $Y=170100 $D=646
M931 1 1 1877 62 pfet_cnrx $X=357140 $Y=167700 $D=646
M932 2126 1 1 62 pfet_cnrx $X=357140 $Y=159300 $D=646
M933 1 1 1 62 pfet_cnrx $X=358300 $Y=137700 $D=646
M934 1 1 1 62 pfet_cnrx $X=358300 $Y=148500 $D=646
M935 1 1 2127 62 pfet_cnrx $X=358300 $Y=135100 $D=646
M936 1 1 541 62 pfet_cnrx $X=359460 $Y=116100 $D=646
M937 1 1 1 62 pfet_cnrx $X=359460 $Y=148500 $D=646
M938 1 1 641 62 pfet_cnrx $X=360620 $Y=156900 $D=646
M939 1878 1 1 62 pfet_cnrx $X=361780 $Y=167700 $D=646
M940 1 1 1 62 pfet_cnrx $X=362940 $Y=116100 $D=646
M941 1 1 2126 62 pfet_cnrx $X=362940 $Y=159300 $D=646
M942 1 1 865 62 pfet_cnrx $X=364100 $Y=105300 $D=646
M943 1 1 642 62 pfet_cnrx $X=364100 $Y=135300 $D=646
M944 1650 1 1 62 pfet_cnrx $X=364100 $Y=137700 $D=646
M945 2056 1 1 62 pfet_cnrx $X=365260 $Y=113600 $D=646
M946 451 1 1 62 pfet_cnrx $X=366420 $Y=167600 $D=646
M947 1655 1 1 62 pfet_cnrx $X=369900 $Y=102800 $D=646
M948 1657 1 1 62 pfet_cnrx $X=369900 $Y=135300 $D=646
M949 1 1 758 62 pfet_cnrx $X=371060 $Y=159300 $D=646
M950 1 1 449 62 pfet_cnrx $X=374540 $Y=137700 $D=646
M951 2057 1 1 62 pfet_cnrx $X=374540 $Y=170100 $D=646
M952 1 1 713 62 pfet_cnrx $X=375700 $Y=124400 $D=646
M953 1 1 1 62 pfet_cnrx $X=378020 $Y=137700 $D=646
M954 1 1 717 62 pfet_cnrx $X=380340 $Y=156800 $D=646
M955 50 1 1 62 pfet_cnrx $X=380340 $Y=170100 $D=646
M956 2128 1 1 62 pfet_cnrx $X=380340 $Y=167500 $D=646
M957 1 1 1029 62 pfet_cnrx $X=381500 $Y=148500 $D=646
M958 1 1 1 62 pfet_cnrx $X=381500 $Y=159300 $D=646
M959 285 1 1 62 pfet_cnrx $X=384980 $Y=148500 $D=646
M960 1 1 2128 62 pfet_cnrx $X=386140 $Y=167700 $D=646
M961 1 1 509 62 pfet_cnrx $X=387300 $Y=170100 $D=646
M962 1 1 445 62 pfet_cnrx $X=390780 $Y=116100 $D=646
M963 2058 1 1 62 pfet_cnrx $X=390780 $Y=170100 $D=646
M964 1 1 1 62 pfet_cnrx $X=391940 $Y=148500 $D=646
M965 1 1 1 62 pfet_cnrx $X=391940 $Y=167700 $D=646
M966 2129 1 1 62 pfet_cnrx $X=393100 $Y=167500 $D=646
M967 1 1 722 62 pfet_cnrx $X=394260 $Y=146100 $D=646
M968 1 1 1 62 pfet_cnrx $X=395420 $Y=148500 $D=646
M969 1 1 724 62 pfet_cnrx $X=397740 $Y=113700 $D=646
M970 1 1 1031 62 pfet_cnrx $X=397740 $Y=124500 $D=646
M971 1 1 457 62 pfet_cnrx $X=397740 $Y=148500 $D=646
M972 1 1 646 62 pfet_cnrx $X=398900 $Y=126900 $D=646
M973 1 1 1 62 pfet_cnrx $X=400060 $Y=124500 $D=646
M974 1 1 1032 62 pfet_cnrx $X=400060 $Y=137700 $D=646
M975 1 1 959 62 pfet_cnrx $X=401220 $Y=170100 $D=646
M976 459 1 1 62 pfet_cnrx $X=402380 $Y=135200 $D=646
M977 1 1 1 62 pfet_cnrx $X=402380 $Y=137700 $D=646
M978 1 1 1 62 pfet_cnrx $X=404700 $Y=135200 $D=646
M979 454 1 1 62 pfet_cnrx $X=404700 $Y=159300 $D=646
M980 1 1 1 62 pfet_cnrx $X=405860 $Y=124500 $D=646
M981 2131 1 1 62 pfet_cnrx $X=405860 $Y=135100 $D=646
M982 458 1 1 62 pfet_cnrx $X=405860 $Y=167600 $D=646
M983 1 1 759 62 pfet_cnrx $X=407020 $Y=126900 $D=646
M984 510 1 1 62 pfet_cnrx $X=408180 $Y=159300 $D=646
M985 1 1 728 62 pfet_cnrx $X=409340 $Y=148500 $D=646
M986 1663 1 1 62 pfet_cnrx $X=410500 $Y=126900 $D=646
M987 1 1 1803 62 pfet_cnrx $X=410500 $Y=167700 $D=646
M988 1 1 2131 62 pfet_cnrx $X=411660 $Y=135100 $D=646
M989 1 1 1 62 pfet_cnrx $X=412820 $Y=124500 $D=646
M990 1 1 1 62 pfet_cnrx $X=412820 $Y=135300 $D=646
M991 466 1 1 62 pfet_cnrx $X=412820 $Y=148500 $D=646
M992 1 1 1662 62 pfet_cnrx $X=412820 $Y=159300 $D=646
M993 1 1 511 62 pfet_cnrx $X=415140 $Y=126900 $D=646
M994 1 1 1 62 pfet_cnrx $X=417460 $Y=167700 $D=646
M995 1 1 1 62 pfet_cnrx $X=417460 $Y=170100 $D=646
M996 1 1 821 62 pfet_cnrx $X=418620 $Y=146100 $D=646
M997 1 1 455 62 pfet_cnrx $X=418620 $Y=159300 $D=646
M998 1 1 512 62 pfet_cnrx $X=419780 $Y=148500 $D=646
M999 1 1 648 62 pfet_cnrx $X=422100 $Y=116100 $D=646
M1000 1 1 566 62 pfet_cnrx $X=422100 $Y=124500 $D=646
M1001 1 1 1 62 pfet_cnrx $X=422100 $Y=156800 $D=646
M1002 1 1 468 62 pfet_cnrx $X=422100 $Y=159300 $D=646
M1003 1 1 470 62 pfet_cnrx $X=423260 $Y=170100 $D=646
M1004 1 1 545 62 pfet_cnrx $X=424420 $Y=135200 $D=646
M1005 2060 1 1 62 pfet_cnrx $X=427900 $Y=159300 $D=646
M1006 82 1 1 62 pfet_cnrx $X=430220 $Y=170100 $D=646
M1007 1 1 652 62 pfet_cnrx $X=431380 $Y=146100 $D=646
M1008 1 1 1 62 pfet_cnrx $X=432540 $Y=170100 $D=646
M1009 57 1 1 62 pfet_cnrx $X=433700 $Y=159300 $D=646
M1010 462 1 1 62 pfet_cnrx $X=433700 $Y=167600 $D=646
M1011 1 1 1 62 pfet_cnrx $X=434860 $Y=105300 $D=646
M1012 1 1 1 62 pfet_cnrx $X=434860 $Y=170100 $D=646
M1013 1 1 729 62 pfet_cnrx $X=436020 $Y=137700 $D=646
M1014 1 1 1 62 pfet_cnrx $X=436020 $Y=159300 $D=646
M1015 1 1 83 62 pfet_cnrx $X=437180 $Y=170100 $D=646
M1016 1 1 1 62 pfet_cnrx $X=438340 $Y=94500 $D=646
M1017 1 1 1 62 pfet_cnrx $X=438340 $Y=105300 $D=646
M1018 1 1 1 62 pfet_cnrx $X=438340 $Y=116100 $D=646
M1019 1 1 570 62 pfet_cnrx $X=438340 $Y=126900 $D=646
M1020 1 1 1 62 pfet_cnrx $X=438340 $Y=137700 $D=646
M1021 1 1 731 62 pfet_cnrx $X=438340 $Y=148500 $D=646
M1022 1 1 1 62 pfet_cnrx $X=438340 $Y=159300 $D=646
M1023 1 1 1 62 pfet_cnrx $X=438340 $Y=170100 $D=646
M1024 1 1 2133 62 pfet_cnrx $X=440660 $Y=167600 $D=646
M1025 1 1 653 62 pfet_cnrx $X=445300 $Y=146100 $D=646
M1026 1 1 1 62 pfet_cnrx $X=445300 $Y=167600 $D=646
M1027 1668 1 1 62 pfet_cnrx $X=448780 $Y=126900 $D=646
M1028 1669 1 1 62 pfet_cnrx $X=448780 $Y=137700 $D=646
M1029 1 1 1 62 pfet_cnrx $X=448780 $Y=148500 $D=646
M1030 1 1 1 62 pfet_cnrx $X=448780 $Y=159300 $D=646
M1031 1 1 1 62 pfet_cnrx $X=448780 $Y=170100 $D=646
M1032 1 1 732 62 pfet_cnrx $X=455740 $Y=156900 $D=646
M1033 1 1 474 62 pfet_cnrx $X=455740 $Y=159300 $D=646
M1034 1 1 1 62 pfet_cnrx $X=456900 $Y=170100 $D=646
M1035 1 1 1 62 pfet_cnrx $X=465020 $Y=170100 $D=646
M1036 1671 1 1 62 pfet_cnrx $X=466180 $Y=137700 $D=646
M1037 1 1 60 62 pfet_cnrx $X=469660 $Y=159300 $D=646
M1038 1673 1 1 62 pfet_cnrx $X=469660 $Y=170100 $D=646
M1039 1 1 516 62 pfet_cnrx $X=474300 $Y=170100 $D=646
M1040 1 1 473 62 pfet_cnrx $X=476620 $Y=159300 $D=646
M1041 1884 1 1 62 pfet_cnrx $X=476620 $Y=170100 $D=646
M1042 1 1 610 62 pfet_cnrx $X=480100 $Y=170100 $D=646
M1043 1 1 1 62 pfet_cnrx $X=482420 $Y=170100 $D=646
M1044 1 1 1 62 pfet_cnrx $X=564780 $Y=135300 $D=646
M1045 1 1 1 62 pfet_cnrx $X=565940 $Y=167700 $D=646
M1046 1 1 1 62 pfet_cnrx $X=568260 $Y=103000 $D=646
M1047 1 1 1 62 pfet_cnrx $X=568260 $Y=113800 $D=646
M1048 1 1 1 62 pfet_cnrx $X=568260 $Y=124600 $D=646
M1049 1 1 1 62 pfet_cnrx $X=568260 $Y=135400 $D=646
M1050 1 1 1 62 pfet_cnrx $X=568260 $Y=146200 $D=646
M1051 1 1 1 62 pfet_cnrx $X=568260 $Y=157000 $D=646
M1052 1 1 1 62 pfet_cnrx $X=568260 $Y=167800 $D=646
M1053 1 1 1 62 pfet_cnrx $X=575220 $Y=148500 $D=646
M1054 1 1 1 62 pfet_cnrx $X=575220 $Y=170100 $D=646
M1055 1 1 1 62 pfet_cnrx $X=576380 $Y=126900 $D=646
M1056 1 1 1 62 pfet_cnrx $X=578700 $Y=126900 $D=646
M1057 1 1 1 62 pfet_cnrx $X=578700 $Y=148500 $D=646
M1058 1 1 1 62 pfet_cnrx $X=578700 $Y=170100 $D=646
X1059 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 99400 1 0 $X=578260 $Y=93700
X1060 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 99400 0 0 $X=578260 $Y=99100
X1061 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 110200 1 0 $X=578260 $Y=104500
X1062 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 110200 0 0 $X=578260 $Y=109900
X1063 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 121000 1 0 $X=578260 $Y=115300
X1064 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 121000 0 0 $X=578260 $Y=120700
X1065 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 131800 1 0 $X=578260 $Y=126100
X1066 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 131800 0 0 $X=578260 $Y=131500
X1067 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 142600 1 0 $X=578260 $Y=136900
X1068 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 142600 0 0 $X=578260 $Y=142300
X1069 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 153400 1 0 $X=578260 $Y=147700
X1070 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 153400 0 0 $X=578260 $Y=153100
X1071 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 164200 1 0 $X=578260 $Y=158500
X1072 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 164200 0 0 $X=578260 $Y=163900
X1073 62 1 62 62 UDB116SVT24_CAPR9_1 $T=578840 175000 1 0 $X=578260 $Y=169300
X1074 62 1 62 UDB116SVT24_FILL2 $T=96280 142600 0 0 $X=95700 $Y=142300
X1075 62 1 62 UDB116SVT24_FILL2 $T=96280 164200 1 0 $X=95700 $Y=158500
X1076 62 1 62 UDB116SVT24_FILL2 $T=118320 175000 1 0 $X=117740 $Y=169300
X1077 62 1 62 UDB116SVT24_FILL2 $T=122960 99400 1 0 $X=122380 $Y=93700
X1078 62 1 62 UDB116SVT24_FILL2 $T=129920 175000 1 0 $X=129340 $Y=169300
X1079 62 1 62 UDB116SVT24_FILL2 $T=134560 142600 1 0 $X=133980 $Y=136900
X1080 62 1 62 UDB116SVT24_FILL2 $T=135720 131800 0 0 $X=135140 $Y=131500
X1081 62 1 62 UDB116SVT24_FILL2 $T=135720 153400 0 0 $X=135140 $Y=153100
X1082 62 1 62 UDB116SVT24_FILL2 $T=143840 175000 1 0 $X=143260 $Y=169300
X1083 62 1 62 UDB116SVT24_FILL2 $T=156600 131800 0 0 $X=156020 $Y=131500
X1084 62 1 62 UDB116SVT24_FILL2 $T=167040 131800 1 0 $X=166460 $Y=126100
X1085 62 1 62 UDB116SVT24_FILL2 $T=167040 131800 0 0 $X=166460 $Y=131500
X1086 62 1 62 UDB116SVT24_FILL2 $T=169360 153400 1 0 $X=168780 $Y=147700
X1087 62 1 62 UDB116SVT24_FILL2 $T=170520 164200 1 0 $X=169940 $Y=158500
X1088 62 1 62 UDB116SVT24_FILL2 $T=171680 121000 1 0 $X=171100 $Y=115300
X1089 62 1 62 UDB116SVT24_FILL2 $T=183280 175000 1 0 $X=182700 $Y=169300
X1090 62 1 62 UDB116SVT24_FILL2 $T=198360 110200 1 0 $X=197780 $Y=104500
X1091 62 1 62 UDB116SVT24_FILL2 $T=211120 121000 0 0 $X=210540 $Y=120700
X1092 62 1 62 UDB116SVT24_FILL2 $T=211120 164200 0 0 $X=210540 $Y=163900
X1093 62 1 62 UDB116SVT24_FILL2 $T=226200 131800 1 0 $X=225620 $Y=126100
X1094 62 1 62 UDB116SVT24_FILL2 $T=236640 142600 0 0 $X=236060 $Y=142300
X1095 62 1 62 UDB116SVT24_FILL2 $T=236640 175000 1 0 $X=236060 $Y=169300
X1096 62 1 62 UDB116SVT24_FILL2 $T=249400 131800 0 0 $X=248820 $Y=131500
X1097 62 1 62 UDB116SVT24_FILL2 $T=254040 164200 1 0 $X=253460 $Y=158500
X1098 62 1 62 UDB116SVT24_FILL2 $T=270280 153400 1 0 $X=269700 $Y=147700
X1099 62 1 62 UDB116SVT24_FILL2 $T=286520 164200 0 0 $X=285940 $Y=163900
X1100 62 1 62 UDB116SVT24_FILL2 $T=287680 131800 1 0 $X=287100 $Y=126100
X1101 62 1 62 UDB116SVT24_FILL2 $T=303920 110200 0 0 $X=303340 $Y=109900
X1102 62 1 62 UDB116SVT24_FILL2 $T=305080 121000 1 0 $X=304500 $Y=115300
X1103 62 1 62 UDB116SVT24_FILL2 $T=305080 153400 1 0 $X=304500 $Y=147700
X1104 62 1 62 UDB116SVT24_FILL2 $T=309720 110200 0 0 $X=309140 $Y=109900
X1105 62 1 62 UDB116SVT24_FILL2 $T=314360 153400 0 0 $X=313780 $Y=153100
X1106 62 1 62 UDB116SVT24_FILL2 $T=316680 131800 0 0 $X=316100 $Y=131500
X1107 62 1 62 UDB116SVT24_FILL2 $T=319000 164200 1 0 $X=318420 $Y=158500
X1108 62 1 62 UDB116SVT24_FILL2 $T=327120 110200 0 0 $X=326540 $Y=109900
X1109 62 1 62 UDB116SVT24_FILL2 $T=327120 164200 0 0 $X=326540 $Y=163900
X1110 62 1 62 UDB116SVT24_FILL2 $T=344520 153400 1 0 $X=343940 $Y=147700
X1111 62 1 62 UDB116SVT24_FILL2 $T=344520 164200 1 0 $X=343940 $Y=158500
X1112 62 1 62 UDB116SVT24_FILL2 $T=345680 142600 0 0 $X=345100 $Y=142300
X1113 62 1 62 UDB116SVT24_FILL2 $T=350320 175000 1 0 $X=349740 $Y=169300
X1114 62 1 62 UDB116SVT24_FILL2 $T=356120 142600 1 0 $X=355540 $Y=136900
X1115 62 1 62 UDB116SVT24_FILL2 $T=364240 131800 0 0 $X=363660 $Y=131500
X1116 62 1 62 UDB116SVT24_FILL2 $T=379320 164200 1 0 $X=378740 $Y=158500
X1117 62 1 62 UDB116SVT24_FILL2 $T=386280 164200 0 0 $X=385700 $Y=163900
X1118 62 1 62 UDB116SVT24_FILL2 $T=397880 121000 0 0 $X=397300 $Y=120700
X1119 62 1 62 UDB116SVT24_FILL2 $T=400200 142600 1 0 $X=399620 $Y=136900
X1120 62 1 62 UDB116SVT24_FILL2 $T=401360 175000 1 0 $X=400780 $Y=169300
X1121 62 1 62 UDB116SVT24_FILL2 $T=432680 175000 1 0 $X=432100 $Y=169300
X1122 62 1 62 UDB116SVT24_FILL2 $T=436160 142600 1 0 $X=435580 $Y=136900
X1123 62 1 62 UDB116SVT24_FILL2 $T=436160 164200 1 0 $X=435580 $Y=158500
X1124 62 1 62 UDB116SVT24_FILL2 $T=448920 175000 1 0 $X=448340 $Y=169300
X1125 62 1 62 UDB116SVT24_FILL2 $T=474440 175000 1 0 $X=473860 $Y=169300
X1126 62 1 62 UDB116SVT24_FILL2 $T=480240 175000 1 0 $X=479660 $Y=169300
X1127 62 1 62 UDB116SVT24_FILL2 $T=566080 164200 0 0 $X=565500 $Y=163900
X1128 62 1 62 UDB116SVT24_FILL2 $T=576520 131800 1 0 $X=575940 $Y=126100
X1129 62 UDB116SVT24_TAPSS $T=49880 99400 1 0 $X=49300 $Y=93700
X1130 62 UDB116SVT24_TAPSS $T=49880 110200 1 0 $X=49300 $Y=104500
X1131 62 UDB116SVT24_TAPSS $T=49880 121000 1 0 $X=49300 $Y=115300
X1132 62 UDB116SVT24_TAPSS $T=49880 131800 1 0 $X=49300 $Y=126100
X1133 62 UDB116SVT24_TAPSS $T=49880 142600 1 0 $X=49300 $Y=136900
X1134 62 UDB116SVT24_TAPSS $T=49880 153400 1 0 $X=49300 $Y=147700
X1135 62 UDB116SVT24_TAPSS $T=49880 164200 1 0 $X=49300 $Y=158500
X1136 62 UDB116SVT24_TAPSS $T=49880 175000 1 0 $X=49300 $Y=169300
X1137 62 UDB116SVT24_TAPSS $T=238960 99400 0 0 $X=238380 $Y=99100
X1138 62 UDB116SVT24_TAPSS $T=238960 110200 0 0 $X=238380 $Y=109900
X1139 62 UDB116SVT24_TAPSS $T=238960 121000 0 0 $X=238380 $Y=120700
X1140 62 UDB116SVT24_TAPSS $T=238960 131800 0 0 $X=238380 $Y=131500
X1141 62 UDB116SVT24_TAPSS $T=238960 142600 0 0 $X=238380 $Y=142300
X1142 62 UDB116SVT24_TAPSS $T=238960 153400 0 0 $X=238380 $Y=153100
X1143 62 UDB116SVT24_TAPSS $T=238960 164200 0 0 $X=238380 $Y=163900
X1144 62 UDB116SVT24_TAPSS $T=438480 99400 1 0 $X=437900 $Y=93700
X1145 62 UDB116SVT24_TAPSS $T=438480 110200 1 0 $X=437900 $Y=104500
X1146 62 UDB116SVT24_TAPSS $T=438480 121000 1 0 $X=437900 $Y=115300
X1147 62 UDB116SVT24_TAPSS $T=438480 131800 1 0 $X=437900 $Y=126100
X1148 62 UDB116SVT24_TAPSS $T=438480 142600 1 0 $X=437900 $Y=136900
X1149 62 UDB116SVT24_TAPSS $T=438480 153400 1 0 $X=437900 $Y=147700
X1150 62 UDB116SVT24_TAPSS $T=438480 164200 1 0 $X=437900 $Y=158500
X1151 62 UDB116SVT24_TAPSS $T=438480 175000 1 0 $X=437900 $Y=169300
X1152 62 UDB116SVT24_TAPSS $T=568400 99400 0 0 $X=567820 $Y=99100
X1153 62 UDB116SVT24_TAPSS $T=568400 110200 0 0 $X=567820 $Y=109900
X1154 62 UDB116SVT24_TAPSS $T=568400 121000 0 0 $X=567820 $Y=120700
X1155 62 UDB116SVT24_TAPSS $T=568400 131800 0 0 $X=567820 $Y=131500
X1156 62 UDB116SVT24_TAPSS $T=568400 142600 0 0 $X=567820 $Y=142300
X1157 62 UDB116SVT24_TAPSS $T=568400 153400 0 0 $X=567820 $Y=153100
X1158 62 UDB116SVT24_TAPSS $T=568400 164200 0 0 $X=567820 $Y=163900
X1231 62 1 62 UDB116SVT24_FILL3 $T=103240 131800 0 0 $X=102660 $Y=131500
X1232 62 1 62 UDB116SVT24_FILL3 $T=110200 131800 0 0 $X=109620 $Y=131500
X1233 62 1 62 UDB116SVT24_FILL3 $T=118320 153400 0 0 $X=117740 $Y=153100
X1234 62 1 62 UDB116SVT24_FILL3 $T=120640 142600 0 0 $X=120060 $Y=142300
X1235 62 1 62 UDB116SVT24_FILL3 $T=120640 153400 1 0 $X=120060 $Y=147700
X1236 62 1 62 UDB116SVT24_FILL3 $T=134560 164200 1 0 $X=133980 $Y=158500
X1237 62 1 62 UDB116SVT24_FILL3 $T=143840 164200 0 0 $X=143260 $Y=163900
X1238 62 1 62 UDB116SVT24_FILL3 $T=145000 121000 1 0 $X=144420 $Y=115300
X1239 62 1 62 UDB116SVT24_FILL3 $T=146160 142600 0 0 $X=145580 $Y=142300
X1240 62 1 62 UDB116SVT24_FILL3 $T=154280 121000 0 0 $X=153700 $Y=120700
X1241 62 1 62 UDB116SVT24_FILL3 $T=168200 142600 1 0 $X=167620 $Y=136900
X1242 62 1 62 UDB116SVT24_FILL3 $T=172840 110200 1 0 $X=172260 $Y=104500
X1243 62 1 62 UDB116SVT24_FILL3 $T=193720 175000 1 0 $X=193140 $Y=169300
X1244 62 1 62 UDB116SVT24_FILL3 $T=196040 121000 1 0 $X=195460 $Y=115300
X1245 62 1 62 UDB116SVT24_FILL3 $T=221560 164200 0 0 $X=220980 $Y=163900
X1246 62 1 62 UDB116SVT24_FILL3 $T=229680 164200 1 0 $X=229100 $Y=158500
X1247 62 1 62 UDB116SVT24_FILL3 $T=235480 121000 0 0 $X=234900 $Y=120700
X1248 62 1 62 UDB116SVT24_FILL3 $T=256360 164200 1 0 $X=255780 $Y=158500
X1249 62 1 62 UDB116SVT24_FILL3 $T=261000 175000 1 0 $X=260420 $Y=169300
X1250 62 1 62 UDB116SVT24_FILL3 $T=266800 175000 1 0 $X=266220 $Y=169300
X1251 62 1 62 UDB116SVT24_FILL3 $T=299280 142600 0 0 $X=298700 $Y=142300
X1252 62 1 62 UDB116SVT24_FILL3 $T=319000 121000 1 0 $X=318420 $Y=115300
X1253 62 1 62 UDB116SVT24_FILL3 $T=338720 153400 1 0 $X=338140 $Y=147700
X1254 62 1 62 UDB116SVT24_FILL3 $T=341040 131800 0 0 $X=340460 $Y=131500
X1255 62 1 62 UDB116SVT24_FILL3 $T=343360 164200 0 0 $X=342780 $Y=163900
X1256 62 1 62 UDB116SVT24_FILL3 $T=359600 121000 1 0 $X=359020 $Y=115300
X1257 62 1 62 UDB116SVT24_FILL3 $T=374680 142600 1 0 $X=374100 $Y=136900
X1258 62 1 62 UDB116SVT24_FILL3 $T=381640 153400 1 0 $X=381060 $Y=147700
X1259 62 1 62 UDB116SVT24_FILL3 $T=387440 175000 1 0 $X=386860 $Y=169300
X1260 62 1 62 UDB116SVT24_FILL3 $T=392080 153400 1 0 $X=391500 $Y=147700
X1261 62 1 62 UDB116SVT24_FILL3 $T=406000 121000 0 0 $X=405420 $Y=120700
X1262 62 1 62 UDB116SVT24_FILL3 $T=409480 153400 1 0 $X=408900 $Y=147700
X1263 62 1 62 UDB116SVT24_FILL3 $T=410640 164200 0 0 $X=410060 $Y=163900
X1264 62 1 62 UDB116SVT24_FILL3 $T=410640 175000 1 0 $X=410060 $Y=169300
X1265 62 1 62 UDB116SVT24_FILL3 $T=426880 175000 1 0 $X=426300 $Y=169300
X1266 62 1 62 UDB116SVT24_FILL3 $T=435000 110200 1 0 $X=434420 $Y=104500
X1267 62 1 62 UDB116SVT24_FILL3 $T=564920 131800 0 0 $X=564340 $Y=131500
X1268 62 1 62 UDB116SVT24_FILL3 $T=575360 153400 1 0 $X=574780 $Y=147700
X1269 62 1 62 UDB116SVT24_FILL3 $T=575360 175000 1 0 $X=574780 $Y=169300
X1270 62 1 62 UDB116SVT24_FILL12 $T=49880 99400 0 0 $X=49300 $Y=99100
X1271 62 1 62 UDB116SVT24_FILL12 $T=73080 99400 1 0 $X=72500 $Y=93700
X1272 62 1 62 UDB116SVT24_FILL12 $T=504600 110200 1 0 $X=504020 $Y=104500
X1273 62 1 62 UDB116SVT24_FILL12 $T=551000 131800 0 0 $X=550420 $Y=131500
X1274 62 1 62 UDB116SVT24_FILL12 $T=552160 164200 0 0 $X=551580 $Y=163900
X1275 62 1 62 UDB116SVT24_FILL12 $T=562600 131800 1 0 $X=562020 $Y=126100
X1276 62 1 62 UDB116SVT24_FILL12 $T=563760 142600 1 0 $X=563180 $Y=136900
X1277 62 1 62 UDB116SVT24_FILL6 $T=60320 99400 1 0 $X=59740 $Y=93700
X1278 62 1 62 UDB116SVT24_FILL6 $T=412960 110200 1 0 $X=412380 $Y=104500
X1279 62 1 62 UDB116SVT24_FILL6 $T=459360 142600 1 0 $X=458780 $Y=136900
X1280 62 1 62 UDB116SVT24_FILL6 $T=490680 131800 1 0 $X=490100 $Y=126100
X1281 62 1 62 UDB116SVT24_FILL6 $T=560280 153400 0 0 $X=559700 $Y=153100
X1282 62 1 62 UDB116SVT24_FILL6 $T=561440 110200 0 0 $X=560860 $Y=109900
X1283 62 1 62 UDB116SVT24_FILL16 $T=486040 110200 1 0 $X=485460 $Y=104500
X1284 62 1 62 UDB116SVT24_FILL16 $T=532440 131800 0 0 $X=531860 $Y=131500
X1285 62 1 62 UDB116SVT24_FILL16 $T=533600 164200 0 0 $X=533020 $Y=163900
X1286 62 1 62 UDB116SVT24_FILL16 $T=542880 110200 0 0 $X=542300 $Y=109900
X1287 62 1 62 UDB116SVT24_FILL16 $T=544040 131800 1 0 $X=543460 $Y=126100
X1288 62 1 62 UDB116SVT24_FILL16 $T=545200 142600 1 0 $X=544620 $Y=136900
X1289 62 1 62 UDB116SVT24_FILL16 $T=545200 142600 0 0 $X=544620 $Y=142300
X1290 62 1 62 UDB116SVT24_FILL16 $T=549840 99400 0 0 $X=549260 $Y=99100
X1291 62 1 62 UDB116SVT24_FILL16 $T=554480 110200 1 0 $X=553900 $Y=104500
X1292 62 1 62 UDB116SVT24_FILL16 $T=556800 153400 1 0 $X=556220 $Y=147700
X1293 62 1 62 UDB116SVT24_FILL16 $T=556800 175000 1 0 $X=556220 $Y=169300
X1294 62 1 62 UDB116SVT24_FILL16 $T=559120 164200 1 0 $X=558540 $Y=158500
X1295 62 1 62 UDB116SVT24_FILL16 $T=560280 99400 1 0 $X=559700 $Y=93700
X1296 62 1 62 UDB116SVT24_FILL8 $T=425720 110200 1 0 $X=425140 $Y=104500
X1297 62 1 62 UDB116SVT24_FILL8 $T=428040 99400 1 0 $X=427460 $Y=93700
X1298 62 1 62 UDB116SVT24_FILL8 $T=429200 121000 1 0 $X=428620 $Y=115300
X1299 62 1 62 UDB116SVT24_FILL8 $T=523160 121000 1 0 $X=522580 $Y=115300
X1300 62 1 62 UDB116SVT24_FILL8 $T=559120 121000 0 0 $X=558540 $Y=120700
X1301 62 1 62 UDB116SVT24_FILL32 $T=390920 99400 1 0 $X=390340 $Y=93700
X1302 62 1 62 UDB116SVT24_FILL32 $T=448920 110200 1 0 $X=448340 $Y=104500
X1303 62 1 62 UDB116SVT24_FILL32 $T=453560 131800 1 0 $X=452980 $Y=126100
X1304 62 1 62 UDB116SVT24_FILL32 $T=496480 164200 0 0 $X=495900 $Y=163900
X1305 62 1 62 UDB116SVT24_FILL32 $T=505760 110200 0 0 $X=505180 $Y=109900
X1306 62 1 62 UDB116SVT24_FILL32 $T=523160 99400 1 0 $X=522580 $Y=93700
X1307 62 1 62 UDB116SVT24_DCAP_ECOCT_16 $T=484880 121000 1 180 $X=437900 $Y=120700
X1308 62 1 62 UDB116SVT24_DCAP_ECOCT_16 $T=497640 131800 1 0 $X=497060 $Y=126100
X1309 62 1 62 UDB116SVT24_DCAP_ECOCT_16 $T=532440 121000 1 0 $X=531860 $Y=115300
X1310 62 1 62 UDB116SVT24_FILL64 $T=401360 99400 0 0 $X=400780 $Y=99100
X1311 62 1 62 UDB116SVT24_FILL64 $T=431520 110200 0 0 $X=430940 $Y=109900
X1312 62 1 62 UDB116SVT24_FILL64 $T=448920 99400 1 0 $X=448340 $Y=93700
X1313 62 1 62 UDB116SVT24_FILL64 $T=448920 121000 1 0 $X=448340 $Y=115300
X1314 62 1 62 UDB116SVT24_FILL64 $T=458200 131800 0 0 $X=457620 $Y=131500
X1315 62 1 62 UDB116SVT24_FILL64 $T=470960 142600 1 0 $X=470380 $Y=136900
X1316 62 1 62 UDB116SVT24_FILL64 $T=470960 142600 0 0 $X=470380 $Y=142300
X1317 62 1 62 UDB116SVT24_FILL64 $T=475600 99400 0 0 $X=475020 $Y=99100
X1318 62 1 62 UDB116SVT24_FILL64 $T=482560 153400 1 0 $X=481980 $Y=147700
X1319 62 1 62 UDB116SVT24_FILL64 $T=482560 175000 1 0 $X=481980 $Y=169300
X1320 62 1 62 UDB116SVT24_FILL64 $T=484880 121000 0 0 $X=484300 $Y=120700
X1321 62 1 62 UDB116SVT24_FILL64 $T=484880 164200 1 0 $X=484300 $Y=158500
X1322 62 1 62 UDB116SVT24_FILL64 $T=486040 153400 0 0 $X=485460 $Y=153100
X1323 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 99400 1 0 $X=39440 $Y=93700
X1324 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 99400 0 0 $X=39440 $Y=99100
X1325 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 110200 1 0 $X=39440 $Y=104500
X1326 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 110200 0 0 $X=39440 $Y=109900
X1327 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 121000 1 0 $X=39440 $Y=115300
X1328 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 121000 0 0 $X=39440 $Y=120700
X1329 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 131800 1 0 $X=39440 $Y=126100
X1330 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 131800 0 0 $X=39440 $Y=131500
X1331 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 142600 1 0 $X=39440 $Y=136900
X1332 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 142600 0 0 $X=39440 $Y=142300
X1333 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 153400 1 0 $X=39440 $Y=147700
X1334 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 153400 0 0 $X=39440 $Y=153100
X1335 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 164200 1 0 $X=39440 $Y=158500
X1336 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 164200 0 0 $X=39440 $Y=163900
X1337 62 1 62 62 UDB116SVT24_CAPL9_1 $T=39440 175000 1 0 $X=39440 $Y=169300
X1338 62 1 62 UDB116SVT24_FILL5 $T=73080 110200 1 0 $X=72500 $Y=104500
X1339 62 1 62 UDB116SVT24_FILL5 $T=77720 99400 0 0 $X=77140 $Y=99100
X1340 62 1 62 UDB116SVT24_FILL5 $T=251720 110200 1 0 $X=251140 $Y=104500
X1341 62 1 62 UDB116SVT24_FILL5 $T=279560 110200 1 0 $X=278980 $Y=104500
X1342 62 1 62 UDB116SVT24_FILL5 $T=359600 110200 0 0 $X=359020 $Y=109900
X1343 62 1 62 UDB116SVT24_FILL5 $T=364240 99400 0 0 $X=363660 $Y=99100
X1344 62 1 62 UDB116SVT24_FILL5 $T=408320 153400 0 0 $X=407740 $Y=153100
X1345 62 1 62 UDB116SVT24_FILL5 $T=573040 110200 1 0 $X=572460 $Y=104500
X1346 62 1 62 UDB116SVT24_DCAP_ECOCT_12 $T=519680 110200 1 0 $X=519100 $Y=104500
X1347 1 48 444 445 62 62 UDB116SVT24_NR2_MM_0P75 $T=351480 153400 0 0 $X=350900 $Y=153100
X1348 383 380 1 931 2115 930 62 62 UDB116SVT24_AOI21_MM_1 $T=272600 153400 0 0 $X=272020 $Y=153100
X1349 427 39 1 272 2122 700 62 62 UDB116SVT24_AOI21_MM_1 $T=316680 175000 1 0 $X=316100 $Y=169300
X1350 457 53 1 959 2130 782 62 62 UDB116SVT24_AOI21_MM_1 $T=396720 175000 1 0 $X=396140 $Y=169300
X1351 462 466 1 456 2132 461 62 62 UDB116SVT24_AOI21_MM_1 $T=408320 153400 1 180 $X=403100 $Y=153100
X1352 62 1 62 UDB116SVT24_FILL4 $T=175160 131800 0 0 $X=174580 $Y=131500
X1353 62 1 62 UDB116SVT24_FILL4 $T=185600 131800 0 0 $X=185020 $Y=131500
X1354 62 1 62 UDB116SVT24_FILL4 $T=267960 153400 0 0 $X=267380 $Y=153100
X1355 62 1 62 UDB116SVT24_FILL4 $T=279560 110200 0 0 $X=278980 $Y=109900
X1356 62 1 62 UDB116SVT24_FILL4 $T=280720 153400 1 0 $X=280140 $Y=147700
X1357 62 1 62 UDB116SVT24_FILL4 $T=298120 131800 0 0 $X=297540 $Y=131500
X1358 62 1 62 UDB116SVT24_FILL4 $T=370040 175000 1 0 $X=369460 $Y=169300
X1359 62 1 62 UDB116SVT24_FILL4 $T=401360 164200 0 0 $X=400780 $Y=163900
X1360 62 1 62 UDB116SVT24_FILL4 $T=440800 164200 0 0 $X=440220 $Y=163900
X1361 62 1 62 UDB116SVT24_FILL4 $T=563760 142600 0 0 $X=563180 $Y=142300
X1362 1 350 475 25 62 62 UDB116SVT24_NR2_0P75 $T=199520 121000 0 0 $X=198940 $Y=120700
X1363 1 356 476 25 62 62 UDB116SVT24_NR2_0P75 $T=203000 131800 0 0 $X=202420 $Y=131500
X1364 1 352 477 25 62 62 UDB116SVT24_NR2_0P75 $T=207640 121000 0 0 $X=207060 $Y=120700
X1365 1 359 478 25 62 62 UDB116SVT24_NR2_0P75 $T=216920 153400 1 0 $X=216340 $Y=147700
X1366 1 32 409 414 62 62 UDB116SVT24_NR2_0P75 $T=298120 153400 1 0 $X=297540 $Y=147700
X1367 1 32 418 413 62 62 UDB116SVT24_NR2_0P75 $T=306240 110200 0 0 $X=305660 $Y=109900
X1368 1 32 430 423 62 62 UDB116SVT24_NR2_0P75 $T=337560 121000 0 0 $X=336980 $Y=120700
X1369 1 432 448 48 62 62 UDB116SVT24_NR2_0P75 $T=348000 142600 0 0 $X=347420 $Y=142300
X1370 1 446 47 444 62 62 UDB116SVT24_NR2_0P75 $T=352640 175000 1 0 $X=352060 $Y=169300
X1371 1 458 454 461 62 62 UDB116SVT24_NR2_0P75 $T=408320 164200 0 180 $X=404260 $Y=158500
X1372 1 56 468 57 62 62 UDB116SVT24_NR2_0P75 $T=418760 164200 1 0 $X=418180 $Y=158500
X1373 369 26 62 1 363 62 UDB116SVT24_AN2_MM_1 $T=237800 153400 1 180 $X=231420 $Y=153100
X1374 62 26 63 29 1 62 UDB116SVT24_ND2_MM_0P75 $T=233160 164200 1 0 $X=232580 $Y=158500
X1375 62 416 415 413 1 62 UDB116SVT24_ND2_MM_0P75 $T=296960 121000 1 180 $X=292900 $Y=120700
X1376 62 32 479 37 1 62 UDB116SVT24_ND2_MM_0P75 $T=313200 153400 1 0 $X=312620 $Y=147700
X1377 62 42 429 43 1 62 UDB116SVT24_ND2_MM_0P75 $T=329440 164200 0 0 $X=328860 $Y=163900
X1378 62 35 480 423 1 62 UDB116SVT24_ND2_MM_0P75 $T=336400 121000 1 0 $X=335820 $Y=115300
X1379 62 441 446 442 1 62 UDB116SVT24_ND2_MM_0P75 $T=346840 164200 1 0 $X=346260 $Y=158500
X1380 62 449 443 48 1 62 UDB116SVT24_ND2_MM_0P75 $T=370040 131800 1 180 $X=365980 $Y=131500
X1381 62 454 452 455 1 62 UDB116SVT24_ND2_MM_0P75 $T=388600 164200 0 0 $X=388020 $Y=163900
X1382 62 460 461 463 1 62 UDB116SVT24_ND2_MM_0P75 $T=407160 131800 1 0 $X=406580 $Y=126100
X1383 62 464 481 463 1 62 UDB116SVT24_ND2_MM_0P75 $T=412960 121000 1 180 $X=408900 $Y=120700
X1384 62 468 64 465 1 62 UDB116SVT24_ND2_MM_0P75 $T=417600 164200 1 180 $X=413540 $Y=163900
X1385 62 53 467 468 1 62 UDB116SVT24_ND2_MM_0P75 $T=414120 175000 1 0 $X=413540 $Y=169300
X1386 62 57 469 53 1 62 UDB116SVT24_ND2_MM_0P75 $T=426880 175000 0 180 $X=422820 $Y=169300
X1387 415 32 406 62 933 934 1 62 UDB116SVT24_OAI31_1 $T=299280 110200 1 180 $X=292900 $Y=109900
X1388 742 417 33 62 937 936 1 62 UDB116SVT24_OAI31_1 $T=299280 142600 1 0 $X=298700 $Y=136900
X1389 576 39 38 62 943 49 1 62 UDB116SVT24_OAI31_1 $T=322480 164200 1 180 $X=316100 $Y=163900
X1390 480 32 421 62 939 944 1 62 UDB116SVT24_OAI31_1 $T=321320 110200 0 0 $X=320740 $Y=109900
X1391 577 434 432 62 947 781 1 62 UDB116SVT24_OAI31_1 $T=335240 153400 0 180 $X=328860 $Y=147700
X1392 443 432 450 62 953 951 1 62 UDB116SVT24_OAI31_1 $T=358440 142600 1 0 $X=357860 $Y=136900
X1393 463 459 458 62 963 481 1 62 UDB116SVT24_OAI31_1 $T=406000 121000 1 180 $X=399620 $Y=120700
X1394 54 59 60 62 970 971 1 62 UDB116SVT24_OAI31_1 $T=464000 175000 0 180 $X=457620 $Y=169300
X1395 171 1566 1 62 482 62 UDB116SVT24_BUF_L_1 $T=49880 110200 0 0 $X=49300 $Y=109900
X1396 482 1568 1 62 65 62 UDB116SVT24_BUF_L_1 $T=49880 121000 0 0 $X=49300 $Y=120700
X1397 176 1570 1 62 66 62 UDB116SVT24_BUF_L_1 $T=78880 110200 1 0 $X=78300 $Y=104500
X1398 677 1572 1 62 483 62 UDB116SVT24_BUF_L_1 $T=83520 99400 0 0 $X=82940 $Y=99100
X1399 886 1575 1 62 484 62 UDB116SVT24_BUF_L_1 $T=124120 164200 1 0 $X=123540 $Y=158500
X1400 888 1578 1 62 67 62 UDB116SVT24_BUF_L_1 $T=125280 175000 1 0 $X=124700 $Y=169300
X1401 783 1580 1 62 485 62 UDB116SVT24_BUF_L_1 $T=129920 131800 1 0 $X=129340 $Y=126100
X1402 893 1583 1 62 486 62 UDB116SVT24_BUF_L_1 $T=131080 110200 0 0 $X=130500 $Y=109900
X1403 895 1586 1 62 487 62 UDB116SVT24_BUF_L_1 $T=131080 131800 0 0 $X=130500 $Y=131500
X1404 901 1588 1 62 488 62 UDB116SVT24_BUF_L_1 $T=143840 164200 1 0 $X=143260 $Y=158500
X1405 679 1591 1 62 489 62 UDB116SVT24_BUF_L_1 $T=161240 121000 1 0 $X=160660 $Y=115300
X1406 626 1594 1 62 490 62 UDB116SVT24_BUF_L_1 $T=162400 121000 0 0 $X=161820 $Y=120700
X1407 210 1597 1 62 357 62 UDB116SVT24_BUF_L_1 $T=187920 99400 0 0 $X=187340 $Y=99100
X1408 215 1600 1 62 68 62 UDB116SVT24_BUF_L_1 $T=201840 175000 0 180 $X=196620 $Y=169300
X1409 478 1602 1 62 491 62 UDB116SVT24_BUF_L_1 $T=208800 153400 0 0 $X=208220 $Y=153100
X1410 476 1605 1 62 492 62 UDB116SVT24_BUF_L_1 $T=215760 131800 0 0 $X=215180 $Y=131500
X1411 923 1608 1 62 493 62 UDB116SVT24_BUF_L_1 $T=225040 164200 1 0 $X=224460 $Y=158500
X1412 922 1610 1 62 494 62 UDB116SVT24_BUF_L_1 $T=227360 164200 0 0 $X=226780 $Y=163900
X1413 496 1613 1 62 362 62 UDB116SVT24_BUF_L_1 $T=234320 131800 1 0 $X=233740 $Y=126100
X1414 238 1616 1 62 69 62 UDB116SVT24_BUF_L_1 $T=244760 142600 1 0 $X=244180 $Y=136900
X1415 531 1618 1 62 495 62 UDB116SVT24_BUF_L_1 $T=249400 99400 0 0 $X=248820 $Y=99100
X1416 241 1620 1 62 70 62 UDB116SVT24_BUF_L_1 $T=249400 110200 0 0 $X=248820 $Y=109900
X1417 696 1622 1 62 496 62 UDB116SVT24_BUF_L_1 $T=249400 121000 0 0 $X=248820 $Y=120700
X1418 704 1624 1 62 497 62 UDB116SVT24_BUF_L_1 $T=257520 110200 1 0 $X=256940 $Y=104500
X1419 251 1627 1 62 382 62 UDB116SVT24_BUF_L_1 $T=265640 153400 1 0 $X=265060 $Y=147700
X1420 255 1629 1 62 498 62 UDB116SVT24_BUF_L_1 $T=276080 164200 0 0 $X=275500 $Y=163900
X1421 634 1631 1 62 71 62 UDB116SVT24_BUF_L_1 $T=285360 110200 1 0 $X=284780 $Y=104500
X1422 793 1633 1 62 499 62 UDB116SVT24_BUF_L_1 $T=299280 110200 0 0 $X=298700 $Y=109900
X1423 939 1635 1 62 500 62 UDB116SVT24_BUF_L_1 $T=309720 121000 0 0 $X=309140 $Y=120700
X1424 500 1638 1 62 72 62 UDB116SVT24_BUF_L_1 $T=316680 110200 0 0 $X=316100 $Y=109900
X1425 940 1640 1 62 501 62 UDB116SVT24_BUF_L_1 $T=319000 153400 0 0 $X=318420 $Y=153100
X1426 943 1642 1 62 502 62 UDB116SVT24_BUF_L_1 $T=322480 164200 0 0 $X=321900 $Y=163900
X1427 860 1643 1 62 428 62 UDB116SVT24_BUF_L_1 $T=332920 164200 0 0 $X=332340 $Y=163900
X1428 948 1646 1 62 503 62 UDB116SVT24_BUF_L_1 $T=334080 110200 0 0 $X=333500 $Y=109900
X1429 539 1648 1 62 504 62 UDB116SVT24_BUF_L_1 $T=339880 153400 0 0 $X=339300 $Y=153100
X1430 643 1650 1 62 505 62 UDB116SVT24_BUF_L_1 $T=364240 142600 1 0 $X=363660 $Y=136900
X1431 756 1653 1 62 506 62 UDB116SVT24_BUF_L_1 $T=368880 164200 0 0 $X=368300 $Y=163900
X1432 508 1655 1 62 507 62 UDB116SVT24_BUF_L_1 $T=370040 99400 0 0 $X=369460 $Y=99100
X1433 954 1657 1 62 508 62 UDB116SVT24_BUF_L_1 $T=370040 131800 0 0 $X=369460 $Y=131500
X1434 154 1660 1 62 509 62 UDB116SVT24_BUF_L_1 $T=382800 175000 1 0 $X=382220 $Y=169300
X1435 728 1662 1 62 510 62 UDB116SVT24_BUF_L_1 $T=412960 164200 0 180 $X=407740 $Y=158500
X1436 965 1663 1 62 511 62 UDB116SVT24_BUF_L_1 $T=410640 131800 1 0 $X=410060 $Y=126100
X1437 288 1666 1 62 512 62 UDB116SVT24_BUF_L_1 $T=415280 153400 1 0 $X=414700 $Y=147700
X1438 653 1668 1 62 513 62 UDB116SVT24_BUF_L_1 $T=448920 131800 1 0 $X=448340 $Y=126100
X1439 513 1669 1 62 514 62 UDB116SVT24_BUF_L_1 $T=448920 142600 1 0 $X=448340 $Y=136900
X1440 823 1671 1 62 515 62 UDB116SVT24_BUF_L_1 $T=466320 142600 1 0 $X=465740 $Y=136900
X1441 473 1673 1 62 516 62 UDB116SVT24_BUF_L_1 $T=469800 175000 1 0 $X=469220 $Y=169300
X1442 62 1 517 553 ICV_10 $T=49880 164200 0 0 $X=49300 $Y=163900
X1443 62 1 518 743 ICV_10 $T=54520 110200 0 0 $X=53940 $Y=109900
X1444 62 1 519 518 ICV_10 $T=54520 121000 0 0 $X=53940 $Y=120700
X1445 62 1 10 574 ICV_10 $T=60320 110200 1 0 $X=59740 $Y=104500
X1446 62 1 4 613 ICV_10 $T=60320 121000 1 0 $X=59740 $Y=115300
X1447 62 1 520 874 ICV_10 $T=60320 131800 1 0 $X=59740 $Y=126100
X1448 62 1 521 572 ICV_10 $T=60320 142600 1 0 $X=59740 $Y=136900
X1449 62 1 522 622 ICV_10 $T=60320 164200 1 0 $X=59740 $Y=158500
X1450 62 1 344 183 ICV_10 $T=96280 121000 1 0 $X=95700 $Y=115300
X1451 62 1 523 843 ICV_10 $T=96280 131800 0 0 $X=95700 $Y=131500
X1452 62 1 524 887 ICV_10 $T=118320 131800 1 0 $X=117740 $Y=126100
X1453 62 1 73 485 ICV_10 $T=135720 110200 0 0 $X=135140 $Y=109900
X1454 62 1 525 902 ICV_10 $T=143840 131800 0 0 $X=143260 $Y=131500
X1455 62 1 74 625 ICV_10 $T=157760 110200 1 0 $X=157180 $Y=104500
X1456 62 1 526 764 ICV_10 $T=183280 142600 0 0 $X=182700 $Y=142300
X1457 62 1 527 918 ICV_10 $T=187920 131800 1 0 $X=187340 $Y=126100
X1458 62 1 528 475 ICV_10 $T=196040 131800 0 0 $X=195460 $Y=131500
X1459 62 1 529 216 ICV_10 $T=201840 175000 1 0 $X=201260 $Y=169300
X1460 62 1 75 807 ICV_10 $T=232000 99400 0 0 $X=231420 $Y=99100
X1461 62 1 530 695 ICV_10 $T=232000 131800 0 0 $X=231420 $Y=131500
X1462 62 1 531 924 ICV_10 $T=252880 121000 1 0 $X=252300 $Y=115300
X1463 62 1 532 249 ICV_10 $T=261000 99400 1 0 $X=260420 $Y=93700
X1464 62 1 533 385 ICV_10 $T=265640 99400 0 0 $X=265060 $Y=99100
X1465 62 1 534 816 ICV_10 $T=280720 142600 0 0 $X=280140 $Y=142300
X1466 62 1 535 605 ICV_10 $T=292320 142600 1 0 $X=291740 $Y=136900
X1467 62 1 536 267 ICV_10 $T=312040 99400 1 0 $X=311460 $Y=93700
X1468 62 1 537 942 ICV_10 $T=312040 99400 0 0 $X=311460 $Y=99100
X1469 62 1 442 638 ICV_10 $T=322480 153400 1 0 $X=321900 $Y=147700
X1470 62 1 538 818 ICV_10 $T=324800 110200 1 0 $X=324220 $Y=104500
X1471 62 1 539 277 ICV_10 $T=331760 110200 1 0 $X=331180 $Y=104500
X1472 62 1 423 541 ICV_10 $T=335240 131800 1 0 $X=334660 $Y=126100
X1473 62 1 540 795 ICV_10 $T=339880 121000 1 0 $X=339300 $Y=115300
X1474 62 1 541 559 ICV_10 $T=352640 121000 1 0 $X=352060 $Y=115300
X1475 62 1 542 713 ICV_10 $T=364240 110200 1 0 $X=363660 $Y=104500
X1476 62 1 543 564 ICV_10 $T=394400 142600 0 0 $X=393820 $Y=142300
X1477 62 1 544 963 ICV_10 $T=397880 110200 0 0 $X=397300 $Y=109900
X1478 62 1 545 966 ICV_10 $T=417600 131800 0 0 $X=417020 $Y=131500
X1479 62 1 546 967 ICV_10 $T=418760 142600 0 0 $X=418180 $Y=142300
X1480 62 1 547 289 ICV_10 $T=419920 153400 1 0 $X=419340 $Y=147700
X1481 62 1 548 760 ICV_10 $T=422240 121000 1 0 $X=421660 $Y=115300
X1482 62 1 549 650 ICV_10 $T=422240 121000 0 0 $X=421660 $Y=120700
X1483 62 1 474 473 ICV_10 $T=448920 164200 1 0 $X=448340 $Y=158500
X1484 62 1 550 970 ICV_10 $T=455880 153400 0 0 $X=455300 $Y=153100
X1485 62 1 473 737 ICV_10 $T=469800 164200 1 0 $X=469220 $Y=158500
X1486 62 1 551 830 ICV_11 $T=58000 131800 0 0 $X=57420 $Y=131500
X1487 62 1 76 623 ICV_11 $T=120640 164200 0 0 $X=120060 $Y=163900
X1488 62 1 552 896 ICV_11 $T=128760 121000 0 0 $X=128180 $Y=120700
X1489 62 1 553 627 ICV_11 $T=158920 164200 0 0 $X=158340 $Y=163900
X1490 62 1 554 765 ICV_11 $T=184440 110200 0 0 $X=183860 $Y=109900
X1491 62 1 555 921 ICV_11 $T=201840 164200 0 0 $X=201260 $Y=163900
X1492 62 1 556 243 ICV_11 $T=245920 153400 1 0 $X=245340 $Y=147700
X1493 62 1 77 556 ICV_11 $T=249400 142600 1 0 $X=248820 $Y=136900
X1494 62 1 557 629 ICV_11 $T=250560 131800 1 0 $X=249980 $Y=126100
X1495 62 1 414 256 ICV_11 $T=283040 131800 0 0 $X=282460 $Y=131500
X1496 62 1 413 536 ICV_11 $T=296960 99400 1 0 $X=296380 $Y=93700
X1497 62 1 558 265 ICV_11 $T=300440 175000 1 0 $X=299860 $Y=169300
X1498 62 1 559 755 ICV_11 $T=350320 110200 0 0 $X=349740 $Y=109900
X1499 62 1 560 952 ICV_11 $T=356120 131800 1 0 $X=355540 $Y=126100
X1500 62 1 561 867 ICV_11 $T=371200 110200 1 0 $X=370620 $Y=104500
X1501 62 1 562 645 ICV_11 $T=373520 142600 0 0 $X=372940 $Y=142300
X1502 62 1 78 609 ICV_11 $T=375840 99400 1 0 $X=375260 $Y=93700
X1503 62 1 563 566 ICV_11 $T=380480 131800 0 0 $X=379900 $Y=131500
X1504 62 1 564 961 ICV_11 $T=392080 99400 0 0 $X=391500 $Y=99100
X1505 62 1 565 460 ICV_11 $T=403680 110200 1 0 $X=403100 $Y=104500
X1506 62 1 566 821 ICV_11 $T=412960 121000 0 0 $X=412380 $Y=120700
X1507 62 1 567 651 ICV_11 $T=416440 110200 0 0 $X=415860 $Y=109900
X1508 62 1 568 547 ICV_11 $T=417600 164200 0 0 $X=417020 $Y=163900
X1509 62 1 569 729 ICV_11 $T=429200 121000 0 0 $X=428620 $Y=120700
X1510 62 1 570 569 ICV_11 $T=429200 131800 1 0 $X=428620 $Y=126100
X1511 62 1 337 571 62 UDB116SVT24_INV_0P75 $T=90480 175000 0 180 $X=87580 $Y=169300
X1512 62 1 338 572 62 UDB116SVT24_INV_0P75 $T=96280 142600 1 180 $X=93380 $Y=142300
X1513 62 1 340 573 62 UDB116SVT24_INV_0P75 $T=118320 164200 0 0 $X=117740 $Y=163900
X1514 62 1 341 574 62 UDB116SVT24_INV_0P75 $T=121800 153400 0 0 $X=121220 $Y=153100
X1515 62 1 14 13 62 UDB116SVT24_INV_0P75 $T=140360 153400 1 180 $X=137460 $Y=153100
X1516 62 1 344 343 62 UDB116SVT24_INV_0P75 $T=143840 131800 0 180 $X=140940 $Y=126100
X1517 62 1 16 15 62 UDB116SVT24_INV_0P75 $T=145000 142600 0 180 $X=142100 $Y=136900
X1518 62 1 347 348 62 UDB116SVT24_INV_0P75 $T=153120 110200 0 0 $X=152540 $Y=109900
X1519 62 1 349 11 62 UDB116SVT24_INV_0P75 $T=161240 121000 0 180 $X=158340 $Y=115300
X1520 62 1 20 351 62 UDB116SVT24_INV_0P75 $T=170520 110200 1 0 $X=169940 $Y=104500
X1521 62 1 24 352 62 UDB116SVT24_INV_0P75 $T=199520 121000 1 0 $X=198940 $Y=115300
X1522 62 1 360 358 62 UDB116SVT24_INV_0P75 $T=201840 153400 1 180 $X=198940 $Y=153100
X1523 62 1 361 350 62 UDB116SVT24_INV_0P75 $T=204160 131800 0 180 $X=201260 $Y=126100
X1524 62 1 362 356 62 UDB116SVT24_INV_0P75 $T=209960 142600 0 180 $X=207060 $Y=136900
X1525 62 1 363 3 62 UDB116SVT24_INV_0P75 $T=212280 142600 0 180 $X=209380 $Y=136900
X1526 62 1 364 359 62 UDB116SVT24_INV_0P75 $T=215760 131800 1 180 $X=212860 $Y=131500
X1527 62 1 365 355 62 UDB116SVT24_INV_0P75 $T=219240 164200 0 0 $X=218660 $Y=163900
X1528 62 1 26 79 62 UDB116SVT24_INV_0P75 $T=220400 153400 1 0 $X=219820 $Y=147700
X1529 62 1 28 27 62 UDB116SVT24_INV_0P75 $T=227360 164200 1 180 $X=224460 $Y=163900
X1530 62 1 369 29 62 UDB116SVT24_INV_0P75 $T=251720 164200 1 0 $X=251140 $Y=158500
X1531 62 1 382 80 62 UDB116SVT24_INV_0P75 $T=264480 175000 1 0 $X=263900 $Y=169300
X1532 62 1 389 383 62 UDB116SVT24_INV_0P75 $T=274920 153400 0 180 $X=272020 $Y=147700
X1533 62 1 35 422 62 UDB116SVT24_INV_0P75 $T=305080 131800 1 180 $X=302180 $Y=131500
X1534 62 1 410 417 62 UDB116SVT24_INV_0P75 $T=302760 153400 1 0 $X=302180 $Y=147700
X1535 62 1 428 575 62 UDB116SVT24_INV_0P75 $T=319000 153400 1 180 $X=316100 $Y=153100
X1536 62 1 426 576 62 UDB116SVT24_INV_0P75 $T=316680 164200 1 0 $X=316100 $Y=158500
X1537 62 1 40 81 62 UDB116SVT24_INV_0P75 $T=321320 175000 1 0 $X=320740 $Y=169300
X1538 62 1 439 577 62 UDB116SVT24_INV_0P75 $T=338720 153400 0 180 $X=335820 $Y=147700
X1539 62 1 46 41 62 UDB116SVT24_INV_0P75 $T=341040 175000 0 180 $X=338140 $Y=169300
X1540 62 1 441 434 62 UDB116SVT24_INV_0P75 $T=344520 153400 0 180 $X=341620 $Y=147700
X1541 62 1 47 45 62 UDB116SVT24_INV_0P75 $T=348000 175000 1 0 $X=347420 $Y=169300
X1542 62 1 449 451 62 UDB116SVT24_INV_0P75 $T=368880 164200 1 180 $X=365980 $Y=163900
X1543 62 1 453 50 62 UDB116SVT24_INV_0P75 $T=382800 175000 0 180 $X=379900 $Y=169300
X1544 62 1 455 457 62 UDB116SVT24_INV_0P75 $T=395560 153400 1 0 $X=394980 $Y=147700
X1545 62 1 460 459 62 UDB116SVT24_INV_0P75 $T=404840 131800 1 180 $X=401940 $Y=131500
X1546 62 1 465 466 62 UDB116SVT24_INV_0P75 $T=415280 153400 0 180 $X=412380 $Y=147700
X1547 62 1 470 82 62 UDB116SVT24_INV_0P75 $T=432680 175000 0 180 $X=429780 $Y=169300
X1548 62 1 471 57 62 UDB116SVT24_INV_0P75 $T=436160 164200 0 180 $X=433260 $Y=158500
X1549 62 1 58 83 62 UDB116SVT24_INV_0P75 $T=435000 175000 1 0 $X=434420 $Y=169300
X1550 377 380 2138 389 1 928 62 376 62 UDB116SVT24_OAOI211_0P75 $T=266800 164200 0 180 $X=259260 $Y=158500
X1551 64 1803 54 1 62 458 62 UDB116SVT24_OR2_0P75 $T=410640 164200 1 180 $X=405420 $Y=163900
X1552 4 7 62 888 889 1 62 UDB116SVT24_OAI21_0P75 $T=125280 175000 0 180 $X=120060 $Y=169300
X1553 11 7 62 887 894 1 62 UDB116SVT24_OAI21_0P75 $T=129920 131800 0 180 $X=124700 $Y=126100
X1554 343 7 62 895 885 1 62 UDB116SVT24_OAI21_0P75 $T=131080 131800 1 180 $X=125860 $Y=131500
X1555 350 7 62 897 905 1 62 UDB116SVT24_OAI21_0P75 $T=162400 121000 1 180 $X=157180 $Y=120700
X1556 348 7 62 904 907 1 62 UDB116SVT24_OAI21_0P75 $T=167040 153400 1 180 $X=161820 $Y=153100
X1557 351 7 62 901 204 1 62 UDB116SVT24_OAI21_0P75 $T=167040 175000 0 180 $X=161820 $Y=169300
X1558 352 7 62 900 912 1 62 UDB116SVT24_OAI21_0P75 $T=174000 131800 0 180 $X=168780 $Y=126100
X1559 356 7 62 915 916 1 62 UDB116SVT24_OAI21_0P75 $T=183280 142600 1 180 $X=178060 $Y=142300
X1560 359 7 62 914 919 1 62 UDB116SVT24_OAI21_0P75 $T=198360 142600 0 180 $X=193140 $Y=136900
X1561 377 250 62 929 31 1 62 UDB116SVT24_OAI21_0P75 $T=265640 153400 0 180 $X=260420 $Y=147700
X1562 380 250 62 930 31 1 62 UDB116SVT24_OAI21_0P75 $T=286520 153400 1 180 $X=281300 $Y=153100
X1563 419 409 62 936 33 1 62 UDB116SVT24_OAI21_0P75 $T=307400 142600 1 180 $X=302180 $Y=142300
X1564 425 418 62 934 406 1 62 UDB116SVT24_OAI21_0P75 $T=310880 110200 0 180 $X=305660 $Y=104500
X1565 32 410 62 419 479 1 62 UDB116SVT24_OAI21_0P75 $T=312040 153400 0 180 $X=306820 $Y=147700
X1566 32 416 62 425 479 1 62 UDB116SVT24_OAI21_0P75 $T=316680 110200 1 180 $X=311460 $Y=109900
X1567 32 35 62 435 479 1 62 UDB116SVT24_OAI21_0P75 $T=314360 121000 1 0 $X=313780 $Y=115300
X1568 41 44 62 946 32 1 62 UDB116SVT24_OAI21_0P75 $T=329440 175000 0 180 $X=324220 $Y=169300
X1569 435 430 62 944 421 1 62 UDB116SVT24_OAI21_0P75 $T=334080 110200 1 180 $X=328860 $Y=109900
X1570 447 448 62 951 753 1 62 UDB116SVT24_OAI21_0P75 $T=353800 153400 1 0 $X=353220 $Y=147700
X1571 432 449 62 447 437 1 62 UDB116SVT24_OAI21_0P75 $T=361920 164200 1 180 $X=356700 $Y=163900
X1572 54 460 62 464 52 1 62 UDB116SVT24_OAI21_0P75 $T=417600 131800 1 180 $X=412380 $Y=131500
X1573 61 292 62 971 610 1 62 UDB116SVT24_OAI21_0P75 $T=469800 175000 0 180 $X=464580 $Y=169300
X1574 578 1819 62 1 345 62 UDB116SVT24_BUF_1 $T=60320 153400 1 0 $X=59740 $Y=147700
X1575 579 1822 62 1 337 62 UDB116SVT24_BUF_1 $T=66120 175000 1 0 $X=65540 $Y=169300
X1576 580 1824 62 1 581 62 UDB116SVT24_BUF_1 $T=74240 121000 0 0 $X=73660 $Y=120700
X1577 582 1826 62 1 583 62 UDB116SVT24_BUF_1 $T=106720 131800 0 0 $X=106140 $Y=131500
X1578 584 1827 62 1 585 62 UDB116SVT24_BUF_1 $T=118320 164200 1 180 $X=114260 $Y=163900
X1579 586 1828 62 1 341 62 UDB116SVT24_BUF_1 $T=118320 121000 0 0 $X=117740 $Y=120700
X1580 587 1830 62 1 84 62 UDB116SVT24_BUF_1 $T=122960 142600 0 180 $X=118900 $Y=136900
X1581 588 1832 62 1 589 62 UDB116SVT24_BUF_1 $T=143840 121000 0 0 $X=143260 $Y=120700
X1582 585 1833 62 1 587 62 UDB116SVT24_BUF_1 $T=153120 110200 1 180 $X=149060 $Y=109900
X1583 590 1836 62 1 588 62 UDB116SVT24_BUF_1 $T=154280 121000 1 0 $X=153700 $Y=115300
X1584 85 1837 62 1 86 62 UDB116SVT24_BUF_1 $T=162400 175000 0 180 $X=158340 $Y=169300
X1585 591 1838 62 1 87 62 UDB116SVT24_BUF_1 $T=167040 153400 0 0 $X=166460 $Y=153100
X1586 592 1841 62 1 88 62 UDB116SVT24_BUF_1 $T=179800 99400 1 180 $X=175740 $Y=99100
X1587 593 1842 62 1 360 62 UDB116SVT24_BUF_1 $T=183280 153400 0 0 $X=182700 $Y=153100
X1588 517 1844 62 1 594 62 UDB116SVT24_BUF_1 $T=199520 121000 1 180 $X=195460 $Y=120700
X1589 89 1845 62 1 90 62 UDB116SVT24_BUF_1 $T=207640 121000 1 180 $X=203580 $Y=120700
X1590 595 1847 62 1 596 62 UDB116SVT24_BUF_1 $T=208800 99400 1 180 $X=204740 $Y=99100
X1591 91 1848 62 1 92 62 UDB116SVT24_BUF_1 $T=212280 142600 1 0 $X=211700 $Y=136900
X1592 93 1851 62 1 597 62 UDB116SVT24_BUF_1 $T=216920 142600 1 180 $X=212860 $Y=142300
X1593 94 1852 62 1 365 62 UDB116SVT24_BUF_1 $T=230840 153400 1 180 $X=226780 $Y=153100
X1594 598 1854 62 1 95 62 UDB116SVT24_BUF_1 $T=245920 164200 0 180 $X=241860 $Y=158500
X1595 96 1856 62 1 97 62 UDB116SVT24_BUF_1 $T=249400 164200 0 0 $X=248820 $Y=163900
X1596 599 1857 62 1 98 62 UDB116SVT24_BUF_1 $T=266800 164200 1 0 $X=266220 $Y=158500
X1597 99 1858 62 1 100 62 UDB116SVT24_BUF_1 $T=278400 121000 0 0 $X=277820 $Y=120700
X1598 575 1860 62 1 600 62 UDB116SVT24_BUF_1 $T=281880 153400 1 180 $X=277820 $Y=153100
X1599 101 1861 62 1 601 62 UDB116SVT24_BUF_1 $T=293480 110200 1 180 $X=289420 $Y=109900
X1600 602 1863 62 1 102 62 UDB116SVT24_BUF_1 $T=298120 153400 0 180 $X=294060 $Y=147700
X1601 601 1864 62 1 603 62 UDB116SVT24_BUF_1 $T=306240 164200 1 0 $X=305660 $Y=158500
X1602 604 1867 62 1 605 62 UDB116SVT24_BUF_1 $T=316680 142600 1 180 $X=312620 $Y=142300
X1603 103 1870 62 1 104 62 UDB116SVT24_BUF_1 $T=317840 142600 0 180 $X=313780 $Y=136900
X1604 105 1872 62 1 106 62 UDB116SVT24_BUF_1 $T=338720 164200 0 180 $X=334660 $Y=158500
X1605 606 1875 62 1 107 62 UDB116SVT24_BUF_1 $T=346840 142600 1 0 $X=346260 $Y=136900
X1606 108 1877 62 1 109 62 UDB116SVT24_BUF_1 $T=357280 164200 1 180 $X=353220 $Y=163900
X1607 110 1878 62 1 607 62 UDB116SVT24_BUF_1 $T=361920 164200 0 0 $X=361340 $Y=163900
X1608 607 1880 62 1 111 62 UDB116SVT24_BUF_1 $T=374680 110200 1 180 $X=370620 $Y=109900
X1609 608 1883 62 1 609 62 UDB116SVT24_BUF_1 $T=393240 131800 0 180 $X=389180 $Y=126100
X1610 473 1884 62 1 610 62 UDB116SVT24_BUF_1 $T=476760 175000 1 0 $X=476180 $Y=169300
X1611 45 44 2124 41 62 1 37 437 62 UDB116SVT24_AOAI211_0P75 $T=337560 175000 0 180 $X=330020 $Y=169300
X1612 473 472 2133 58 62 1 733 462 62 UDB116SVT24_AOAI211_0P75 $T=440800 164200 1 180 $X=433260 $Y=163900
X1613 62 1 611 849 ICV_12 $T=58000 142600 0 0 $X=57420 $Y=142300
X1614 62 1 612 655 ICV_12 $T=61480 121000 0 0 $X=60900 $Y=120700
X1615 62 1 613 573 ICV_12 $T=67280 99400 1 0 $X=66700 $Y=93700
X1616 62 1 614 521 ICV_12 $T=67280 110200 1 0 $X=66700 $Y=104500
X1617 62 1 615 571 ICV_12 $T=71920 99400 0 0 $X=71340 $Y=99100
X1618 62 1 616 799 ICV_12 $T=89320 110200 0 0 $X=88740 $Y=109900
X1619 62 1 617 877 ICV_12 $T=90480 153400 0 0 $X=89900 $Y=153100
X1620 62 1 618 663 ICV_12 $T=90480 164200 1 0 $X=89900 $Y=158500
X1621 62 1 619 181 ICV_12 $T=90480 175000 1 0 $X=89900 $Y=169300
X1622 62 1 620 182 ICV_12 $T=95120 99400 1 0 $X=94540 $Y=93700
X1623 62 1 340 185 ICV_12 $T=112520 164200 1 0 $X=111940 $Y=158500
X1624 62 1 621 552 ICV_12 $T=117160 121000 1 0 $X=116580 $Y=115300
X1625 62 1 622 884 ICV_12 $T=128760 164200 1 0 $X=128180 $Y=158500
X1626 62 1 623 188 ICV_12 $T=129920 164200 0 0 $X=129340 $Y=163900
X1627 62 1 347 196 ICV_12 $T=147320 99400 1 0 $X=146740 $Y=93700
X1628 62 1 590 904 ICV_12 $T=148480 153400 0 0 $X=147900 $Y=153100
X1629 62 1 624 589 ICV_12 $T=150800 131800 0 0 $X=150220 $Y=131500
X1630 62 1 625 908 ICV_12 $T=164720 110200 1 0 $X=164140 $Y=104500
X1631 62 1 626 910 ICV_12 $T=167040 121000 0 0 $X=166460 $Y=120700
X1632 62 1 627 911 ICV_12 $T=168200 164200 0 0 $X=167620 $Y=163900
X1633 62 1 354 597 ICV_12 $T=196040 164200 0 0 $X=195460 $Y=163900
X1634 62 1 112 493 ICV_12 $T=208800 175000 1 0 $X=208220 $Y=169300
X1635 62 1 113 699 ICV_12 $T=245920 164200 1 0 $X=245340 $Y=158500
X1636 62 1 628 927 ICV_12 $T=249400 142600 0 0 $X=248820 $Y=142300
X1637 62 1 114 244 ICV_12 $T=254040 110200 0 0 $X=253460 $Y=109900
X1638 62 1 629 855 ICV_12 $T=254040 121000 0 0 $X=253460 $Y=120700
X1639 62 1 630 631 ICV_12 $T=273760 110200 0 0 $X=273180 $Y=109900
X1640 62 1 631 809 ICV_12 $T=274920 142600 0 0 $X=274340 $Y=142300
X1641 62 1 632 931 ICV_12 $T=274920 153400 1 0 $X=274340 $Y=147700
X1642 62 1 115 632 ICV_12 $T=280720 164200 0 0 $X=280140 $Y=163900
X1643 62 1 633 778 ICV_12 $T=286520 153400 0 0 $X=285940 $Y=153100
X1644 62 1 634 633 ICV_12 $T=287680 142600 0 0 $X=287100 $Y=142300
X1645 62 1 116 635 ICV_12 $T=292320 131800 0 0 $X=291740 $Y=131500
X1646 62 1 635 502 ICV_12 $T=294640 175000 1 0 $X=294060 $Y=169300
X1647 62 1 117 536 ICV_12 $T=306240 99400 1 0 $X=305660 $Y=93700
X1648 62 1 118 935 ICV_12 $T=306240 99400 0 0 $X=305660 $Y=99100
X1649 62 1 421 711 ICV_12 $T=330600 121000 1 0 $X=330020 $Y=115300
X1650 62 1 426 941 ICV_12 $T=337560 164200 0 0 $X=336980 $Y=163900
X1651 62 1 636 143 ICV_12 $T=338720 110200 1 0 $X=338140 $Y=104500
X1652 62 1 637 862 ICV_12 $T=344520 99400 1 0 $X=343940 $Y=93700
X1653 62 1 638 859 ICV_12 $T=346840 121000 1 0 $X=346260 $Y=115300
X1654 62 1 639 949 ICV_12 $T=350320 131800 1 0 $X=349740 $Y=126100
X1655 62 1 640 950 ICV_12 $T=350320 142600 1 0 $X=349740 $Y=136900
X1656 62 1 641 640 ICV_12 $T=354960 153400 0 0 $X=354380 $Y=153100
X1657 62 1 642 752 ICV_12 $T=358440 131800 0 0 $X=357860 $Y=131500
X1658 62 1 119 282 ICV_12 $T=364240 175000 1 0 $X=363660 $Y=169300
X1659 62 1 449 644 ICV_12 $T=368880 142600 1 0 $X=368300 $Y=136900
X1660 62 1 643 715 ICV_12 $T=374680 99400 0 0 $X=374100 $Y=99100
X1661 62 1 644 866 ICV_12 $T=374680 131800 0 0 $X=374100 $Y=131500
X1662 62 1 645 721 ICV_12 $T=385120 99400 1 0 $X=384540 $Y=93700
X1663 62 1 445 724 ICV_12 $T=385120 121000 1 0 $X=384540 $Y=115300
X1664 62 1 646 960 ICV_12 $T=393240 131800 1 0 $X=392660 $Y=126100
X1665 62 1 647 873 ICV_12 $T=399040 121000 1 0 $X=398460 $Y=115300
X1666 62 1 455 512 ICV_12 $T=412960 164200 1 0 $X=412380 $Y=158500
X1667 62 1 648 872 ICV_12 $T=416440 121000 1 0 $X=415860 $Y=115300
X1668 62 1 470 791 ICV_12 $T=417600 175000 1 0 $X=417020 $Y=169300
X1669 62 1 649 648 ICV_12 $T=419920 110200 1 0 $X=419340 $Y=104500
X1670 62 1 650 545 ICV_12 $T=423400 131800 1 0 $X=422820 $Y=126100
X1671 62 1 651 649 ICV_12 $T=425720 110200 0 0 $X=425140 $Y=109900
X1672 62 1 652 730 ICV_12 $T=425720 142600 0 0 $X=425140 $Y=142300
X1673 62 1 653 968 ICV_12 $T=439640 142600 0 0 $X=439060 $Y=142300
X1674 62 1 654 761 ICV_12 $T=453560 142600 1 0 $X=452980 $Y=136900
X1675 62 1 60 516 ICV_12 $T=464000 164200 1 0 $X=463420 $Y=158500
X1676 62 1 655 120 596 174 ICV_13 $T=56840 164200 0 0 $X=56260 $Y=163900
X1677 62 1 656 121 520 175 ICV_13 $T=67280 121000 1 0 $X=66700 $Y=115300
X1678 62 1 122 123 837 172 ICV_13 $T=68440 164200 0 0 $X=67860 $Y=163900
X1679 62 1 657 658 581 657 ICV_13 $T=69600 110200 0 0 $X=69020 $Y=109900
X1680 62 1 579 659 662 149 ICV_13 $T=69600 175000 1 0 $X=69020 $Y=169300
X1681 62 1 660 661 851 665 ICV_13 $T=73080 131800 1 0 $X=72500 $Y=126100
X1682 62 1 662 663 659 179 ICV_13 $T=80040 164200 0 0 $X=79460 $Y=163900
X1683 62 1 124 664 801 798 ICV_13 $T=83520 110200 1 0 $X=82940 $Y=104500
X1684 62 1 665 666 829 802 ICV_13 $T=84680 131800 1 0 $X=84100 $Y=126100
X1685 62 1 125 667 668 878 ICV_13 $T=88160 99400 0 0 $X=87580 $Y=99100
X1686 62 1 668 669 853 667 ICV_13 $T=95120 110200 1 0 $X=94540 $Y=104500
X1687 62 1 670 671 890 670 ICV_13 $T=122960 142600 1 0 $X=122380 $Y=136900
X1688 62 1 672 673 892 672 ICV_13 $T=124120 153400 0 0 $X=123540 $Y=153100
X1689 62 1 342 674 803 784 ICV_13 $T=129920 99400 0 0 $X=129340 $Y=99100
X1690 62 1 126 675 898 903 ICV_13 $T=141520 99400 0 0 $X=140940 $Y=99100
X1691 62 1 346 676 195 747 ICV_13 $T=146160 110200 1 0 $X=145580 $Y=104500
X1692 62 1 677 678 624 906 ICV_13 $T=155440 110200 0 0 $X=154860 $Y=109900
X1693 62 1 127 679 914 785 ICV_13 $T=170520 153400 0 0 $X=169940 $Y=153100
X1694 62 1 680 681 909 917 ICV_13 $T=172840 110200 0 0 $X=172260 $Y=109900
X1695 62 1 128 682 208 681 ICV_13 $T=175160 99400 1 0 $X=174580 $Y=93700
X1696 62 1 683 684 687 527 ICV_13 $T=186760 99400 1 0 $X=186180 $Y=93700
X1697 62 1 685 686 526 555 ICV_13 $T=186760 153400 0 0 $X=186180 $Y=153100
X1698 62 1 687 129 554 920 ICV_13 $T=192560 99400 0 0 $X=191980 $Y=99100
X1699 62 1 130 688 528 774 ICV_13 $T=201840 121000 1 0 $X=201260 $Y=115300
X1700 62 1 349 689 218 766 ICV_13 $T=208800 99400 0 0 $X=208220 $Y=99100
X1701 62 1 690 131 227 229 ICV_13 $T=220400 99400 1 0 $X=219820 $Y=93700
X1702 62 1 691 132 693 230 ICV_13 $T=220400 99400 0 0 $X=219820 $Y=99100
X1703 62 1 361 692 692 690 ICV_13 $T=220400 131800 0 0 $X=219820 $Y=131500
X1704 62 1 693 133 689 231 ICV_13 $T=222720 110200 1 0 $X=222140 $Y=104500
X1705 62 1 694 695 530 767 ICV_13 $T=225040 142600 0 0 $X=224460 $Y=142300
X1706 62 1 696 697 232 157 ICV_13 $T=232000 99400 1 0 $X=231420 $Y=93700
X1707 62 1 698 593 529 239 ICV_13 $T=238960 131800 1 0 $X=238380 $Y=126100
X1708 62 1 699 700 628 557 ICV_13 $T=249400 153400 0 0 $X=248820 $Y=153100
X1709 62 1 134 701 775 697 ICV_13 $T=254040 99400 0 0 $X=253460 $Y=99100
X1710 62 1 702 703 749 792 ICV_13 $T=258680 142600 1 0 $X=258100 $Y=136900
X1711 62 1 704 705 535 706 ICV_13 $T=265640 121000 0 0 $X=265060 $Y=120700
X1712 62 1 602 394 532 810 ICV_13 $T=267960 99400 1 0 $X=267380 $Y=93700
X1713 62 1 377 706 252 533 ICV_13 $T=271440 131800 0 0 $X=270860 $Y=131500
X1714 62 1 599 135 253 708 ICV_13 $T=272600 99400 0 0 $X=272020 $Y=99100
X1715 62 1 707 708 814 257 ICV_13 $T=281880 121000 0 0 $X=281300 $Y=120700
X1716 62 1 380 136 534 262 ICV_13 $T=293480 164200 1 0 $X=292900 $Y=158500
X1717 62 1 709 710 817 709 ICV_13 $T=324800 99400 0 0 $X=324220 $Y=99100
X1718 62 1 711 712 278 504 ICV_13 $T=338720 110200 0 0 $X=338140 $Y=109900
X1719 62 1 48 713 779 560 ICV_13 $T=364240 121000 0 0 $X=363660 $Y=120700
X1720 62 1 714 715 542 953 ICV_13 $T=365400 131800 1 0 $X=364820 $Y=126100
X1721 62 1 716 717 955 957 ICV_13 $T=368880 153400 0 0 $X=368300 $Y=153100
X1722 62 1 718 719 722 958 ICV_13 $T=374680 110200 0 0 $X=374100 $Y=109900
X1723 62 1 720 608 507 725 ICV_13 $T=377000 131800 1 0 $X=376420 $Y=126100
X1724 62 1 721 722 717 757 ICV_13 $T=382800 142600 0 0 $X=382220 $Y=142300
X1725 62 1 723 724 719 726 ICV_13 $T=386280 110200 0 0 $X=385700 $Y=109900
X1726 62 1 725 460 511 727 ICV_13 $T=389760 131800 0 0 $X=389180 $Y=131500
X1727 62 1 726 727 723 543 ICV_13 $T=392080 110200 1 0 $X=391500 $Y=104500
X1728 62 1 453 728 820 962 ICV_13 $T=397880 153400 1 0 $X=397300 $Y=147700
X1729 62 1 465 729 570 546 ICV_13 $T=424560 142600 1 0 $X=423980 $Y=136900
X1730 62 1 730 731 780 733 ICV_13 $T=426880 153400 1 0 $X=426300 $Y=147700
X1731 62 1 58 732 514 822 ICV_13 $T=444280 153400 0 0 $X=443700 $Y=153100
X1732 62 1 733 734 734 969 ICV_13 $T=446600 131800 0 0 $X=446020 $Y=131500
X1733 62 1 735 736 740 550 ICV_13 $T=462840 153400 0 0 $X=462260 $Y=153100
X1734 62 1 737 738 973 293 ICV_13 $T=467480 164200 0 0 $X=466900 $Y=163900
X1735 62 1 472 739 972 741 ICV_13 $T=470960 153400 1 0 $X=470380 $Y=147700
X1736 62 1 740 741 739 736 ICV_13 $T=474440 153400 0 0 $X=473860 $Y=153100
X1737 32 62 742 414 1 62 UDB116SVT24_ND2B_0P75 $T=299280 142600 1 180 $X=292900 $Y=142300
X1738 59 62 137 474 1 62 UDB116SVT24_ND2B_0P75 $T=457040 175000 0 180 $X=450660 $Y=169300
X1739 62 1 743 611 ICV_15 $T=49880 131800 0 0 $X=49300 $Y=131500
X1740 62 1 744 519 ICV_15 $T=49880 142600 0 0 $X=49300 $Y=142300
X1741 62 1 578 612 ICV_15 $T=61480 110200 0 0 $X=60900 $Y=109900
X1742 62 1 138 615 ICV_15 $T=63800 99400 0 0 $X=63220 $Y=99100
X1743 62 1 139 178 ICV_15 $T=81200 110200 0 0 $X=80620 $Y=109900
X1744 62 1 745 180 ICV_15 $T=87000 99400 1 0 $X=86420 $Y=93700
X1745 62 1 140 879 ICV_15 $T=95120 110200 0 0 $X=94540 $Y=109900
X1746 62 1 584 881 ICV_15 $T=104400 164200 1 0 $X=103820 $Y=158500
X1747 62 1 746 891 ICV_15 $T=121800 99400 0 0 $X=121220 $Y=99100
X1748 62 1 141 839 ICV_15 $T=135720 164200 0 0 $X=135140 $Y=163900
X1749 62 1 747 900 ICV_15 $T=140360 153400 0 0 $X=139780 $Y=153100
X1750 62 1 353 678 ICV_15 $T=154280 153400 0 0 $X=153700 $Y=153100
X1751 62 1 748 913 ICV_15 $T=167040 175000 1 0 $X=166460 $Y=169300
X1752 62 1 142 813 ICV_15 $T=265640 110200 0 0 $X=265060 $Y=109900
X1753 62 1 749 703 ICV_15 $T=266800 142600 0 0 $X=266220 $Y=142300
X1754 62 1 750 537 ICV_15 $T=310880 110200 1 0 $X=310300 $Y=104500
X1755 62 1 751 538 ICV_15 $T=323640 153400 0 0 $X=323060 $Y=153100
X1756 62 1 143 503 ICV_15 $T=336400 99400 1 0 $X=335820 $Y=93700
X1757 62 1 144 636 ICV_15 $T=336400 99400 0 0 $X=335820 $Y=99100
X1758 62 1 752 431 ICV_15 $T=342200 131800 1 0 $X=341620 $Y=126100
X1759 62 1 753 445 ICV_15 $T=350320 99400 1 0 $X=349740 $Y=93700
X1760 62 1 754 639 ICV_15 $T=350320 99400 0 0 $X=349740 $Y=99100
X1761 62 1 755 754 ICV_15 $T=350320 110200 1 0 $X=349740 $Y=104500
X1762 62 1 756 790 ICV_15 $T=356120 175000 1 0 $X=355540 $Y=169300
X1763 62 1 757 716 ICV_15 $T=360760 153400 0 0 $X=360180 $Y=153100
X1764 62 1 758 509 ICV_15 $T=363080 164200 1 0 $X=362500 $Y=158500
X1765 62 1 463 646 ICV_15 $T=390920 121000 1 0 $X=390340 $Y=115300
X1766 62 1 759 819 ICV_15 $T=399040 131800 1 0 $X=398460 $Y=126100
X1767 62 1 760 549 ICV_15 $T=415280 131800 1 0 $X=414700 $Y=126100
X1768 62 1 471 731 ICV_15 $T=431520 142600 0 0 $X=430940 $Y=142300
X1769 62 1 761 291 ICV_15 $T=445440 142600 0 0 $X=444860 $Y=142300
X1770 62 1 762 735 ICV_15 $T=455880 164200 1 0 $X=455300 $Y=158500
X1771 62 1 763 738 ICV_15 $T=476760 164200 1 0 $X=476180 $Y=158500
X1772 796 974 31 184 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=91640 164200 0 0 $X=91060 $Y=163900
X1773 800 975 31 883 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=95120 121000 0 0 $X=94540 $Y=120700
X1774 666 976 31 186 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=96280 131800 1 0 $X=95700 $Y=126100
X1775 852 977 31 582 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=96280 142600 1 0 $X=95700 $Y=136900
X1776 484 978 31 884 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=96280 153400 0 0 $X=95700 $Y=153100
X1777 619 979 31 177 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=96280 175000 1 0 $X=95700 $Y=169300
X1778 523 980 31 875 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=98600 142600 0 0 $X=98020 $Y=142300
X1779 797 981 31 881 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=98600 153400 1 0 $X=98020 $Y=147700
X1780 745 982 31 878 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=99760 99400 0 0 $X=99180 $Y=99100
X1781 620 983 31 187 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=100920 99400 1 0 $X=100340 $Y=93700
X1782 621 984 31 879 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=122960 121000 1 0 $X=122380 $Y=115300
X1783 804 985 31 192 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=124120 110200 1 0 $X=123540 $Y=104500
X1784 671 986 31 899 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=124120 142600 0 0 $X=123540 $Y=142300
X1785 673 987 31 874 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=124120 153400 1 0 $X=123540 $Y=147700
X1786 746 988 31 898 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=125280 99400 1 0 $X=124700 $Y=93700
X1787 193 989 31 200 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=145000 131800 1 0 $X=144420 $Y=126100
X1788 194 990 31 906 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=146160 142600 1 0 $X=145580 $Y=136900
X1789 831 991 31 592 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=147320 153400 1 0 $X=146740 $Y=147700
X1790 197 992 31 17 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=148480 164200 1 0 $X=147900 $Y=158500
X1791 483 993 31 591 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=149640 142600 0 0 $X=149060 $Y=142300
X1792 202 994 31 206 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=153120 99400 1 0 $X=152540 $Y=93700
X1793 675 995 31 908 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=153120 99400 0 0 $X=152540 $Y=99100
X1794 489 996 68 211 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=171680 142600 1 0 $X=171100 $Y=136900
X1795 205 997 68 595 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=171680 153400 1 0 $X=171100 $Y=147700
X1796 490 998 31 212 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=172840 121000 0 0 $X=172260 $Y=120700
X1797 773 999 31 920 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=174000 121000 1 0 $X=173420 $Y=115300
X1798 594 1000 68 213 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=174000 164200 0 0 $X=173420 $Y=163900
X1799 682 1001 31 214 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=176320 110200 1 0 $X=175740 $Y=104500
X1800 805 1002 31 217 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=190240 142600 0 0 $X=189660 $Y=142300
X1801 683 1003 31 219 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=193720 110200 0 0 $X=193140 $Y=109900
X1802 686 1004 68 222 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=194880 153400 1 0 $X=194300 $Y=147700
X1803 806 1005 215 223 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=196040 164200 1 0 $X=195460 $Y=158500
X1804 684 1006 31 226 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=198360 99400 1 0 $X=197780 $Y=93700
X1805 786 1007 31 367 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=204160 131800 1 0 $X=203580 $Y=126100
X1806 221 1008 31 366 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=213440 121000 1 0 $X=212860 $Y=115300
X1807 688 1009 31 925 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=213440 121000 0 0 $X=212860 $Y=120700
X1808 224 1010 215 234 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=214600 175000 1 0 $X=214020 $Y=169300
X1809 691 1011 31 926 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=215760 110200 0 0 $X=215180 $Y=109900
X1810 694 1012 31 228 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=244760 142600 0 180 $X=222140 $Y=136900
X1811 787 1013 31 368 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=223880 153400 1 0 $X=223300 $Y=147700
X1812 701 1014 31 246 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=238960 175000 1 0 $X=238380 $Y=169300
X1813 630 1015 215 927 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=276080 164200 1 180 $X=253460 $Y=163900
X1814 497 1016 298 34 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=265640 131800 1 0 $X=265060 $Y=126100
X1815 812 1017 298 258 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=270280 142600 1 0 $X=269700 $Y=136900
X1816 707 1018 298 264 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=283040 121000 1 0 $X=282460 $Y=115300
X1817 788 1019 298 935 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=284200 99400 0 0 $X=283620 $Y=99100
X1818 259 1020 298 940 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=292320 153400 0 0 $X=291740 $Y=153100
X1819 260 1021 298 941 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=293480 164200 0 0 $X=292900 $Y=163900
X1820 777 1022 298 942 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=295800 131800 1 0 $X=295220 $Y=126100
X1821 268 1023 298 948 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=314360 121000 0 0 $X=313780 $Y=120700
X1822 270 1024 298 949 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=319000 131800 0 0 $X=318420 $Y=131500
X1823 712 1025 298 274 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=345680 142600 1 180 $X=323060 $Y=142300
X1824 863 1026 298 275 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=346840 142600 0 180 $X=324220 $Y=136900
X1825 637 1027 298 952 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=342200 121000 0 0 $X=341620 $Y=120700
X1826 789 1028 298 954 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=351480 142600 0 0 $X=350900 $Y=142300
X1827 165 1029 298 957 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=359600 153400 1 0 $X=359020 $Y=147700
X1828 505 1030 298 958 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=363080 121000 1 0 $X=362500 $Y=115300
X1829 647 1031 298 960 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=375840 121000 0 0 $X=375260 $Y=120700
X1830 78 1032 298 961 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=378160 142600 1 0 $X=377580 $Y=136900
X1831 869 1033 298 962 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=380480 153400 0 0 $X=379900 $Y=153100
X1832 868 1034 298 287 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=381640 164200 1 0 $X=381060 $Y=158500
X1833 563 1035 298 967 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=402520 142600 1 0 $X=401940 $Y=136900
X1834 652 1036 298 968 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=422240 153400 0 0 $X=421660 $Y=153100
X1835 548 1037 298 969 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=424560 131800 0 0 $X=423980 $Y=131500
X1836 762 1038 298 973 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=445440 164200 0 0 $X=444860 $Y=163900
X1837 732 1039 298 972 30 1 62 62 UDB116SVT24_FDPRBQ_V2_1 $T=448920 153400 1 0 $X=448340 $Y=147700
X1838 339 8 1 9 885 124 2102 62 62 UDB116SVT24_AOI22_0P75 $T=113680 131800 0 0 $X=113100 $Y=131500
X1839 342 8 1 9 894 139 2103 62 62 UDB116SVT24_AOI22_0P75 $T=122960 121000 0 0 $X=122380 $Y=120700
X1840 345 8 1 9 889 191 2104 62 62 UDB116SVT24_AOI22_0P75 $T=143840 175000 0 180 $X=137460 $Y=169300
X1841 346 8 1 9 905 200 2105 62 62 UDB116SVT24_AOI22_0P75 $T=148480 121000 0 0 $X=147900 $Y=120700
X1842 17 8 1 9 201 198 2106 62 62 UDB116SVT24_AOI22_0P75 $T=157760 175000 0 180 $X=151380 $Y=169300
X1843 18 8 1 9 203 199 2107 62 62 UDB116SVT24_AOI22_0P75 $T=158920 164200 1 180 $X=152540 $Y=163900
X1844 353 8 1 9 912 88 2108 62 62 UDB116SVT24_AOI22_0P75 $T=175160 131800 1 180 $X=168780 $Y=131500
X1845 354 8 1 9 907 207 2109 62 62 UDB116SVT24_AOI22_0P75 $T=178640 164200 0 180 $X=172260 $Y=158500
X1846 357 8 1 9 916 69 2110 62 62 UDB116SVT24_AOI22_0P75 $T=185600 131800 1 180 $X=179220 $Y=131500
X1847 23 8 1 9 919 596 2111 62 62 UDB116SVT24_AOI22_0P75 $T=196040 131800 1 180 $X=189660 $Y=131500
X1848 25 27 1 26 923 808 2112 62 62 UDB116SVT24_AOI22_0P75 $T=220400 153400 0 0 $X=219820 $Y=153100
X1849 422 32 1 266 938 479 2121 62 62 UDB116SVT24_AOI22_0P75 $T=310880 131800 0 0 $X=310300 $Y=131500
X1850 451 432 1 449 950 437 2126 62 62 UDB116SVT24_AOI22_0P75 $T=363080 164200 0 180 $X=356700 $Y=158500
X1851 50 452 1 453 955 959 2128 62 62 UDB116SVT24_AOI22_0P75 $T=380480 164200 0 0 $X=379900 $Y=163900
X1852 459 458 1 565 965 52 2131 62 62 UDB116SVT24_AOI22_0P75 $T=406000 131800 0 0 $X=405420 $Y=131500
X1853 361 3 786 363 62 1 764 62 UDB116SVT24_OA22_1 $T=207640 142600 0 180 $X=198940 $Y=136900
X1854 349 3 130 363 62 1 765 62 UDB116SVT24_OA22_1 $T=208800 110200 0 180 $X=200100 $Y=104500
X1855 364 3 688 363 62 1 766 62 UDB116SVT24_OA22_1 $T=214600 110200 1 0 $X=214020 $Y=104500
X1856 362 3 787 363 62 1 767 62 UDB116SVT24_OA22_1 $T=216920 142600 0 0 $X=216340 $Y=142300
X1857 62 366 367 924 925 368 1 62 UDB116SVT24_ND4_0P75 $T=228520 131800 1 0 $X=227940 $Y=126100
X1858 421 423 1 416 422 62 62 UDB116SVT24_AN3B_0P75 $T=313200 121000 0 180 $X=306820 $Y=115300
X1859 441 2033 432 62 433 439 1 62 UDB116SVT24_OR3B_0P75 $T=344520 164200 0 180 $X=338140 $Y=158500
X1860 446 2034 451 62 279 444 1 62 UDB116SVT24_OR3B_0P75 $T=352640 164200 1 180 $X=346260 $Y=163900
X1861 377 928 380 62 1 250 2035 62 2641 UDB116SVT24_AOI21B_0P75 $T=262160 153400 0 0 $X=261580 $Y=153100
X1862 62 1 768 173 2036 ICV_18 $T=60320 175000 1 0 $X=59740 $Y=169300
X1863 62 1 769 882 2038 ICV_18 $T=117160 110200 0 0 $X=116580 $Y=109900
X1864 62 1 145 189 2040 ICV_18 $T=132240 175000 1 0 $X=131660 $Y=169300
X1865 62 1 770 525 2041 ICV_18 $T=136880 142600 1 0 $X=136300 $Y=136900
X1866 62 1 771 772 2042 ICV_18 $T=146160 175000 1 0 $X=145580 $Y=169300
X1867 62 1 772 488 2043 ICV_18 $T=147320 164200 0 0 $X=146740 $Y=163900
X1868 62 1 773 680 2044 ICV_18 $T=174000 131800 1 0 $X=173420 $Y=126100
X1869 62 1 774 477 2046 ICV_18 $T=208800 110200 1 0 $X=208220 $Y=104500
X1870 62 1 775 220 2047 ICV_18 $T=213440 164200 0 0 $X=212860 $Y=163900
X1871 62 1 598 235 2048 ICV_18 $T=236640 164200 1 0 $X=236060 $Y=158500
X1872 62 1 776 933 2049 ICV_18 $T=284200 110200 0 0 $X=283620 $Y=109900
X1873 62 1 777 938 2050 ICV_18 $T=305080 131800 0 0 $X=304500 $Y=131500
X1874 62 1 604 937 2051 ICV_18 $T=307400 142600 0 0 $X=306820 $Y=142300
X1875 62 1 778 945 2053 ICV_18 $T=329440 164200 1 0 $X=328860 $Y=158500
X1876 62 1 146 947 2054 ICV_18 $T=344520 131800 0 0 $X=343940 $Y=131500
X1877 62 1 779 714 2056 ICV_18 $T=365400 110200 0 0 $X=364820 $Y=109900
X1878 62 1 147 284 2057 ICV_18 $T=374680 175000 1 0 $X=374100 $Y=169300
X1879 62 1 148 286 2058 ICV_18 $T=390920 175000 1 0 $X=390340 $Y=169300
X1880 62 1 780 568 2060 ICV_18 $T=428040 164200 1 0 $X=427460 $Y=158500
X1881 5 7 882 62 342 9 1 62 UDB116SVT24_AO2BB2_0P75 $T=109040 110200 0 0 $X=108460 $Y=109900
X1882 6 7 880 62 339 9 1 62 UDB116SVT24_AO2BB2_0P75 $T=109040 121000 1 0 $X=108460 $Y=115300
X1883 12 7 893 62 346 9 1 62 UDB116SVT24_AO2BB2_0P75 $T=131080 110200 1 180 $X=122380 $Y=109900
X1884 19 7 902 62 353 9 1 62 UDB116SVT24_AO2BB2_0P75 $T=167040 131800 1 180 $X=158340 $Y=131500
X1885 7 355 911 62 354 9 1 62 UDB116SVT24_AO2BB2_0P75 $T=183280 175000 0 180 $X=174580 $Y=169300
X1886 21 7 917 62 23 9 1 62 UDB116SVT24_AO2BB2_0P75 $T=179800 99400 0 0 $X=179220 $Y=99100
X1887 22 7 910 62 357 9 1 62 UDB116SVT24_AO2BB2_0P75 $T=179800 131800 1 0 $X=179220 $Y=126100
X1888 358 7 913 62 209 9 1 62 UDB116SVT24_AO2BB2_0P75 $T=193720 175000 0 180 $X=185020 $Y=169300
X1889 369 429 945 62 946 429 1 62 UDB116SVT24_AO2BB2_0P75 $T=321320 164200 1 0 $X=320740 $Y=158500
X1890 452 50 956 62 562 49 1 62 UDB116SVT24_AO2BB2_0P75 $T=379320 164200 0 180 $X=370620 $Y=158500
X1891 442 781 432 62 437 1 62 UDB116SVT24_AO21B_0P75 $T=344520 153400 0 0 $X=343940 $Y=153100
X1892 52 782 51 62 461 1 62 UDB116SVT24_AO21B_0P75 $T=410640 175000 0 180 $X=403100 $Y=169300
X1893 2 62 3 63 877 13 1 62 UDB116SVT24_OAI22_0P75 $T=92800 153400 1 0 $X=92220 $Y=147700
X1894 4 62 3 63 876 2 1 62 UDB116SVT24_OAI22_0P75 $T=104400 164200 0 180 $X=98020 $Y=158500
X1895 10 62 3 63 886 4 1 62 UDB116SVT24_OAI22_0P75 $T=124120 164200 0 180 $X=117740 $Y=158500
X1896 343 62 3 63 896 190 1 62 UDB116SVT24_OAI22_0P75 $T=143840 121000 1 180 $X=137460 $Y=120700
X1897 15 62 3 63 890 343 1 62 UDB116SVT24_OAI22_0P75 $T=143840 131800 1 180 $X=137460 $Y=131500
X1898 13 62 3 63 892 15 1 62 UDB116SVT24_OAI22_0P75 $T=138040 164200 1 0 $X=137460 $Y=158500
X1899 348 62 3 63 891 6 1 62 UDB116SVT24_OAI22_0P75 $T=154280 121000 0 180 $X=147900 $Y=115300
X1900 352 62 3 63 909 351 1 62 UDB116SVT24_OAI22_0P75 $T=171680 121000 0 180 $X=165300 $Y=115300
X1901 351 62 3 63 903 348 1 62 UDB116SVT24_OAI22_0P75 $T=172840 110200 1 180 $X=166460 $Y=109900
X1902 19 62 3 63 918 358 1 62 UDB116SVT24_OAI22_0P75 $T=200680 131800 0 180 $X=194300 $Y=126100
X1903 358 62 3 63 921 355 1 62 UDB116SVT24_OAI22_0P75 $T=203000 153400 0 0 $X=202420 $Y=153100
X1904 3 62 355 63 922 700 1 62 UDB116SVT24_OAI22_0P75 $T=219240 164200 1 0 $X=218660 $Y=158500
X1905 469 62 56 55 966 290 1 62 UDB116SVT24_OAI22_0P75 $T=422240 164200 1 0 $X=421660 $Y=158500
X1906 62 1 149 177 ICV_19 $T=81200 175000 1 0 $X=80620 $Y=169300
X1907 62 1 338 583 ICV_19 $T=119480 131800 0 0 $X=118900 $Y=131500
X1908 62 1 783 897 ICV_19 $T=134560 131800 1 0 $X=133980 $Y=126100
X1909 62 1 784 899 ICV_19 $T=142680 110200 0 0 $X=142100 $Y=109900
X1910 62 1 785 915 ICV_19 $T=171680 142600 0 0 $X=171100 $Y=142300
X1911 62 1 786 492 ICV_19 $T=206480 131800 0 0 $X=205900 $Y=131500
X1912 62 1 787 491 ICV_19 $T=213440 153400 0 0 $X=212860 $Y=153100
X1913 62 1 150 225 ICV_19 $T=215760 142600 1 0 $X=215180 $Y=136900
X1914 62 1 151 233 ICV_19 $T=232000 164200 0 0 $X=231420 $Y=163900
X1915 62 1 788 499 ICV_19 $T=290000 110200 1 0 $X=289420 $Y=104500
X1916 62 1 406 261 ICV_19 $T=296960 121000 0 0 $X=296380 $Y=120700
X1917 62 1 152 558 ICV_19 $T=309720 164200 1 0 $X=309140 $Y=158500
X1918 62 1 153 603 ICV_19 $T=309720 175000 1 0 $X=309140 $Y=169300
X1919 62 1 441 751 ICV_19 $T=317840 142600 1 0 $X=317260 $Y=136900
X1920 62 1 789 641 ICV_19 $T=350320 164200 1 0 $X=349740 $Y=158500
X1921 62 1 790 956 ICV_19 $T=373520 164200 0 0 $X=372940 $Y=163900
X1922 62 1 791 472 ICV_19 $T=426880 164200 0 0 $X=426300 $Y=163900
X1923 383 377 1 372 2139 929 62 62 UDB116SVT24_AOI21_0P75 $T=266800 142600 1 180 $X=261580 $Y=142300
X1924 369 412 1 932 2140 426 62 62 UDB116SVT24_AOI21_0P75 $T=288840 164200 0 0 $X=288260 $Y=163900
X1925 62 437 45 432 46 1 62 UDB116SVT24_ND3_0P75 $T=342200 175000 1 0 $X=341620 $Y=169300
X1926 1 423 421 406 424 34 62 62 UDB116SVT24_NR4_0P75 $T=309720 121000 1 180 $X=303340 $Y=120700
X1927 469 465 1 55 467 964 466 62 62 2642 UDB116SVT24_AOI32_1 $T=422240 153400 1 180 $X=413540 $Y=153100
X1928 410 409 414 419 2119 1 62 792 62 UDB116SVT24_AO22_1 $T=293480 153400 0 180 $X=284780 $Y=147700
X1929 418 416 263 425 2120 1 62 793 62 UDB116SVT24_AO22_1 $T=305080 110200 0 180 $X=296380 $Y=104500
X1930 430 35 423 435 2123 1 62 794 62 UDB116SVT24_AO22_1 $T=330600 121000 0 180 $X=321900 $Y=115300
X1931 449 448 280 447 2127 1 62 795 62 UDB116SVT24_AO22_1 $T=358440 131800 1 180 $X=349740 $Y=131500
X1932 457 454 870 782 2129 1 62 154 62 UDB116SVT24_AO22_1 $T=393240 164200 0 0 $X=392660 $Y=163900
X1933 62 1 797 796 155 827 618 768 ICV_25 $T=49880 153400 0 0 $X=49300 $Y=153100
X1934 62 1 800 798 799 664 616 658 ICV_25 $T=77720 121000 0 0 $X=77140 $Y=120700
X1935 62 1 580 801 802 854 875 661 ICV_25 $T=78880 121000 1 0 $X=78300 $Y=115300
X1936 62 1 804 803 339 486 669 883 ICV_25 $T=106720 110200 1 0 $X=106140 $Y=104500
X1937 62 1 806 156 805 494 748 685 ICV_25 $T=178640 164200 1 0 $X=178060 $Y=158500
X1938 62 1 158 364 157 495 236 698 ICV_25 $T=234320 110200 1 0 $X=233740 $Y=104500
X1939 62 1 160 807 159 240 926 237 ICV_25 $T=235480 121000 1 0 $X=234900 $Y=115300
X1940 62 1 808 161 162 245 151 242 ICV_25 $T=243600 99400 1 0 $X=243020 $Y=93700
X1941 62 1 811 809 810 254 857 811 ICV_25 $T=262160 110200 1 0 $X=261580 $Y=104500
X1942 62 1 814 812 813 776 702 705 ICV_25 $T=265640 121000 1 0 $X=265060 $Y=115300
X1943 62 1 389 815 816 815 932 411 ICV_25 $T=279560 99400 1 0 $X=278980 $Y=93700
X1944 62 1 817 163 35 750 794 710 ICV_25 $T=317840 131800 1 0 $X=317260 $Y=126100
X1945 62 1 818 164 427 276 861 273 ICV_25 $T=319000 99400 1 0 $X=318420 $Y=93700
X1946 62 1 606 165 450 283 864 445 ICV_25 $T=358440 99400 1 0 $X=357860 $Y=93700
X1947 62 1 821 819 820 759 964 510 ICV_25 $T=401360 142600 0 0 $X=400780 $Y=142300
X1948 62 1 824 822 823 515 824 654 ICV_25 $T=453560 142600 0 0 $X=452980 $Y=142300
X1949 62 1 826 166 825 825 826 763 ICV_25 $T=479080 164200 0 0 $X=478500 $Y=163900
X1950 406 1 410 415 62 62 UDB116SVT24_NR2B_0P75 $T=290000 131800 1 0 $X=289420 $Y=126100
X1951 445 1 439 443 62 62 UDB116SVT24_NR2B_0P75 $T=352640 153400 0 180 $X=346260 $Y=147700
X1952 456 62 455 562 1 453 285 62 UDB116SVT24_OAI211_0P75 $T=392080 153400 0 180 $X=384540 $Y=147700
X1953 62 1 2 827 614 833 ICV_28 $T=63800 142600 0 0 $X=63220 $Y=142300
X1954 62 1 828 829 660 828 ICV_28 $T=67280 121000 0 0 $X=66700 $Y=120700
X1955 62 1 830 167 770 835 ICV_28 $T=67280 131800 0 0 $X=66700 $Y=131500
X1956 62 1 586 831 841 832 ICV_28 $T=67280 153400 0 0 $X=66700 $Y=153100
X1957 62 1 832 833 838 850 ICV_28 $T=69600 142600 0 0 $X=69020 $Y=142300
X1958 62 1 834 835 840 845 ICV_28 $T=73080 131800 0 0 $X=72500 $Y=131500
X1959 62 1 836 837 656 842 ICV_28 $T=73080 153400 0 0 $X=72500 $Y=153100
X1960 62 1 838 839 844 836 ICV_28 $T=75400 142600 0 0 $X=74820 $Y=142300
X1961 62 1 840 168 846 551 ICV_28 $T=78880 131800 0 0 $X=78300 $Y=131500
X1962 62 1 841 842 847 848 ICV_28 $T=78880 153400 0 0 $X=78300 $Y=153100
X1963 62 1 843 844 744 676 ICV_28 $T=81200 142600 0 0 $X=80620 $Y=142300
X1964 62 1 845 846 674 617 ICV_28 $T=84680 131800 0 0 $X=84100 $Y=131500
X1965 62 1 847 848 522 771 ICV_28 $T=84680 153400 0 0 $X=84100 $Y=153100
X1966 62 1 849 850 487 876 ICV_28 $T=87000 142600 0 0 $X=86420 $Y=142300
X1967 62 1 851 852 524 834 ICV_28 $T=90480 131800 0 0 $X=89900 $Y=131500
X1968 62 1 853 854 769 880 ICV_28 $T=103240 110200 0 0 $X=102660 $Y=109900
X1969 62 1 855 856 856 376 ICV_28 $T=255200 142600 0 0 $X=254620 $Y=142300
X1970 62 1 169 857 247 498 ICV_28 $T=259840 110200 0 0 $X=259260 $Y=109900
X1971 62 1 858 170 248 858 ICV_28 $T=259840 121000 0 0 $X=259260 $Y=120700
X1972 62 1 859 860 269 501 ICV_28 $T=316680 142600 0 0 $X=316100 $Y=142300
X1973 62 1 861 369 271 600 ICV_28 $T=319000 99400 0 0 $X=318420 $Y=99100
X1974 62 1 862 863 540 642 ICV_28 $T=344520 99400 0 0 $X=343940 $Y=99100
X1975 62 1 864 865 865 506 ICV_28 $T=358440 99400 0 0 $X=357860 $Y=99100
X1976 62 1 866 867 720 758 ICV_28 $T=380480 99400 0 0 $X=379900 $Y=99100
X1977 62 1 868 869 561 718 ICV_28 $T=386280 99400 0 0 $X=385700 $Y=99100
X1978 62 1 870 871 455 544 ICV_28 $T=404840 110200 0 0 $X=404260 $Y=109900
X1979 62 1 872 873 871 567 ICV_28 $T=410640 110200 0 0 $X=410060 $Y=109900
.ENDS
***************************************
.SUBCKT UDB116SVT24_CAPT_1
** N=8 EP=0 IP=0 FDC=0
*.CALIBRE ISOLATED NETS: VSS VPW_N VNW_P
.ENDS
***************************************
.SUBCKT ICV_30
** N=5 EP=0 IP=12 FDC=0
.ENDS
***************************************
.SUBCKT ICV_31
** N=5 EP=0 IP=8 FDC=0
.ENDS
***************************************
.SUBCKT ICV_32
** N=5 EP=0 IP=8 FDC=0
.ENDS
***************************************
.SUBCKT ICV_33
** N=5 EP=0 IP=8 FDC=0
.ENDS
***************************************
.SUBCKT ICV_34
** N=5 EP=0 IP=8 FDC=0
.ENDS
***************************************
.SUBCKT ICV_35 1 2 3 4 5 6 8
** N=13 EP=7 IP=16 FDC=11
M0 12 2 2 1 pfet_cnrx $X=5660 $Y=3400 $D=646
X1 1 2 3 5 8 ICV_18 $T=0 0 0 0 $X=-580 $Y=-300
X2 1 2 4 6 12 ICV_18 $T=5800 0 0 0 $X=5220 $Y=-300
.ENDS
***************************************
.SUBCKT ICV_36 1 2 3 4 5 6 8 11
*.CALIBRE ICV_CELL 9
** N=13 EP=8 IP=16 FDC=10
X0 1 2 3 5 8 ICV_18 $T=0 0 0 0 $X=-580 $Y=-300
X1 1 2 4 6 11 ICV_18 $T=0 10800 1 0 $X=-580 $Y=5100
.ENDS
***************************************
.SUBCKT ICV_37 1 2 3 4 7
** N=10 EP=5 IP=17 FDC=9
M0 2 2 3 1 pfet_cnrx $X=4500 $Y=3500 $D=646
X1 1 2 1 UDB116SVT24_FILL3 $T=4640 0 0 0 $X=4060 $Y=-300
X2 4 7 2 1 3 1 UDB116SVT24_BUF_L_1 $T=0 0 0 0 $X=-580 $Y=-300
.ENDS
***************************************
.SUBCKT ICV_38 1 2 3 4 5 6 7 8 9 10 13 14
** N=24 EP=12 IP=26 FDC=22
M0 21 2 2 1 pfet_cnrx $X=5660 $Y=3400 $D=646
M1 22 2 2 1 pfet_cnrx $X=5660 $Y=5900 $D=646
X2 1 2 3 4 7 8 13 14 ICV_36 $T=0 0 0 0 $X=-580 $Y=-300
X3 1 2 5 6 9 10 21 22 ICV_36 $T=5800 0 0 0 $X=5220 $Y=-300
.ENDS
***************************************
.SUBCKT ICV_39 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
+ 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
+ 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
+ 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80
+ 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100
+ 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120
+ 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140
+ 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160
+ 161 162 163 164 165 166
*.CALIBRE ICV_CELL 10
** N=1273 EP=166 IP=3299 FDC=6430
M0 2 2 2 1 pfet_cnrx $X=49740 $Y=59400 $D=645
M1 2 2 2 1 pfet_cnrx $X=49740 $Y=70200 $D=645
M2 2 2 2 1 pfet_cnrx $X=49740 $Y=81000 $D=645
M3 2 2 2 1 pfet_cnrx $X=49740 $Y=91800 $D=645
M4 1007 2 2 1 pfet_cnrx $X=55540 $Y=81000 $D=645
M5 2 2 2 1 pfet_cnrx $X=60180 $Y=48600 $D=645
M6 2 2 2 1 pfet_cnrx $X=60180 $Y=51300 $D=645
M7 2 2 2 1 pfet_cnrx $X=60180 $Y=62100 $D=645
M8 2 2 2 1 pfet_cnrx $X=60180 $Y=72900 $D=645
M9 2 2 2 1 pfet_cnrx $X=60180 $Y=83700 $D=645
M10 1008 2 2 1 pfet_cnrx $X=61340 $Y=83700 $D=645
M11 2 2 2 1 pfet_cnrx $X=67140 $Y=62100 $D=645
M12 1009 2 2 1 pfet_cnrx $X=68300 $Y=62100 $D=645
M13 2 2 2 1 pfet_cnrx $X=86860 $Y=59400 $D=645
M14 2 2 2 1 pfet_cnrx $X=86860 $Y=70200 $D=645
M15 2 2 2 1 pfet_cnrx $X=86860 $Y=91800 $D=645
M16 2 2 2 1 pfet_cnrx $X=97300 $Y=48600 $D=645
M17 2 2 2 1 pfet_cnrx $X=97300 $Y=72900 $D=645
M18 2 2 2 1 pfet_cnrx $X=105420 $Y=59400 $D=645
M19 27 2 2 1 pfet_cnrx $X=105420 $Y=91800 $D=645
M20 2 2 2 1 pfet_cnrx $X=115860 $Y=48600 $D=645
M21 621 2 2 1 pfet_cnrx $X=115860 $Y=81200 $D=645
M22 2 2 2 1 pfet_cnrx $X=119340 $Y=59400 $D=645
M23 2 2 180 1 pfet_cnrx $X=120500 $Y=81000 $D=645
M24 2 2 699 1 pfet_cnrx $X=132100 $Y=83700 $D=645
M25 9 2 2 1 pfet_cnrx $X=144860 $Y=83700 $D=645
M26 2 2 629 1 pfet_cnrx $X=149500 $Y=83700 $D=645
M27 2 2 373 1 pfet_cnrx $X=159940 $Y=91800 $D=645
M28 2 2 10 1 pfet_cnrx $X=168060 $Y=48600 $D=645
M29 636 2 2 1 pfet_cnrx $X=172700 $Y=83700 $D=645
M30 2 2 2 1 pfet_cnrx $X=177340 $Y=48600 $D=645
M31 2 2 184 1 pfet_cnrx $X=177340 $Y=83700 $D=645
M32 185 2 2 1 pfet_cnrx $X=188940 $Y=62100 $D=645
M33 207 2 2 1 pfet_cnrx $X=195900 $Y=70200 $D=645
M34 2 2 374 1 pfet_cnrx $X=198220 $Y=91800 $D=645
M35 2 2 186 1 pfet_cnrx $X=199380 $Y=51300 $D=645
M36 2 2 702 1 pfet_cnrx $X=199380 $Y=70200 $D=645
M37 763 2 2 1 pfet_cnrx $X=201700 $Y=92000 $D=645
M38 187 2 2 1 pfet_cnrx $X=207500 $Y=91800 $D=645
M39 209 2 2 1 pfet_cnrx $X=209820 $Y=48600 $D=645
M40 2 2 704 1 pfet_cnrx $X=213300 $Y=48600 $D=645
M41 210 2 2 1 pfet_cnrx $X=214460 $Y=72900 $D=645
M42 212 2 2 1 pfet_cnrx $X=215620 $Y=59400 $D=645
M43 2 2 188 1 pfet_cnrx $X=217940 $Y=62100 $D=645
M44 2 2 706 1 pfet_cnrx $X=217940 $Y=72900 $D=645
M45 2 2 708 1 pfet_cnrx $X=219100 $Y=59400 $D=645
M46 213 2 2 1 pfet_cnrx $X=221420 $Y=51300 $D=645
M47 713 2 2 1 pfet_cnrx $X=223740 $Y=70200 $D=645
M48 217 2 2 1 pfet_cnrx $X=223740 $Y=83700 $D=645
M49 2 2 710 1 pfet_cnrx $X=224900 $Y=51300 $D=645
M50 2 2 189 1 pfet_cnrx $X=227220 $Y=62100 $D=645
M51 2 2 714 1 pfet_cnrx $X=227220 $Y=83700 $D=645
M52 2 2 716 1 pfet_cnrx $X=233020 $Y=70200 $D=645
M53 2 2 11 1 pfet_cnrx $X=233020 $Y=83700 $D=645
M54 216 2 2 1 pfet_cnrx $X=235340 $Y=81000 $D=645
M55 2 2 190 1 pfet_cnrx $X=253900 $Y=48600 $D=645
M56 2 2 13 1 pfet_cnrx $X=253900 $Y=51300 $D=645
M57 2 2 14 1 pfet_cnrx $X=253900 $Y=72900 $D=645
M58 2 2 191 1 pfet_cnrx $X=259700 $Y=59400 $D=645
M59 2 2 192 1 pfet_cnrx $X=259700 $Y=62100 $D=645
M60 2 2 193 1 pfet_cnrx $X=268980 $Y=72900 $D=645
M61 2 2 15 1 pfet_cnrx $X=271300 $Y=81000 $D=645
M62 2 2 194 1 pfet_cnrx $X=273620 $Y=70200 $D=645
M63 2 2 195 1 pfet_cnrx $X=274780 $Y=51300 $D=645
M64 2 2 196 1 pfet_cnrx $X=279420 $Y=72900 $D=645
M65 2 2 197 1 pfet_cnrx $X=280580 $Y=48600 $D=645
M66 2 2 16 1 pfet_cnrx $X=288700 $Y=59400 $D=645
M67 2 2 198 1 pfet_cnrx $X=289860 $Y=62100 $D=645
M68 2 2 199 1 pfet_cnrx $X=289860 $Y=72900 $D=645
M69 719 2 2 1 pfet_cnrx $X=294500 $Y=72900 $D=645
M70 721 2 2 1 pfet_cnrx $X=296820 $Y=70200 $D=645
M71 2 2 221 1 pfet_cnrx $X=300300 $Y=70200 $D=645
M72 2 2 17 1 pfet_cnrx $X=306100 $Y=59400 $D=645
M73 2 2 200 1 pfet_cnrx $X=306100 $Y=62100 $D=645
M74 2 2 18 1 pfet_cnrx $X=306100 $Y=72900 $D=645
M75 2 2 1010 1 pfet_cnrx $X=309580 $Y=51300 $D=645
M76 2 2 2 1 pfet_cnrx $X=317700 $Y=48600 $D=645
M77 2 2 201 1 pfet_cnrx $X=317700 $Y=70200 $D=645
M78 2 2 202 1 pfet_cnrx $X=321180 $Y=72900 $D=645
M79 2 2 19 1 pfet_cnrx $X=330460 $Y=91800 $D=645
M80 2 2 20 1 pfet_cnrx $X=335100 $Y=81000 $D=645
M81 2 2 2 1 pfet_cnrx $X=336260 $Y=48600 $D=645
M82 2 2 21 1 pfet_cnrx $X=336260 $Y=83700 $D=645
M83 2 2 22 1 pfet_cnrx $X=347860 $Y=91800 $D=645
M84 2 2 2 1 pfet_cnrx $X=353660 $Y=81000 $D=645
M85 2 2 2 1 pfet_cnrx $X=354820 $Y=83700 $D=645
M86 2 2 1011 1 pfet_cnrx $X=364100 $Y=70200 $D=645
M87 2 2 23 1 pfet_cnrx $X=365260 $Y=91800 $D=645
M88 2 2 1012 1 pfet_cnrx $X=367580 $Y=72900 $D=645
M89 2 2 2 1 pfet_cnrx $X=373380 $Y=70200 $D=645
M90 1013 2 2 1 pfet_cnrx $X=374540 $Y=70200 $D=645
M91 2 2 203 1 pfet_cnrx $X=375700 $Y=81000 $D=645
M92 2 2 204 1 pfet_cnrx $X=375700 $Y=83700 $D=645
M93 2 2 2 1 pfet_cnrx $X=380340 $Y=59400 $D=645
M94 2 2 2 1 pfet_cnrx $X=380340 $Y=62100 $D=645
M95 1014 2 2 1 pfet_cnrx $X=382660 $Y=91800 $D=645
M96 2 2 2 1 pfet_cnrx $X=383820 $Y=51300 $D=645
M97 2 2 2 1 pfet_cnrx $X=404700 $Y=72900 $D=645
M98 2 2 2 1 pfet_cnrx $X=417460 $Y=62100 $D=645
M99 2 2 2 1 pfet_cnrx $X=417460 $Y=91800 $D=645
M100 2 2 2 1 pfet_cnrx $X=420940 $Y=51300 $D=645
M101 2 2 2 1 pfet_cnrx $X=420940 $Y=70200 $D=645
M102 2 2 1015 1 pfet_cnrx $X=422100 $Y=83700 $D=645
M103 2 2 2 1 pfet_cnrx $X=423260 $Y=48600 $D=645
M104 2 2 2 1 pfet_cnrx $X=423260 $Y=72900 $D=645
M105 2 2 2 1 pfet_cnrx $X=434860 $Y=70200 $D=645
M106 1016 2 2 1 pfet_cnrx $X=436020 $Y=70200 $D=645
M107 2 2 2 1 pfet_cnrx $X=437180 $Y=48600 $D=645
M108 2 2 2 1 pfet_cnrx $X=437180 $Y=72900 $D=645
M109 2 2 2 1 pfet_cnrx $X=448780 $Y=48600 $D=645
M110 2 2 2 1 pfet_cnrx $X=448780 $Y=51300 $D=645
M111 2 2 2 1 pfet_cnrx $X=448780 $Y=62100 $D=645
M112 2 2 2 1 pfet_cnrx $X=448780 $Y=72900 $D=645
M113 2 2 2 1 pfet_cnrx $X=448780 $Y=83700 $D=645
M114 2 2 2 1 pfet_cnrx $X=449940 $Y=81000 $D=645
M115 2 2 2 1 pfet_cnrx $X=454580 $Y=59400 $D=645
M116 2 2 2 1 pfet_cnrx $X=482420 $Y=70200 $D=645
M117 2 2 2 1 pfet_cnrx $X=491700 $Y=91800 $D=645
M118 2 2 2 1 pfet_cnrx $X=496340 $Y=70200 $D=645
M119 1017 2 2 1 pfet_cnrx $X=497500 $Y=70200 $D=645
M120 2 2 2 1 pfet_cnrx $X=523020 $Y=48600 $D=645
M121 2 2 2 1 pfet_cnrx $X=523020 $Y=51300 $D=645
M122 2 2 2 1 pfet_cnrx $X=523020 $Y=62100 $D=645
M123 2 2 2 1 pfet_cnrx $X=523020 $Y=72900 $D=645
M124 2 2 2 1 pfet_cnrx $X=523020 $Y=83700 $D=645
M125 2 2 2 1 pfet_cnrx $X=524180 $Y=81000 $D=645
M126 2 2 2 1 pfet_cnrx $X=528820 $Y=59400 $D=645
M127 1018 2 2 1 pfet_cnrx $X=532300 $Y=62100 $D=645
M128 2 2 2 1 pfet_cnrx $X=543900 $Y=70200 $D=645
M129 2 2 2 1 pfet_cnrx $X=560140 $Y=48600 $D=645
M130 2 2 2 1 pfet_cnrx $X=560140 $Y=51300 $D=645
M131 2 2 2 1 pfet_cnrx $X=560140 $Y=72900 $D=645
M132 2 2 2 1 pfet_cnrx $X=560140 $Y=83700 $D=645
M133 2 2 2 1 pfet_cnrx $X=561300 $Y=81000 $D=645
M134 2 2 2 1 pfet_cnrx $X=562460 $Y=70200 $D=645
M135 2 2 2 1 pfet_cnrx $X=567100 $Y=48600 $D=645
M136 2 2 2 1 pfet_cnrx $X=578700 $Y=48600 $D=645
M137 2 2 2 1 pfet_cnrx $X=578700 $Y=51300 $D=645
M138 2 2 2 1 pfet_cnrx $X=578700 $Y=59400 $D=645
M139 2 2 2 1 pfet_cnrx $X=578700 $Y=62100 $D=645
M140 2 2 2 1 pfet_cnrx $X=578700 $Y=70200 $D=645
M141 2 2 2 1 pfet_cnrx $X=578700 $Y=72900 $D=645
M142 2 2 2 1 pfet_cnrx $X=578700 $Y=81000 $D=645
M143 2 2 2 1 pfet_cnrx $X=578700 $Y=83700 $D=645
M144 2 2 2 1 pfet_cnrx $X=578700 $Y=91800 $D=645
M145 2 2 2 1 pfet_cnrx $X=49740 $Y=49000 $D=646
M146 2 2 2 1 pfet_cnrx $X=49740 $Y=51300 $D=646
M147 2 2 2 1 pfet_cnrx $X=49740 $Y=62100 $D=646
M148 2 2 2 1 pfet_cnrx $X=49740 $Y=72900 $D=646
M149 2 2 2 1 pfet_cnrx $X=49740 $Y=83700 $D=646
M150 2 2 2 1 pfet_cnrx $X=78740 $Y=51300 $D=646
M151 1019 2 2 1 pfet_cnrx $X=82220 $Y=51300 $D=646
M152 859 2 2 1 pfet_cnrx $X=88020 $Y=92000 $D=646
M153 618 2 2 1 pfet_cnrx $X=96140 $Y=83700 $D=646
M154 723 2 2 1 pfet_cnrx $X=99620 $Y=92000 $D=646
M155 2 2 5 1 pfet_cnrx $X=100780 $Y=83700 $D=646
M156 860 2 2 1 pfet_cnrx $X=101940 $Y=81200 $D=646
M157 724 2 2 1 pfet_cnrx $X=103100 $Y=72900 $D=646
M158 2 2 2 1 pfet_cnrx $X=105420 $Y=70500 $D=646
M159 983 2 2 1 pfet_cnrx $X=108900 $Y=70500 $D=646
M160 2 2 697 1 pfet_cnrx $X=108900 $Y=92100 $D=646
M161 984 2 2 1 pfet_cnrx $X=108900 $Y=72900 $D=646
M162 4 2 2 1 pfet_cnrx $X=113540 $Y=81200 $D=646
M163 726 2 2 1 pfet_cnrx $X=114700 $Y=62100 $D=646
M164 952 2 2 1 pfet_cnrx $X=114700 $Y=92100 $D=646
M165 914 2 2 1 pfet_cnrx $X=120500 $Y=59600 $D=646
M166 915 2 2 1 pfet_cnrx $X=120500 $Y=62100 $D=646
M167 920 2 2 1 pfet_cnrx $X=120500 $Y=70400 $D=646
M168 921 2 2 1 pfet_cnrx $X=120500 $Y=72900 $D=646
M169 728 2 2 1 pfet_cnrx $X=122820 $Y=48800 $D=646
M170 2 2 372 1 pfet_cnrx $X=122820 $Y=83700 $D=646
M171 623 2 2 1 pfet_cnrx $X=122820 $Y=92100 $D=646
M172 861 2 2 1 pfet_cnrx $X=125140 $Y=81200 $D=646
M173 24 2 2 1 pfet_cnrx $X=126300 $Y=83700 $D=646
M174 953 2 2 1 pfet_cnrx $X=126300 $Y=59600 $D=646
M175 955 2 2 1 pfet_cnrx $X=126300 $Y=62100 $D=646
M176 957 2 2 1 pfet_cnrx $X=126300 $Y=70400 $D=646
M177 959 2 2 1 pfet_cnrx $X=126300 $Y=72900 $D=646
M178 2 2 181 1 pfet_cnrx $X=127460 $Y=92100 $D=646
M179 29 2 2 1 pfet_cnrx $X=128620 $Y=83700 $D=646
M180 985 2 2 1 pfet_cnrx $X=128620 $Y=48800 $D=646
M181 986 2 2 1 pfet_cnrx $X=128620 $Y=51300 $D=646
M182 2 2 2 1 pfet_cnrx $X=133260 $Y=83700 $D=646
M183 626 2 2 1 pfet_cnrx $X=133260 $Y=92100 $D=646
M184 989 2 2 1 pfet_cnrx $X=134420 $Y=59700 $D=646
M185 990 2 2 1 pfet_cnrx $X=134420 $Y=62100 $D=646
M186 993 2 2 1 pfet_cnrx $X=134420 $Y=70500 $D=646
M187 994 2 2 1 pfet_cnrx $X=134420 $Y=72900 $D=646
M188 731 2 2 1 pfet_cnrx $X=136740 $Y=81200 $D=646
M189 2 2 182 1 pfet_cnrx $X=137900 $Y=92000 $D=646
M190 734 2 2 1 pfet_cnrx $X=139060 $Y=83700 $D=646
M191 995 2 2 1 pfet_cnrx $X=140220 $Y=48800 $D=646
M192 996 2 2 1 pfet_cnrx $X=140220 $Y=51300 $D=646
M193 961 2 2 1 pfet_cnrx $X=142540 $Y=81200 $D=646
M194 997 2 2 1 pfet_cnrx $X=146020 $Y=59600 $D=646
M195 998 2 2 1 pfet_cnrx $X=146020 $Y=62100 $D=646
M196 926 2 2 1 pfet_cnrx $X=146020 $Y=70400 $D=646
M197 927 2 2 1 pfet_cnrx $X=146020 $Y=72900 $D=646
M198 736 2 2 1 pfet_cnrx $X=150660 $Y=81300 $D=646
M199 810 2 2 1 pfet_cnrx $X=151820 $Y=51300 $D=646
M200 739 2 2 1 pfet_cnrx $X=151820 $Y=72900 $D=646
M201 2 2 6 1 pfet_cnrx $X=151820 $Y=83700 $D=646
M202 863 2 2 1 pfet_cnrx $X=151820 $Y=48800 $D=646
M203 962 2 2 1 pfet_cnrx $X=151820 $Y=70400 $D=646
M204 864 2 2 1 pfet_cnrx $X=152980 $Y=83700 $D=646
M205 963 2 2 1 pfet_cnrx $X=156460 $Y=81200 $D=646
M206 965 2 2 1 pfet_cnrx $X=157620 $Y=59600 $D=646
M207 968 2 2 1 pfet_cnrx $X=157620 $Y=62100 $D=646
M208 970 2 2 1 pfet_cnrx $X=157620 $Y=72900 $D=646
M209 701 2 2 1 pfet_cnrx $X=158780 $Y=51300 $D=646
M210 742 2 2 1 pfet_cnrx $X=159940 $Y=70500 $D=646
M211 2 2 206 1 pfet_cnrx $X=162260 $Y=51300 $D=646
M212 632 2 2 1 pfet_cnrx $X=163420 $Y=48800 $D=646
M213 866 2 2 1 pfet_cnrx $X=164580 $Y=81300 $D=646
M214 745 2 2 1 pfet_cnrx $X=164580 $Y=83700 $D=646
M215 633 2 2 1 pfet_cnrx $X=164580 $Y=92000 $D=646
M216 867 2 2 1 pfet_cnrx $X=165740 $Y=51300 $D=646
M217 999 2 2 1 pfet_cnrx $X=165740 $Y=59700 $D=646
M218 1000 2 2 1 pfet_cnrx $X=165740 $Y=62100 $D=646
M219 1002 2 2 1 pfet_cnrx $X=165740 $Y=72900 $D=646
M220 1001 2 2 1 pfet_cnrx $X=165740 $Y=70400 $D=646
M221 2 2 183 1 pfet_cnrx $X=169220 $Y=92100 $D=646
M222 7 2 2 1 pfet_cnrx $X=170380 $Y=83700 $D=646
M223 2 2 2 1 pfet_cnrx $X=175020 $Y=92100 $D=646
M224 812 2 2 1 pfet_cnrx $X=176180 $Y=81200 $D=646
M225 2 2 2 1 pfet_cnrx $X=176180 $Y=92000 $D=646
M226 869 2 2 1 pfet_cnrx $X=177340 $Y=51300 $D=646
M227 931 2 2 1 pfet_cnrx $X=177340 $Y=59600 $D=646
M228 932 2 2 1 pfet_cnrx $X=177340 $Y=62100 $D=646
M229 936 2 2 1 pfet_cnrx $X=177340 $Y=70400 $D=646
M230 937 2 2 1 pfet_cnrx $X=177340 $Y=72900 $D=646
M231 746 2 2 1 pfet_cnrx $X=178500 $Y=48800 $D=646
M232 8 2 2 1 pfet_cnrx $X=181980 $Y=83700 $D=646
M233 749 2 2 1 pfet_cnrx $X=183140 $Y=62100 $D=646
M234 815 2 2 1 pfet_cnrx $X=183140 $Y=70400 $D=646
M235 870 2 2 1 pfet_cnrx $X=183140 $Y=81300 $D=646
M236 972 2 2 1 pfet_cnrx $X=183140 $Y=59600 $D=646
M237 973 2 2 1 pfet_cnrx $X=183140 $Y=72900 $D=646
M238 816 2 2 1 pfet_cnrx $X=184300 $Y=48800 $D=646
M239 2 2 2 1 pfet_cnrx $X=184300 $Y=83700 $D=646
M240 2 2 2 1 pfet_cnrx $X=185460 $Y=83700 $D=646
M241 751 2 2 1 pfet_cnrx $X=188940 $Y=51300 $D=646
M242 753 2 2 1 pfet_cnrx $X=190100 $Y=70500 $D=646
M243 755 2 2 1 pfet_cnrx $X=191260 $Y=48900 $D=646
M244 873 2 2 1 pfet_cnrx $X=191260 $Y=72900 $D=646
M245 974 2 2 1 pfet_cnrx $X=191260 $Y=83700 $D=646
M246 758 2 2 1 pfet_cnrx $X=191260 $Y=59700 $D=646
M247 2 2 637 1 pfet_cnrx $X=193580 $Y=62100 $D=646
M248 640 2 2 1 pfet_cnrx $X=194740 $Y=51300 $D=646
M249 875 2 2 1 pfet_cnrx $X=194740 $Y=81200 $D=646
M250 876 2 2 1 pfet_cnrx $X=195900 $Y=62100 $D=646
M251 817 2 2 1 pfet_cnrx $X=197060 $Y=48800 $D=646
M252 819 2 2 1 pfet_cnrx $X=197060 $Y=59600 $D=646
M253 25 2 2 1 pfet_cnrx $X=199380 $Y=92000 $D=646
M254 761 2 2 1 pfet_cnrx $X=199380 $Y=83700 $D=646
M255 877 2 2 1 pfet_cnrx $X=200540 $Y=70400 $D=646
M256 879 2 2 1 pfet_cnrx $X=202860 $Y=72900 $D=646
M257 939 2 2 1 pfet_cnrx $X=204020 $Y=48900 $D=646
M258 880 2 2 1 pfet_cnrx $X=204020 $Y=59700 $D=646
M259 940 2 2 1 pfet_cnrx $X=204020 $Y=51300 $D=646
M260 821 2 2 1 pfet_cnrx $X=205180 $Y=83700 $D=646
M261 765 2 2 1 pfet_cnrx $X=206340 $Y=81200 $D=646
M262 768 2 2 1 pfet_cnrx $X=207500 $Y=62100 $D=646
M263 882 2 2 1 pfet_cnrx $X=209820 $Y=51300 $D=646
M264 1004 2 2 1 pfet_cnrx $X=212140 $Y=83700 $D=646
M265 2 2 641 1 pfet_cnrx $X=212140 $Y=92000 $D=646
M266 883 2 2 1 pfet_cnrx $X=212140 $Y=70400 $D=646
M267 1003 2 2 1 pfet_cnrx $X=212140 $Y=81200 $D=646
M268 644 2 2 1 pfet_cnrx $X=213300 $Y=62100 $D=646
M269 884 2 2 1 pfet_cnrx $X=213300 $Y=92000 $D=646
M270 885 2 2 1 pfet_cnrx $X=214460 $Y=48800 $D=646
M271 823 2 2 1 pfet_cnrx $X=219100 $Y=72900 $D=646
M272 886 2 2 1 pfet_cnrx $X=220260 $Y=59600 $D=646
M273 645 2 2 1 pfet_cnrx $X=222580 $Y=62100 $D=646
M274 888 2 2 1 pfet_cnrx $X=223740 $Y=81200 $D=646
M275 770 2 2 1 pfet_cnrx $X=224900 $Y=92000 $D=646
M276 773 2 2 1 pfet_cnrx $X=226060 $Y=48800 $D=646
M277 891 2 2 1 pfet_cnrx $X=226060 $Y=72900 $D=646
M278 889 2 2 1 pfet_cnrx $X=226060 $Y=51300 $D=646
M279 2 2 215 1 pfet_cnrx $X=227220 $Y=70500 $D=646
M280 646 2 2 1 pfet_cnrx $X=228380 $Y=83700 $D=646
M281 32 2 2 1 pfet_cnrx $X=229540 $Y=70500 $D=646
M282 975 2 2 1 pfet_cnrx $X=230700 $Y=92000 $D=646
M283 825 2 2 1 pfet_cnrx $X=231860 $Y=48800 $D=646
M284 827 2 2 1 pfet_cnrx $X=231860 $Y=59600 $D=646
M285 893 2 2 1 pfet_cnrx $X=231860 $Y=62100 $D=646
M286 647 2 2 1 pfet_cnrx $X=234180 $Y=70400 $D=646
M287 894 2 2 1 pfet_cnrx $X=237660 $Y=51300 $D=646
M288 895 2 2 1 pfet_cnrx $X=237660 $Y=72900 $D=646
M289 976 2 2 1 pfet_cnrx $X=237660 $Y=83700 $D=646
M290 2 2 2 1 pfet_cnrx $X=238820 $Y=49000 $D=646
M291 2 2 2 1 pfet_cnrx $X=238820 $Y=59800 $D=646
M292 2 2 12 1 pfet_cnrx $X=238820 $Y=70600 $D=646
M293 2 2 717 1 pfet_cnrx $X=238820 $Y=81400 $D=646
M294 776 2 2 1 pfet_cnrx $X=243460 $Y=62100 $D=646
M295 2 2 2 1 pfet_cnrx $X=245780 $Y=83700 $D=646
M296 648 2 2 1 pfet_cnrx $X=249260 $Y=48800 $D=646
M297 650 2 2 1 pfet_cnrx $X=249260 $Y=51300 $D=646
M298 778 2 2 1 pfet_cnrx $X=249260 $Y=70400 $D=646
M299 652 2 2 1 pfet_cnrx $X=249260 $Y=72900 $D=646
M300 780 2 2 1 pfet_cnrx $X=249260 $Y=92000 $D=646
M301 941 2 2 1 pfet_cnrx $X=249260 $Y=59600 $D=646
M302 942 2 2 1 pfet_cnrx $X=249260 $Y=62100 $D=646
M303 896 2 2 1 pfet_cnrx $X=249260 $Y=81200 $D=646
M304 2 2 843 1 pfet_cnrx $X=250420 $Y=83700 $D=646
M305 897 2 2 1 pfet_cnrx $X=251580 $Y=83700 $D=646
M306 654 2 2 1 pfet_cnrx $X=255060 $Y=59600 $D=646
M307 656 2 2 1 pfet_cnrx $X=255060 $Y=62100 $D=646
M308 977 2 2 1 pfet_cnrx $X=255060 $Y=70400 $D=646
M309 978 2 2 1 pfet_cnrx $X=255060 $Y=92000 $D=646
M310 782 2 2 1 pfet_cnrx $X=258540 $Y=72900 $D=646
M311 1005 2 2 1 pfet_cnrx $X=258540 $Y=48800 $D=646
M312 1006 2 2 1 pfet_cnrx $X=258540 $Y=51300 $D=646
M313 784 2 2 1 pfet_cnrx $X=260860 $Y=81200 $D=646
M314 901 2 2 1 pfet_cnrx $X=263180 $Y=92100 $D=646
M315 786 2 2 1 pfet_cnrx $X=263180 $Y=70500 $D=646
M316 899 2 2 1 pfet_cnrx $X=263180 $Y=83700 $D=646
M317 658 2 2 1 pfet_cnrx $X=264340 $Y=72900 $D=646
M318 943 2 2 1 pfet_cnrx $X=264340 $Y=59600 $D=646
M319 944 2 2 1 pfet_cnrx $X=264340 $Y=62100 $D=646
M320 660 2 2 1 pfet_cnrx $X=266660 $Y=81200 $D=646
M321 662 2 2 1 pfet_cnrx $X=268980 $Y=70400 $D=646
M322 664 2 2 1 pfet_cnrx $X=270140 $Y=51300 $D=646
M323 788 2 2 1 pfet_cnrx $X=270140 $Y=48800 $D=646
M324 979 2 2 1 pfet_cnrx $X=270140 $Y=59600 $D=646
M325 980 2 2 1 pfet_cnrx $X=270140 $Y=62100 $D=646
M326 665 2 2 1 pfet_cnrx $X=274780 $Y=72900 $D=646
M327 829 2 2 1 pfet_cnrx $X=274780 $Y=83700 $D=646
M328 832 2 2 1 pfet_cnrx $X=274780 $Y=92000 $D=646
M329 667 2 2 1 pfet_cnrx $X=275940 $Y=48800 $D=646
M330 789 2 2 1 pfet_cnrx $X=275940 $Y=81200 $D=646
M331 836 2 2 1 pfet_cnrx $X=278260 $Y=70400 $D=646
M332 792 2 2 1 pfet_cnrx $X=278260 $Y=59700 $D=646
M333 835 2 2 1 pfet_cnrx $X=278260 $Y=62100 $D=646
M334 948 2 2 1 pfet_cnrx $X=281740 $Y=83700 $D=646
M335 902 2 2 1 pfet_cnrx $X=281740 $Y=92100 $D=646
M336 947 2 2 1 pfet_cnrx $X=281740 $Y=81200 $D=646
M337 669 2 2 1 pfet_cnrx $X=284060 $Y=59600 $D=646
M338 671 2 2 1 pfet_cnrx $X=285220 $Y=62100 $D=646
M339 904 2 2 1 pfet_cnrx $X=285220 $Y=70500 $D=646
M340 672 2 2 1 pfet_cnrx $X=285220 $Y=72900 $D=646
M341 981 2 2 1 pfet_cnrx $X=287540 $Y=81200 $D=646
M342 906 2 2 1 pfet_cnrx $X=287540 $Y=83700 $D=646
M343 982 2 2 1 pfet_cnrx $X=293340 $Y=92000 $D=646
M344 908 2 2 1 pfet_cnrx $X=295660 $Y=81300 $D=646
M345 2 2 2 1 pfet_cnrx $X=297980 $Y=59700 $D=646
M346 2 2 219 1 pfet_cnrx $X=297980 $Y=72900 $D=646
M347 2 2 2 1 pfet_cnrx $X=299140 $Y=62100 $D=646
M348 794 2 2 1 pfet_cnrx $X=299140 $Y=83700 $D=646
M349 673 2 2 1 pfet_cnrx $X=301460 $Y=59700 $D=646
M350 674 2 2 1 pfet_cnrx $X=301460 $Y=62100 $D=646
M351 675 2 2 1 pfet_cnrx $X=301460 $Y=72900 $D=646
M352 909 2 2 1 pfet_cnrx $X=301460 $Y=70400 $D=646
M353 796 2 2 1 pfet_cnrx $X=301460 $Y=92100 $D=646
M354 2 2 2 1 pfet_cnrx $X=304940 $Y=83700 $D=646
M355 799 2 2 1 pfet_cnrx $X=307260 $Y=81200 $D=646
M356 801 2 2 1 pfet_cnrx $X=307260 $Y=83700 $D=646
M357 838 2 2 1 pfet_cnrx $X=307260 $Y=92000 $D=646
M358 803 2 2 1 pfet_cnrx $X=310740 $Y=72900 $D=646
M359 677 2 2 1 pfet_cnrx $X=313060 $Y=70400 $D=646
M360 950 2 2 1 pfet_cnrx $X=313060 $Y=81200 $D=646
M361 951 2 2 1 pfet_cnrx $X=313060 $Y=83700 $D=646
M362 910 2 2 1 pfet_cnrx $X=314220 $Y=92100 $D=646
M363 679 2 2 1 pfet_cnrx $X=316540 $Y=72900 $D=646
M364 841 2 2 1 pfet_cnrx $X=318860 $Y=83700 $D=646
M365 912 2 2 1 pfet_cnrx $X=318860 $Y=81200 $D=646
M366 805 2 2 1 pfet_cnrx $X=325820 $Y=83700 $D=646
M367 681 2 2 1 pfet_cnrx $X=325820 $Y=92000 $D=646
M368 683 2 2 1 pfet_cnrx $X=330460 $Y=81200 $D=646
M369 685 2 2 1 pfet_cnrx $X=331620 $Y=83700 $D=646
M370 842 2 2 1 pfet_cnrx $X=336260 $Y=92000 $D=646
M371 687 2 2 1 pfet_cnrx $X=343220 $Y=92100 $D=646
M372 2 2 2 1 pfet_cnrx $X=345540 $Y=48900 $D=646
M373 2 2 2 1 pfet_cnrx $X=349020 $Y=48900 $D=646
M374 806 2 2 1 pfet_cnrx $X=354820 $Y=92000 $D=646
M375 689 2 2 1 pfet_cnrx $X=360620 $Y=92000 $D=646
M376 2 2 2 1 pfet_cnrx $X=367580 $Y=81300 $D=646
M377 2 2 2 1 pfet_cnrx $X=368740 $Y=83700 $D=646
M378 690 2 2 1 pfet_cnrx $X=371060 $Y=81300 $D=646
M379 691 2 2 1 pfet_cnrx $X=371060 $Y=83700 $D=646
M380 913 2 2 1 pfet_cnrx $X=371060 $Y=92000 $D=646
M381 2 2 2 1 pfet_cnrx $X=434860 $Y=51300 $D=646
M382 2 2 2 1 pfet_cnrx $X=436020 $Y=62100 $D=646
M383 2 2 2 1 pfet_cnrx $X=436020 $Y=83700 $D=646
M384 2 2 2 1 pfet_cnrx $X=438340 $Y=49000 $D=646
M385 2 2 2 1 pfet_cnrx $X=438340 $Y=51300 $D=646
M386 2 2 2 1 pfet_cnrx $X=438340 $Y=62100 $D=646
M387 2 2 2 1 pfet_cnrx $X=438340 $Y=72900 $D=646
M388 2 2 2 1 pfet_cnrx $X=438340 $Y=83700 $D=646
M389 2 2 2 1 pfet_cnrx $X=565940 $Y=59700 $D=646
M390 2 2 2 1 pfet_cnrx $X=565940 $Y=92100 $D=646
M391 2 2 2 1 pfet_cnrx $X=568260 $Y=49000 $D=646
M392 2 2 2 1 pfet_cnrx $X=568260 $Y=59800 $D=646
M393 2 2 2 1 pfet_cnrx $X=568260 $Y=70600 $D=646
M394 2 2 2 1 pfet_cnrx $X=568260 $Y=81400 $D=646
M395 2 2 2 1 pfet_cnrx $X=568260 $Y=92200 $D=646
M396 2 2 2 1 pfet_cnrx $X=238820 $Y=92200 $D=646
X397 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 45400 0 0 $X=578260 $Y=45100
X398 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 56200 1 0 $X=578260 $Y=50500
X399 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 56200 0 0 $X=578260 $Y=55900
X400 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 67000 1 0 $X=578260 $Y=61300
X401 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 67000 0 0 $X=578260 $Y=66700
X402 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 77800 1 0 $X=578260 $Y=72100
X403 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 77800 0 0 $X=578260 $Y=77500
X404 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 88600 1 0 $X=578260 $Y=82900
X405 1 2 1 1 UDB116SVT24_CAPR9_1 $T=578840 88600 0 0 $X=578260 $Y=88300
X406 1 2 1 UDB116SVT24_FILL2 $T=193720 67000 1 0 $X=193140 $Y=61300
X407 1 2 1 UDB116SVT24_FILL2 $T=227360 67000 0 0 $X=226780 $Y=66700
X408 1 2 1 UDB116SVT24_FILL2 $T=299280 67000 1 0 $X=298700 $Y=61300
X409 1 2 1 UDB116SVT24_FILL2 $T=305080 88600 1 0 $X=304500 $Y=82900
X410 1 2 1 UDB116SVT24_FILL2 $T=368880 88600 1 0 $X=368300 $Y=82900
X411 1 2 1 UDB116SVT24_FILL2 $T=436160 67000 1 0 $X=435580 $Y=61300
X412 1 2 1 UDB116SVT24_FILL2 $T=436160 88600 1 0 $X=435580 $Y=82900
X413 1 2 1 UDB116SVT24_FILL2 $T=566080 56200 0 0 $X=565500 $Y=55900
X414 1 2 1 UDB116SVT24_FILL2 $T=566080 88600 0 0 $X=565500 $Y=88300
X415 1 UDB116SVT24_TAPSS $T=49880 45400 0 0 $X=49300 $Y=45100
X416 1 UDB116SVT24_TAPSS $T=49880 56200 1 0 $X=49300 $Y=50500
X417 1 UDB116SVT24_TAPSS $T=49880 67000 1 0 $X=49300 $Y=61300
X418 1 UDB116SVT24_TAPSS $T=49880 77800 1 0 $X=49300 $Y=72100
X419 1 UDB116SVT24_TAPSS $T=49880 88600 1 0 $X=49300 $Y=82900
X420 1 UDB116SVT24_TAPSS $T=238960 45400 0 0 $X=238380 $Y=45100
X421 1 UDB116SVT24_TAPSS $T=238960 56200 0 0 $X=238380 $Y=55900
X422 1 UDB116SVT24_TAPSS $T=238960 67000 0 0 $X=238380 $Y=66700
X423 1 UDB116SVT24_TAPSS $T=238960 77800 0 0 $X=238380 $Y=77500
X424 1 UDB116SVT24_TAPSS $T=238960 88600 0 0 $X=238380 $Y=88300
X425 1 UDB116SVT24_TAPSS $T=438480 45400 0 0 $X=437900 $Y=45100
X426 1 UDB116SVT24_TAPSS $T=438480 56200 1 0 $X=437900 $Y=50500
X427 1 UDB116SVT24_TAPSS $T=438480 67000 1 0 $X=437900 $Y=61300
X428 1 UDB116SVT24_TAPSS $T=438480 77800 1 0 $X=437900 $Y=72100
X429 1 UDB116SVT24_TAPSS $T=438480 88600 1 0 $X=437900 $Y=82900
X430 1 UDB116SVT24_TAPSS $T=568400 45400 0 0 $X=567820 $Y=45100
X431 1 UDB116SVT24_TAPSS $T=568400 56200 0 0 $X=567820 $Y=55900
X432 1 UDB116SVT24_TAPSS $T=568400 67000 0 0 $X=567820 $Y=66700
X433 1 UDB116SVT24_TAPSS $T=568400 77800 0 0 $X=567820 $Y=77500
X434 1 UDB116SVT24_TAPSS $T=568400 88600 0 0 $X=567820 $Y=88300
X461 1 2 1 UDB116SVT24_FILL3 $T=78880 56200 1 0 $X=78300 $Y=50500
X462 1 2 1 UDB116SVT24_FILL3 $T=105560 67000 0 0 $X=104980 $Y=66700
X463 1 2 1 UDB116SVT24_FILL3 $T=122960 88600 1 0 $X=122380 $Y=82900
X464 1 2 1 UDB116SVT24_FILL3 $T=162400 56200 1 0 $X=161820 $Y=50500
X465 1 2 1 UDB116SVT24_FILL3 $T=298120 56200 0 0 $X=297540 $Y=55900
X466 1 2 1 UDB116SVT24_FILL3 $T=298120 77800 1 0 $X=297540 $Y=72100
X467 1 2 1 UDB116SVT24_FILL3 $T=345680 45400 0 0 $X=345100 $Y=45100
X468 1 2 1 UDB116SVT24_FILL3 $T=367720 77800 0 0 $X=367140 $Y=77500
X469 1 2 1 UDB116SVT24_FILL3 $T=435000 56200 1 0 $X=434420 $Y=50500
X470 1 2 1 UDB116SVT24_FILL12 $T=105560 56200 0 0 $X=104980 $Y=55900
X471 1 2 1 UDB116SVT24_FILL12 $T=353800 77800 0 0 $X=353220 $Y=77500
X472 1 2 1 UDB116SVT24_FILL12 $T=354960 88600 1 0 $X=354380 $Y=82900
X473 1 2 1 UDB116SVT24_FILL12 $T=421080 56200 1 0 $X=420500 $Y=50500
X474 1 2 1 UDB116SVT24_FILL12 $T=421080 67000 0 0 $X=420500 $Y=66700
X475 1 2 1 UDB116SVT24_FILL12 $T=422240 88600 1 0 $X=421660 $Y=82900
X476 1 2 1 UDB116SVT24_FILL12 $T=423400 45400 0 0 $X=422820 $Y=45100
X477 1 2 1 UDB116SVT24_FILL12 $T=423400 77800 1 0 $X=422820 $Y=72100
X478 1 2 1 UDB116SVT24_FILL12 $T=482560 67000 0 0 $X=481980 $Y=66700
X479 1 2 1 UDB116SVT24_FILL6 $T=60320 67000 1 0 $X=59740 $Y=61300
X480 1 2 1 UDB116SVT24_FILL6 $T=116000 45400 0 0 $X=115420 $Y=45100
X481 1 2 1 UDB116SVT24_FILL6 $T=348000 88600 0 0 $X=347420 $Y=88300
X482 1 2 1 UDB116SVT24_FILL6 $T=560280 45400 0 0 $X=559700 $Y=45100
X483 1 2 1 UDB116SVT24_FILL6 $T=561440 77800 0 0 $X=560860 $Y=77500
X484 1 2 1 UDB116SVT24_FILL16 $T=60320 56200 1 0 $X=59740 $Y=50500
X485 1 2 1 UDB116SVT24_FILL16 $T=87000 56200 0 0 $X=86420 $Y=55900
X486 1 2 1 UDB116SVT24_FILL16 $T=87000 67000 0 0 $X=86420 $Y=66700
X487 1 2 1 UDB116SVT24_FILL16 $T=97440 45400 0 0 $X=96860 $Y=45100
X488 1 2 1 UDB116SVT24_FILL16 $T=317840 45400 0 0 $X=317260 $Y=45100
X489 1 2 1 UDB116SVT24_FILL16 $T=335240 77800 0 0 $X=334660 $Y=77500
X490 1 2 1 UDB116SVT24_FILL16 $T=336400 88600 1 0 $X=335820 $Y=82900
X491 1 2 1 UDB116SVT24_FILL16 $T=404840 77800 1 0 $X=404260 $Y=72100
X492 1 2 1 UDB116SVT24_FILL16 $T=417600 67000 1 0 $X=417020 $Y=61300
X493 1 2 1 UDB116SVT24_FILL16 $T=544040 67000 0 0 $X=543460 $Y=66700
X494 1 2 1 UDB116SVT24_FILL16 $T=560280 56200 1 0 $X=559700 $Y=50500
X495 1 2 1 UDB116SVT24_FILL16 $T=560280 77800 1 0 $X=559700 $Y=72100
X496 1 2 1 UDB116SVT24_FILL16 $T=560280 88600 1 0 $X=559700 $Y=82900
X497 1 2 1 UDB116SVT24_FILL8 $T=168200 45400 0 0 $X=167620 $Y=45100
X498 1 2 1 UDB116SVT24_FILL8 $T=288840 56200 0 0 $X=288260 $Y=55900
X499 1 2 1 UDB116SVT24_FILL8 $T=290000 67000 1 0 $X=289420 $Y=61300
X500 1 2 1 UDB116SVT24_FILL8 $T=336400 45400 0 0 $X=335820 $Y=45100
X501 1 2 1 UDB116SVT24_FILL8 $T=364240 67000 0 0 $X=363660 $Y=66700
X502 1 2 1 UDB116SVT24_FILL8 $T=523160 67000 1 0 $X=522580 $Y=61300
X503 1 2 1 UDB116SVT24_FILL32 $T=49880 56200 0 0 $X=49300 $Y=55900
X504 1 2 1 UDB116SVT24_FILL32 $T=49880 67000 0 0 $X=49300 $Y=66700
X505 1 2 1 UDB116SVT24_FILL32 $T=49880 88600 0 0 $X=49300 $Y=88300
X506 1 2 1 UDB116SVT24_FILL32 $T=60320 45400 0 0 $X=59740 $Y=45100
X507 1 2 1 UDB116SVT24_FILL32 $T=60320 77800 1 0 $X=59740 $Y=72100
X508 1 2 1 UDB116SVT24_FILL32 $T=280720 45400 0 0 $X=280140 $Y=45100
X509 1 2 1 UDB116SVT24_FILL32 $T=367720 77800 1 0 $X=367140 $Y=72100
X510 1 2 1 UDB116SVT24_FILL32 $T=380480 67000 1 0 $X=379900 $Y=61300
X511 1 2 1 UDB116SVT24_FILL32 $T=383960 56200 1 0 $X=383380 $Y=50500
X512 1 2 1 UDB116SVT24_FILL32 $T=523160 45400 0 0 $X=522580 $Y=45100
X513 1 2 1 UDB116SVT24_FILL32 $T=523160 56200 1 0 $X=522580 $Y=50500
X514 1 2 1 UDB116SVT24_FILL32 $T=523160 77800 1 0 $X=522580 $Y=72100
X515 1 2 1 UDB116SVT24_FILL32 $T=523160 88600 1 0 $X=522580 $Y=82900
X516 1 2 1 UDB116SVT24_FILL32 $T=524320 77800 0 0 $X=523740 $Y=77500
X517 1 2 1 UDB116SVT24_FILL32 $T=528960 56200 0 0 $X=528380 $Y=55900
X518 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=55680 77800 0 0 $X=55100 $Y=77500
X519 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=68440 67000 1 0 $X=67860 $Y=61300
X520 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=82360 56200 1 0 $X=81780 $Y=50500
X521 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=364240 67000 1 180 $X=317260 $Y=66700
X522 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=367720 77800 0 180 $X=320740 $Y=72100
X523 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=374680 67000 0 0 $X=374100 $Y=66700
X524 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=422240 88600 0 180 $X=375260 $Y=82900
X525 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=436160 67000 0 0 $X=435580 $Y=66700
X526 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=497640 67000 0 0 $X=497060 $Y=66700
X527 1 2 1 UDB116SVT24_DCAP_ECOCT_16 $T=532440 67000 1 0 $X=531860 $Y=61300
X528 1 2 1 UDB116SVT24_FILL64 $T=306240 56200 0 0 $X=305660 $Y=55900
X529 1 2 1 UDB116SVT24_FILL64 $T=306240 67000 1 0 $X=305660 $Y=61300
X530 1 2 1 UDB116SVT24_FILL64 $T=309720 56200 1 0 $X=309140 $Y=50500
X531 1 2 1 UDB116SVT24_FILL64 $T=349160 45400 0 0 $X=348580 $Y=45100
X532 1 2 1 UDB116SVT24_FILL64 $T=375840 77800 0 0 $X=375260 $Y=77500
X533 1 2 1 UDB116SVT24_FILL64 $T=380480 56200 0 0 $X=379900 $Y=55900
X534 1 2 1 UDB116SVT24_FILL64 $T=417600 88600 0 0 $X=417020 $Y=88300
X535 1 2 1 UDB116SVT24_FILL64 $T=448920 45400 0 0 $X=448340 $Y=45100
X536 1 2 1 UDB116SVT24_FILL64 $T=448920 56200 1 0 $X=448340 $Y=50500
X537 1 2 1 UDB116SVT24_FILL64 $T=448920 67000 1 0 $X=448340 $Y=61300
X538 1 2 1 UDB116SVT24_FILL64 $T=448920 77800 1 0 $X=448340 $Y=72100
X539 1 2 1 UDB116SVT24_FILL64 $T=448920 88600 1 0 $X=448340 $Y=82900
X540 1 2 1 UDB116SVT24_FILL64 $T=450080 77800 0 0 $X=449500 $Y=77500
X541 1 2 1 UDB116SVT24_FILL64 $T=454720 56200 0 0 $X=454140 $Y=55900
X542 1 2 1 UDB116SVT24_FILL64 $T=491840 88600 0 0 $X=491260 $Y=88300
X543 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 45400 0 0 $X=39440 $Y=45100
X544 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 56200 1 0 $X=39440 $Y=50500
X545 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 56200 0 0 $X=39440 $Y=55900
X546 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 67000 1 0 $X=39440 $Y=61300
X547 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 67000 0 0 $X=39440 $Y=66700
X548 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 77800 1 0 $X=39440 $Y=72100
X549 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 77800 0 0 $X=39440 $Y=77500
X550 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 88600 1 0 $X=39440 $Y=82900
X551 1 2 1 1 UDB116SVT24_CAPL9_1 $T=39440 88600 0 0 $X=39440 $Y=88300
X552 1 2 1 UDB116SVT24_FILL5 $T=49880 77800 0 0 $X=49300 $Y=77500
X553 1 2 1 UDB116SVT24_FILL5 $T=97440 77800 1 0 $X=96860 $Y=72100
X554 1 2 1 UDB116SVT24_FILL5 $T=269120 77800 1 0 $X=268540 $Y=72100
X555 1 2 1 UDB116SVT24_FILL5 $T=279560 77800 1 0 $X=278980 $Y=72100
X556 1 2 1 UDB116SVT24_FILL5 $T=330600 88600 0 0 $X=330020 $Y=88300
X557 1 2 1 UDB116SVT24_FILL5 $T=365400 88600 0 0 $X=364820 $Y=88300
X558 1 2 1 UDB116SVT24_FILL5 $T=562600 67000 0 0 $X=562020 $Y=66700
X559 1 2 1 UDB116SVT24_DCAP_ECOCT_12 $T=61480 88600 1 0 $X=60900 $Y=82900
X560 1 2 1 UDB116SVT24_DCAP_ECOCT_12 $T=309720 56200 0 180 $X=274340 $Y=50500
X561 1 2 1 UDB116SVT24_DCAP_ECOCT_12 $T=382800 88600 0 0 $X=382220 $Y=88300
X562 1 2 1 UDB116SVT24_FILL4 $T=120640 77800 0 0 $X=120060 $Y=77500
X563 1 2 1 UDB116SVT24_FILL4 $T=160080 88600 0 0 $X=159500 $Y=88300
X564 1 2 1 UDB116SVT24_FILL4 $T=177480 88600 1 0 $X=176900 $Y=82900
X565 1 2 1 UDB116SVT24_FILL4 $T=199520 56200 1 0 $X=198940 $Y=50500
X566 1 2 1 UDB116SVT24_FILL4 $T=218080 67000 1 0 $X=217500 $Y=61300
X567 1 2 1 UDB116SVT24_FILL4 $T=227360 67000 1 0 $X=226780 $Y=61300
X568 1 2 1 UDB116SVT24_FILL4 $T=233160 88600 1 0 $X=232580 $Y=82900
X569 1 2 1 UDB116SVT24_FILL4 $T=254040 45400 0 0 $X=253460 $Y=45100
X570 1 2 1 UDB116SVT24_FILL4 $T=254040 56200 1 0 $X=253460 $Y=50500
X571 1 2 1 UDB116SVT24_FILL4 $T=254040 77800 1 0 $X=253460 $Y=72100
X572 1 2 1 UDB116SVT24_FILL4 $T=259840 56200 0 0 $X=259260 $Y=55900
X573 1 2 1 UDB116SVT24_FILL4 $T=259840 67000 1 0 $X=259260 $Y=61300
X574 1 2 1 UDB116SVT24_FILL4 $T=271440 77800 0 0 $X=270860 $Y=77500
X575 1 2 1 UDB116SVT24_FILL4 $T=273760 67000 0 0 $X=273180 $Y=66700
X576 1 2 1 UDB116SVT24_FILL4 $T=290000 77800 1 0 $X=289420 $Y=72100
X577 1 2 1 UDB116SVT24_FILL4 $T=306240 77800 1 0 $X=305660 $Y=72100
X578 24 618 2 1 5 1 UDB116SVT24_BUF_L_1 $T=96280 88600 1 0 $X=95700 $Y=82900
X579 94 621 2 1 180 1 UDB116SVT24_BUF_L_1 $T=116000 77800 0 0 $X=115420 $Y=77500
X580 262 623 2 1 181 1 UDB116SVT24_BUF_L_1 $T=122960 88600 0 0 $X=122380 $Y=88300
X581 363 626 2 1 182 1 UDB116SVT24_BUF_L_1 $T=133400 88600 0 0 $X=132820 $Y=88300
X582 101 629 2 1 9 1 UDB116SVT24_BUF_L_1 $T=149640 88600 0 180 $X=144420 $Y=82900
X583 106 632 2 1 10 1 UDB116SVT24_BUF_L_1 $T=163560 45400 0 0 $X=162980 $Y=45100
X584 107 633 2 1 183 1 UDB116SVT24_BUF_L_1 $T=164720 88600 0 0 $X=164140 $Y=88300
X585 368 636 2 1 184 1 UDB116SVT24_BUF_L_1 $T=172840 88600 1 0 $X=172260 $Y=82900
X586 186 637 2 1 185 1 UDB116SVT24_BUF_L_1 $T=193720 67000 0 180 $X=188500 $Y=61300
X587 117 640 2 1 186 1 UDB116SVT24_BUF_L_1 $T=194880 56200 1 0 $X=194300 $Y=50500
X588 8 641 2 1 187 1 UDB116SVT24_BUF_L_1 $T=212280 88600 1 180 $X=207060 $Y=88300
X589 123 644 2 1 188 1 UDB116SVT24_BUF_L_1 $T=213440 67000 1 0 $X=212860 $Y=61300
X590 252 645 2 1 189 1 UDB116SVT24_BUF_L_1 $T=222720 67000 1 0 $X=222140 $Y=61300
X591 128 646 2 1 11 1 UDB116SVT24_BUF_L_1 $T=228520 88600 1 0 $X=227940 $Y=82900
X592 129 647 2 1 12 1 UDB116SVT24_BUF_L_1 $T=234320 67000 0 0 $X=233740 $Y=66700
X593 133 648 2 1 190 1 UDB116SVT24_BUF_L_1 $T=249400 45400 0 0 $X=248820 $Y=45100
X594 134 650 2 1 13 1 UDB116SVT24_BUF_L_1 $T=249400 56200 1 0 $X=248820 $Y=50500
X595 329 652 2 1 14 1 UDB116SVT24_BUF_L_1 $T=249400 77800 1 0 $X=248820 $Y=72100
X596 317 654 2 1 191 1 UDB116SVT24_BUF_L_1 $T=255200 56200 0 0 $X=254620 $Y=55900
X597 237 656 2 1 192 1 UDB116SVT24_BUF_L_1 $T=255200 67000 1 0 $X=254620 $Y=61300
X598 330 658 2 1 193 1 UDB116SVT24_BUF_L_1 $T=264480 77800 1 0 $X=263900 $Y=72100
X599 194 660 2 1 15 1 UDB116SVT24_BUF_L_1 $T=266800 77800 0 0 $X=266220 $Y=77500
X600 297 662 2 1 194 1 UDB116SVT24_BUF_L_1 $T=269120 67000 0 0 $X=268540 $Y=66700
X601 355 664 2 1 195 1 UDB116SVT24_BUF_L_1 $T=270280 56200 1 0 $X=269700 $Y=50500
X602 296 665 2 1 196 1 UDB116SVT24_BUF_L_1 $T=274920 77800 1 0 $X=274340 $Y=72100
X603 144 667 2 1 197 1 UDB116SVT24_BUF_L_1 $T=276080 45400 0 0 $X=275500 $Y=45100
X604 295 669 2 1 16 1 UDB116SVT24_BUF_L_1 $T=284200 56200 0 0 $X=283620 $Y=55900
X605 299 671 2 1 198 1 UDB116SVT24_BUF_L_1 $T=285360 67000 1 0 $X=284780 $Y=61300
X606 198 672 2 1 199 1 UDB116SVT24_BUF_L_1 $T=285360 77800 1 0 $X=284780 $Y=72100
X607 200 673 2 1 17 1 UDB116SVT24_BUF_L_1 $T=301600 56200 0 0 $X=301020 $Y=55900
X608 150 674 2 1 200 1 UDB116SVT24_BUF_L_1 $T=301600 67000 1 0 $X=301020 $Y=61300
X609 221 675 2 1 18 1 UDB116SVT24_BUF_L_1 $T=301600 77800 1 0 $X=301020 $Y=72100
X610 246 677 2 1 201 1 UDB116SVT24_BUF_L_1 $T=313200 67000 0 0 $X=312620 $Y=66700
X611 244 679 2 1 202 1 UDB116SVT24_BUF_L_1 $T=316680 77800 1 0 $X=316100 $Y=72100
X612 304 681 2 1 19 1 UDB116SVT24_BUF_L_1 $T=325960 88600 0 0 $X=325380 $Y=88300
X613 159 683 2 1 20 1 UDB116SVT24_BUF_L_1 $T=330600 77800 0 0 $X=330020 $Y=77500
X614 160 685 2 1 21 1 UDB116SVT24_BUF_L_1 $T=331760 88600 1 0 $X=331180 $Y=82900
X615 162 687 2 1 22 1 UDB116SVT24_BUF_L_1 $T=343360 88600 0 0 $X=342780 $Y=88300
X616 164 689 2 1 23 1 UDB116SVT24_BUF_L_1 $T=360760 88600 0 0 $X=360180 $Y=88300
X617 165 690 2 1 203 1 UDB116SVT24_BUF_L_1 $T=371200 77800 0 0 $X=370620 $Y=77500
X618 203 691 2 1 204 1 UDB116SVT24_BUF_L_1 $T=371200 88600 1 0 $X=370620 $Y=82900
X619 1 2 174 4 1 UDB116SVT24_INV_0P75 $T=116000 77800 1 180 $X=113100 $Y=77500
X620 1 2 175 24 1 UDB116SVT24_INV_0P75 $T=128760 88600 0 180 $X=125860 $Y=82900
X621 1 2 176 6 1 UDB116SVT24_INV_0P75 $T=149640 88600 1 0 $X=149060 $Y=82900
X622 1 2 177 7 1 UDB116SVT24_INV_0P75 $T=172840 88600 0 180 $X=169940 $Y=82900
X623 1 2 178 8 1 UDB116SVT24_INV_0P75 $T=184440 88600 0 180 $X=181540 $Y=82900
X624 1 2 179 25 1 UDB116SVT24_INV_0P75 $T=201840 88600 1 180 $X=198940 $Y=88300
X625 26 697 1 2 27 1 UDB116SVT24_BUF_1 $T=109040 88600 1 180 $X=104980 $Y=88300
X626 28 699 1 2 29 1 UDB116SVT24_BUF_1 $T=132240 88600 0 180 $X=128180 $Y=82900
X627 205 701 1 2 206 1 UDB116SVT24_BUF_1 $T=158920 56200 1 0 $X=158340 $Y=50500
X628 30 702 1 2 207 1 UDB116SVT24_BUF_1 $T=199520 67000 1 180 $X=195460 $Y=66700
X629 208 704 1 2 209 1 UDB116SVT24_BUF_1 $T=213440 45400 1 180 $X=209380 $Y=45100
X630 207 706 1 2 210 1 UDB116SVT24_BUF_1 $T=218080 77800 0 180 $X=214020 $Y=72100
X631 211 708 1 2 212 1 UDB116SVT24_BUF_1 $T=219240 56200 1 180 $X=215180 $Y=55900
X632 209 710 1 2 213 1 UDB116SVT24_BUF_1 $T=225040 56200 0 180 $X=220980 $Y=50500
X633 214 713 1 2 215 1 UDB116SVT24_BUF_1 $T=223880 67000 0 0 $X=223300 $Y=66700
X634 216 714 1 2 217 1 UDB116SVT24_BUF_1 $T=227360 88600 0 180 $X=223300 $Y=82900
X635 31 716 1 2 32 1 UDB116SVT24_BUF_1 $T=233160 67000 1 180 $X=229100 $Y=66700
X636 210 717 1 2 216 1 UDB116SVT24_BUF_1 $T=238960 77800 1 180 $X=234900 $Y=77500
X637 218 719 1 2 219 1 UDB116SVT24_BUF_1 $T=294640 77800 1 0 $X=294060 $Y=72100
X638 220 721 1 2 221 1 UDB116SVT24_BUF_1 $T=296960 67000 0 0 $X=296380 $Y=66700
X639 181 372 50 359 96 2 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=100920 88600 1 0 $X=100340 $Y=82900
X640 225 373 50 366 96 2 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=138040 88600 0 0 $X=137460 $Y=88300
X641 268 374 50 369 96 2 1 1 UDB116SVT24_FDPRBQ_V2_1 $T=176320 88600 0 0 $X=175740 $Y=88300
X642 1 2 33 92 723 ICV_18 $T=99760 88600 0 0 $X=99180 $Y=88300
X643 1 2 174 222 724 ICV_18 $T=103240 77800 1 0 $X=102660 $Y=72100
X644 1 2 222 259 726 ICV_18 $T=114840 67000 1 0 $X=114260 $Y=61300
X645 1 2 223 360 728 ICV_18 $T=122960 45400 0 0 $X=122380 $Y=45100
X646 1 2 224 364 731 ICV_18 $T=136880 77800 0 0 $X=136300 $Y=77500
X647 1 2 225 182 734 ICV_18 $T=139200 88600 1 0 $X=138620 $Y=82900
X648 1 2 226 366 736 ICV_18 $T=150800 77800 0 0 $X=150220 $Y=77500
X649 1 2 34 224 739 ICV_18 $T=151960 77800 1 0 $X=151380 $Y=72100
X650 1 2 35 307 742 ICV_18 $T=160080 67000 0 0 $X=159500 $Y=66700
X651 1 2 227 311 745 ICV_18 $T=164720 88600 1 0 $X=164140 $Y=82900
X652 1 2 36 113 746 ICV_18 $T=178640 45400 0 0 $X=178060 $Y=45100
X653 1 2 228 313 749 ICV_18 $T=183280 67000 1 0 $X=182700 $Y=61300
X654 1 2 229 217 751 ICV_18 $T=189080 56200 1 0 $X=188500 $Y=50500
X655 1 2 230 185 753 ICV_18 $T=190240 67000 0 0 $X=189660 $Y=66700
X656 1 2 231 314 755 ICV_18 $T=191400 45400 0 0 $X=190820 $Y=45100
X657 1 2 232 116 758 ICV_18 $T=191400 56200 0 0 $X=190820 $Y=55900
X658 1 2 233 118 761 ICV_18 $T=199520 88600 1 0 $X=198940 $Y=82900
X659 1 2 234 119 763 ICV_18 $T=201840 88600 0 0 $X=201260 $Y=88300
X660 1 2 37 275 765 ICV_18 $T=206480 77800 0 0 $X=205900 $Y=77500
X661 1 2 179 280 768 ICV_18 $T=207640 67000 1 0 $X=207060 $Y=61300
X662 1 2 235 126 770 ICV_18 $T=225040 88600 0 0 $X=224460 $Y=88300
X663 1 2 236 253 773 ICV_18 $T=226200 45400 0 0 $X=225620 $Y=45100
X664 1 2 237 291 776 ICV_18 $T=243600 67000 1 0 $X=243020 $Y=61300
X665 1 2 238 135 778 ICV_18 $T=249400 67000 0 0 $X=248820 $Y=66700
X666 1 2 239 136 780 ICV_18 $T=249400 88600 0 0 $X=248820 $Y=88300
X667 1 2 240 239 782 ICV_18 $T=258680 77800 1 0 $X=258100 $Y=72100
X668 1 2 241 139 784 ICV_18 $T=261000 77800 0 0 $X=260420 $Y=77500
X669 1 2 38 140 786 ICV_18 $T=263320 67000 0 0 $X=262740 $Y=66700
X670 1 2 242 195 788 ICV_18 $T=270280 45400 0 0 $X=269700 $Y=45100
X671 1 2 243 145 789 ICV_18 $T=276080 77800 0 0 $X=275500 $Y=77500
X672 1 2 39 255 792 ICV_18 $T=278400 56200 0 0 $X=277820 $Y=55900
X673 1 2 40 149 794 ICV_18 $T=299280 88600 1 0 $X=298700 $Y=82900
X674 1 2 244 152 796 ICV_18 $T=301600 88600 0 0 $X=301020 $Y=88300
X675 1 2 245 153 799 ICV_18 $T=307400 77800 0 0 $X=306820 $Y=77500
X676 1 2 246 202 801 ICV_18 $T=307400 88600 1 0 $X=306820 $Y=82900
X677 1 2 247 201 803 ICV_18 $T=310880 77800 1 0 $X=310300 $Y=72100
X678 1 2 41 158 805 ICV_18 $T=325960 88600 1 0 $X=325380 $Y=82900
X679 1 2 42 163 806 ICV_18 $T=354960 88600 0 0 $X=354380 $Y=88300
X680 4 1 3 93 357 258 2 1 UDB116SVT24_OAI22_0P75 $T=114840 88600 1 180 $X=108460 $Y=88300
X681 5 1 3 93 362 6 2 1 UDB116SVT24_OAI22_0P75 $T=127600 88600 0 0 $X=127020 $Y=88300
X682 6 1 3 93 363 7 2 1 UDB116SVT24_OAI22_0P75 $T=133400 88600 1 0 $X=132820 $Y=82900
X683 7 1 3 93 368 187 2 1 UDB116SVT24_OAI22_0P75 $T=169360 88600 0 0 $X=168780 $Y=88300
X684 8 1 3 93 115 25 2 1 UDB116SVT24_OAI22_0P75 $T=185600 88600 1 0 $X=185020 $Y=82900
X685 1 2 43 104 810 ICV_21 $T=151960 56200 1 0 $X=151380 $Y=50500
X686 1 2 248 111 812 ICV_21 $T=176320 77800 0 0 $X=175740 $Y=77500
X687 1 2 249 328 815 ICV_21 $T=183280 67000 0 0 $X=182700 $Y=66700
X688 1 2 44 114 816 ICV_21 $T=184440 45400 0 0 $X=183860 $Y=45100
X689 1 2 208 232 817 ICV_21 $T=197200 45400 0 0 $X=196620 $Y=45100
X690 1 2 250 213 819 ICV_21 $T=197200 56200 0 0 $X=196620 $Y=55900
X691 1 2 251 120 821 ICV_21 $T=205320 88600 1 0 $X=204740 $Y=82900
X692 1 2 252 125 823 ICV_21 $T=219240 77800 1 0 $X=218660 $Y=72100
X693 1 2 45 286 825 ICV_21 $T=232000 45400 0 0 $X=231420 $Y=45100
X694 1 2 253 285 827 ICV_21 $T=232000 56200 0 0 $X=231420 $Y=55900
X695 1 2 254 256 829 ICV_21 $T=274920 88600 1 0 $X=274340 $Y=82900
X696 1 2 255 143 832 ICV_21 $T=274920 88600 0 0 $X=274340 $Y=88300
X697 1 2 256 196 835 ICV_21 $T=278400 67000 1 0 $X=277820 $Y=61300
X698 1 2 46 243 836 ICV_21 $T=278400 67000 0 0 $X=277820 $Y=66700
X699 1 2 47 247 838 ICV_21 $T=307400 88600 0 0 $X=306820 $Y=88300
X700 1 2 48 306 841 ICV_21 $T=319000 88600 1 0 $X=318420 $Y=82900
X701 1 2 49 161 842 ICV_21 $T=336400 88600 0 0 $X=335820 $Y=88300
X702 257 843 50 1 2 1 UDB116SVT24_BUF_1P5 $T=250560 88600 0 180 $X=245340 $Y=82900
X718 1 2 51 258 91 24 859 ICV_35 $T=88160 88600 0 0 $X=87580 $Y=88300
X719 1 2 259 260 333 335 860 ICV_35 $T=102080 77800 0 0 $X=101500 $Y=77500
X720 1 2 261 262 359 362 861 ICV_35 $T=125280 77800 0 0 $X=124700 $Y=77500
X721 1 2 52 263 103 326 863 ICV_35 $T=151960 45400 0 0 $X=151380 $Y=45100
X722 1 2 53 264 184 327 864 ICV_35 $T=153120 88600 1 0 $X=152540 $Y=82900
X723 1 2 265 266 183 109 866 ICV_35 $T=164720 77800 0 0 $X=164140 $Y=77500
X724 1 2 267 54 108 312 867 ICV_35 $T=165880 56200 1 0 $X=165300 $Y=50500
X725 1 2 268 269 248 270 869 ICV_35 $T=177480 56200 1 0 $X=176900 $Y=50500
X726 1 2 270 55 369 230 870 ICV_35 $T=183280 77800 0 0 $X=182700 $Y=77500
X727 1 2 271 272 250 251 873 ICV_35 $T=191400 77800 1 0 $X=190820 $Y=72100
X728 1 2 56 273 276 233 875 ICV_35 $T=194880 77800 0 0 $X=194300 $Y=77500
X729 1 2 57 211 272 274 876 ICV_35 $T=196040 67000 1 0 $X=195460 $Y=61300
X730 1 2 274 275 234 121 877 ICV_35 $T=200680 67000 0 0 $X=200100 $Y=66700
X731 1 2 276 277 229 188 879 ICV_35 $T=203000 77800 1 0 $X=202420 $Y=72100
X732 1 2 58 278 231 212 880 ICV_35 $T=204160 56200 0 0 $X=203580 $Y=55900
X733 1 2 279 280 278 279 882 ICV_35 $T=209960 56200 1 0 $X=209380 $Y=50500
X734 1 2 214 281 122 215 883 ICV_35 $T=212280 67000 0 0 $X=211700 $Y=66700
X735 1 2 59 60 353 277 884 ICV_35 $T=213440 88600 0 0 $X=212860 $Y=88300
X736 1 2 61 282 64 284 885 ICV_35 $T=214600 45400 0 0 $X=214020 $Y=45100
X737 1 2 283 284 235 288 886 ICV_35 $T=220400 56200 0 0 $X=219820 $Y=55900
X738 1 2 62 63 316 129 888 ICV_35 $T=223880 77800 0 0 $X=223300 $Y=77500
X739 1 2 285 286 289 236 889 ICV_35 $T=226200 56200 1 0 $X=225620 $Y=50500
X740 1 2 64 287 127 131 891 ICV_35 $T=226200 77800 1 0 $X=225620 $Y=72100
X741 1 2 288 65 290 191 893 ICV_35 $T=232000 67000 1 0 $X=231420 $Y=61300
X742 1 2 289 290 282 190 894 ICV_35 $T=237800 56200 1 0 $X=237220 $Y=50500
X743 1 2 291 292 132 192 895 ICV_35 $T=237800 77800 1 0 $X=237220 $Y=72100
X744 1 2 257 66 294 193 896 ICV_35 $T=249400 77800 0 0 $X=248820 $Y=77500
X745 1 2 293 294 137 293 897 ICV_35 $T=251720 88600 1 0 $X=251140 $Y=82900
X746 1 2 295 296 141 142 899 ICV_35 $T=263320 88600 1 0 $X=262740 $Y=82900
X747 1 2 297 67 38 254 901 ICV_35 $T=263320 88600 0 0 $X=262740 $Y=88300
X748 1 2 298 68 301 300 902 ICV_35 $T=281880 88600 0 0 $X=281300 $Y=88300
X749 1 2 299 300 319 331 904 ICV_35 $T=285360 67000 0 0 $X=284780 $Y=66700
X750 1 2 301 218 147 332 906 ICV_35 $T=287680 88600 1 0 $X=287100 $Y=82900
X751 1 2 69 302 219 151 908 ICV_35 $T=295800 77800 0 0 $X=295220 $Y=77500
X752 1 2 220 70 302 245 909 ICV_35 $T=301600 67000 0 0 $X=301020 $Y=66700
X753 1 2 303 304 156 157 910 ICV_35 $T=314360 88600 0 0 $X=313780 $Y=88300
X754 1 2 305 306 303 305 912 ICV_35 $T=319000 77800 0 0 $X=318420 $Y=77500
X755 1 2 71 72 204 166 913 ICV_35 $T=371200 88600 0 0 $X=370620 $Y=88300
X756 1 2 307 73 206 95 914 915 ICV_36 $T=120640 56200 0 0 $X=120060 $Y=55900
X757 1 2 308 309 320 321 920 921 ICV_36 $T=120640 67000 0 0 $X=120060 $Y=66700
X758 1 2 310 74 100 340 926 927 ICV_36 $T=146160 67000 0 0 $X=145580 $Y=66700
X759 1 2 311 75 367 112 931 932 ICV_36 $T=177480 56200 0 0 $X=176900 $Y=55900
X760 1 2 312 313 350 249 936 937 ICV_36 $T=177480 67000 0 0 $X=176900 $Y=66700
X761 1 2 314 315 315 273 939 940 ICV_36 $T=204160 45400 0 0 $X=203580 $Y=45100
X762 1 2 316 317 283 287 941 942 ICV_36 $T=249400 56200 0 0 $X=248820 $Y=55900
X763 1 2 76 318 356 240 943 944 ICV_36 $T=264480 56200 0 0 $X=263900 $Y=55900
X764 1 2 319 77 146 199 947 948 ICV_36 $T=281880 77800 0 0 $X=281300 $Y=77500
X765 1 2 78 79 154 155 950 951 ICV_36 $T=313200 77800 0 0 $X=312620 $Y=77500
X766 1 2 80 357 952 ICV_37 $T=114840 88600 0 0 $X=114260 $Y=88300
X767 1 2 175 308 953 ICV_37 $T=126440 56200 0 0 $X=125860 $Y=55900
X768 1 2 320 309 955 ICV_37 $T=126440 67000 1 0 $X=125860 $Y=61300
X769 1 2 321 322 957 ICV_37 $T=126440 67000 0 0 $X=125860 $Y=66700
X770 1 2 322 261 959 ICV_37 $T=126440 77800 1 0 $X=125860 $Y=72100
X771 1 2 323 99 961 ICV_37 $T=142680 77800 0 0 $X=142100 $Y=77500
X772 1 2 324 325 962 ICV_37 $T=151960 67000 0 0 $X=151380 $Y=66700
X773 1 2 325 264 963 ICV_37 $T=156600 77800 0 0 $X=156020 $Y=77500
X774 1 2 326 226 965 ICV_37 $T=157760 56200 0 0 $X=157180 $Y=55900
X775 1 2 327 263 968 ICV_37 $T=157760 67000 1 0 $X=157180 $Y=61300
X776 1 2 81 105 970 ICV_37 $T=157760 77800 1 0 $X=157180 $Y=72100
X777 1 2 178 228 972 ICV_37 $T=183280 56200 0 0 $X=182700 $Y=55900
X778 1 2 328 269 973 ICV_37 $T=183280 77800 1 0 $X=182700 $Y=72100
X779 1 2 82 271 974 ICV_37 $T=191400 88600 1 0 $X=190820 $Y=82900
X780 1 2 83 130 975 ICV_37 $T=230840 88600 0 0 $X=230260 $Y=88300
X781 1 2 84 292 976 ICV_37 $T=237800 88600 1 0 $X=237220 $Y=82900
X782 1 2 329 238 977 ICV_37 $T=255200 67000 0 0 $X=254620 $Y=66700
X783 1 2 85 241 978 ICV_37 $T=255200 88600 0 0 $X=254620 $Y=88300
X784 1 2 86 242 979 ICV_37 $T=270280 56200 0 0 $X=269700 $Y=55900
X785 1 2 330 318 980 ICV_37 $T=270280 67000 1 0 $X=269700 $Y=61300
X786 1 2 331 298 981 ICV_37 $T=287680 77800 0 0 $X=287100 $Y=77500
X787 1 2 332 148 982 ICV_37 $T=293480 88600 0 0 $X=292900 $Y=88300
X788 1 2 358 333 334 335 180 334 260 358 983 984 ICV_38 $T=109040 67000 0 0 $X=108460 $Y=66700
X789 1 2 360 336 337 338 361 344 223 339 985 986 ICV_38 $T=128760 45400 0 0 $X=128180 $Y=45100
X790 1 2 364 339 340 341 338 342 336 347 989 990 ICV_38 $T=134560 56200 0 0 $X=133980 $Y=55900
X791 1 2 365 342 87 343 343 97 337 98 993 994 ICV_38 $T=134560 67000 0 0 $X=133980 $Y=66700
X792 1 2 361 344 345 346 365 341 348 323 995 996 ICV_38 $T=140360 45400 0 0 $X=139780 $Y=45100
X793 1 2 102 347 348 176 345 310 346 324 997 998 ICV_38 $T=146160 56200 0 0 $X=145580 $Y=55900
X794 1 2 367 88 177 349 266 267 349 351 999 1000 ICV_38 $T=165880 56200 0 0 $X=165300 $Y=55900
X795 1 2 205 350 351 352 265 352 227 110 1001 1002 ICV_38 $T=165880 67000 0 0 $X=165300 $Y=66700
X796 1 2 370 353 89 90 281 370 124 189 1003 1004 ICV_38 $T=212280 77800 0 0 $X=211700 $Y=77500
X797 1 2 371 354 355 356 354 138 197 371 1005 1006 ICV_38 $T=258680 45400 0 0 $X=258100 $Y=45100
.ENDS
***************************************
.SUBCKT TOP clk MOSI arthur[3] arthur[2] arthur[1] arthur[0] osc_freq[1] osc_freq[0] TX_BY MISO SCK CS sh_en pkt_rec i_CONFIG rst rfin RX TX_OUT
** N=923 EP=19 IP=2026 FDC=72787
X0 1 2 ICV_6 $T=0 0 0 0 $X=0 $Y=552700
X1 2 1 ICV_8 $T=0 0 0 0 $X=0 $Y=471700
X2 1 156 51 52 203 609 795 200 202 4 216 206 6 241 71 237 7 8 834 9
+ 245 613 72 244 612 246 616 11 615 2 614 595 139 753 748 153 767 772 162 193
+ 130 229 138 746 747 195 183 779 780 790 794 811 822 316 833 835 151 775 729 179
+ 607 785 799 800 730 223 831 10 611 50 630 169 606 189 240 53 596 140 149 757
+ 727 758 174 778 180 788 225 792 813 803 809 224 726 232 594 365 142 599 146 49
+ 131 601 755 751 158 164 167 728 173 774 190 188 791 801 807 196 207 812 814 212
+ 298 804 819 825 830 239 236 769 828 234 749 145 763 760 765 172 182 787 205 304
+ 228 141 155 759 159 165 226 724 208 725 823 602 197 593 135 597 137 136 63 134
+ 133 745 598 64 592 132 143 144 19 762 150 750 600 147 148 752 152 157 754 374
+ 756 761 773 764 160 163 clk 168 161 171 768 166 766 275 376 771 604 770 377 170
+ 282 175 178 782 776 184 177 176 777 187 67 181 185 68 186 192 781 191 605 824
+ 608 783 786 821 793 789 798 199 797 796 198 784 201 805 802 204 209 808 806 210
+ 211 810 213 5 215 815 820 816 303 217 610 306 308 818 214 817 231 218 219 222
+ 230 829 826 827 321 221 233 227 235 238 832 242 243 66 69
+ ICV_17 $T=0 0 0 0 $X=0 $Y=390700
X3 1 748 836 264 272 265 262 142 756 153 156 154 759 755 274 158 602 761 163 609
+ 277 83 169 278 271 82 203 280 281 14 290 283 84 630 294 196 635 202 200 800
+ 291 15 305 286 205 302 216 218 308 315 819 222 190 313 233 6 16 225 847 831
+ 226 217 317 239 828 323 54 325 611 71 7 234 337 237 329 10 338 241 245 9
+ 244 72 612 246 614 340 90 343 346 645 92 347 2 4 615 617 arthur[2] arthur[3] osc_freq[1] osc_freq[0]
+ 618 352 631 776 782 178 605 201 841 242 152 181 289 85 204 815 243 11 257 258
+ 259 273 627 626 606 275 276 293 195 840 297 636 298 812 725 300 310 848 240 330
+ arthur[0] 592 194 288 844 70 640 arthur[1] 260 256 252 249 253 251 593 134 135 597 143 600
+ 157 160 170 166 184 192 608 209 210 299 816 842 817 334 93 339 267 766 214 147
+ 161 168 171 68 598 269 296 219 230 341 8 261 150 51 175 818 845 SCK 619 248
+ 247 254 MOSI 77 250 837 596 622 62 594 255 clk 595 138 266 63 599 65 141 140
+ 838 263 48 624 145 49 268 625 270 601 149 151 64 162 752 603 628 164 155 159
+ 165 167 763 52 604 279 176 174 172 173 774 180 775 284 189 177 179 632 287 839
+ 188 183 285 633 191 193 634 607 789 292 198 199 797 724 212 295 223 811 804 207
+ 208 809 814 807 211 813 5 307 215 303 843 301 220 306 638 221 820 822 823 610
+ 224 726 312 227 309 228 311 314 826 238 846 345 229 344 827 319 232 318 639 236
+ 231 235 322 324 327 53 320 641 328 833 835 613 333 335 88 336 616 342 646 78
+ 66 69 326 331 332
+ ICV_20 $T=0 0 0 0 $X=0 $Y=336700
X4 2 256 12 262 265 748 272 750 374 274 751 283 383 50 765 101 276 279 769 773
+ 82 264 278 277 281 729 84 632 83 780 20 102 286 103 85 290 852 795 791 801
+ 291 730 21 396 326 427 399 786 781 40 637 855 418 400 731 854 206 406 218 304
+ 22 332 401 308 403 24 306 222 844 405 861 659 410 23 88 239 414 233 315 316
+ 336 317 411 847 413 325 324 327 338 430 337 25 112 26 644 867 345 92 344 347
+ 665 1 280 MISO 350 619 624 376 380 385 821 416 330 342 646 259 655 275 293 620
+ 340 287 793 33 798 802 810 805 856 305 309 356 17 18 247 784 69 66 288 390
+ 865 857 404 307 825 863 830 846 322 70 864 425 426 237 343 364 79 370 762 373
+ 282 375 382 783 388 391 398 292 187 862 402 859 323 TX_OUT 248 76 754 630 284 386
+ 389 16 319 321 834 424 111 94 621 144 633 657 428 771 808 312 19 627 297 300
+ 415 829 824 329 348 254 806 843 420 649 97 650 351 273 654 770 379 849 792 392
+ 851 423 803 858 310 848 132 651 98 366 622 13 357 77 62 136 257 838 268 65
+ 266 271 394 90 648 647 617 349 371 TX_BY 618 96 353 355 836 253 249 354 255 359
+ clk 258 251 137 746 360 358 139 99 260 747 267 361 261 362 263 623 252 363 367
+ 80 749 368 269 146 81 372 625 626 270 727 753 100 369 758 757 629 656 767 768
+ 154 728 772 14 840 631 777 778 779 185 381 658 839 182 850 285 378 186 384 787
+ 634 289 790 785 387 799 796 393 294 295 853 397 841 299 794 301 408 302 296 842
+ 303 860 86 298 407 788 409 503 311 313 845 395 314 660 640 661 318 320 642 412
+ 417 832 328 419 335 89 334 333 641 422 339 866 341 643 429 664 91 346 431 663
+ 645 432 93 78 120 331
+ ICV_24 $T=0 0 0 0 $X=0 $Y=255700
X5 1 46 868 439 444 30 869 445 29 451 871 732 733 461 365 744 457 459 460 464
+ 873 877 31 373 453 19 374 386 736 737 676 473 891 478 887 477 773 102 487 sh_en
+ 484 103 32 895 494 854 498 855 400 659 856 680 34 731 500 408 403 22 406 506
+ 901 24 23 505 503 36 326 413 496 418 660 414 499 40 37 411 88 430 107 422
+ 718 513 684 38 514 518 43 686 110 45 2 475 127 861 512 691 96 367 482 858
+ 401 900 860 126 351 463 470 658 491 332 361 395 436 874 383 409 412 434 27 449
+ 450 80 878 653 100 654 375 385 735 490 404 407 502 683 902 97 669 764 377 474
+ 486 393 741 87 743 507 863 689 442 652 381 480 476 468 889 417 108 327 864 692
+ 353 358 510 516 91 501 363 458 880 467 384 69 881 313 115 890 106 352 368 472
+ 481 497 495 425 662 359 745 354 99 360 362 118 438 355 447 865 738 349 455 133
+ 372 674 675 423 866 429 432 369 101 396 410 120 331 648 433 649 348 435 376 131
+ 17 437 18 650 440 350 441 28 446 79 448 356 666 clk 452 837 443 113 454 870
+ 364 456 114 734 670 366 462 671 672 872 885 555 81 371 370 357 148 760 876 655
+ 879 466 656 465 888 882 875 884 883 673 469 471 886 378 677 380 850 382 739 893
+ 20 479 379 483 392 657 892 390 488 387 678 21 389 489 894 391 853 896 388 897
+ 493 898 492 398 397 399 104 857 899 402 679 421 405 681 121 35 504 682 394 105
+ 661 337 124 862 416 109 419 511 420 415 508 89 685 424 509 427 42 426 517 515
+ 428 687 688 431 664 663 111 690 867 94 665 26 693 78 66
+ ICV_27 $T=0 0 0 0 $X=0 $Y=174700
X6 2 451 46 47 525 527 453 30 461 29 539 532 457 455 460 904 671 903 544 540
+ 543 538 911 552 912 475 473 913 sh_en clk 120 501 920 574 581 498 499 680 430 34
+ 504 500 682 503 35 505 36 716 512 39 38 685 684 110 42 514 687 43 691 44
+ 45 1 444 513 647 443 452 78 871 851 575 583 905 116 562 446 489 125 700 487
+ 681 686 688 449 438 456 909 733 881 883 876 879 472 915 917 481 483 894 490 571
+ 572 493 497 573 900 121 105 507 902 683 591 673 484 892 570 710 580 711 508 434
+ 441 520 440 445 696 531 462 117 550 558 559 699 887 566 897 492 518 868 869 524
+ 454 568 589 129 670 590 509 109 667 735 563 495 494 41 435 910 702 565 885 849
+ 704 891 585 587 122 693 519 521 852 736 CS 27 666 436 439 744 668 522 28 695
+ 442 697 523 448 450 526 694 113 669 530 732 533 906 534 535 536 907 458 459 528
+ 908 537 114 672 541 542 873 545 464 547 546 549 465 548 69 468 556 554 553 470
+ 560 469 471 674 474 551 698 914 118 675 561 701 916 677 476 703 557 564 918 880
+ 890 737 482 480 705 678 859 569 706 567 486 707 743 708 488 709 898 919 577 576
+ 579 491 578 740 679 921 584 582 922 128 496 104 712 586 714 713 588 715 506 717
+ 738 123 108 107 510 511 126 515 689 517 127 692 331
+ ICV_29 $T=0 0 0 0 $X=0 $Y=93700
X7 1 2 46 527 529 532 538 543 530 437 560 477 888 478 706 705 578 920 128 712
+ 713 715 588 525 544 526 522 519 904 548 917 916 695 906 540 875 557 119 708 577
+ 922 717 907 877 479 896 579 584 901 120 870 734 537 541 564 911 878 552 554 555
+ pkt_rec 915 561 913 701 893 707 709 576 899 123 124 903 536 433 567 572 921 582 697
+ 534 547 912 703 918 569 535 873 886 698 447 696 444 694 528 clk 905 533 524 531
+ 539 523 908 520 521 872 116 909 542 115 117 910 463 874 545 549 546 550 551 467
+ 882 553 884 559 556 699 563 558 889 700 914 562 i_CONFIG 31 704 739 rst rfin 566 571
+ 565 568 570 RX 895 573 919 710 575 580 574 740 516 581 583 711 585 586 587 714
+ 741 129 716 590 591 718
+ ICV_39 $T=0 0 0 0 $X=0 $Y=0
.ENDS
***************************************
