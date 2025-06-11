set pin_list_top [list clk rfin rst MOSI CS SCK TX_BY RX i_CONFIG MISO TX_OUT sh_en pkt_rec]

set pin_list_bottom [list osc_freq[3] osc_freq[2] osc_freq[1] osc_freq[0] arthur[15] arthur[14] arthur[13] arthur[12] arthur[11] arthur[10] arthur[9] arthur[8] arthur[7] arthur[6] arthur[5] arthur[4] arthur[3] arthur[2] arthur[1] arthur[0]]

editPin -pin $pin_list_top -layer 3 -pinDepth 1 -pinWidth 0.1 -side top -spreadType CENTER -unit TRACK -spacing 20

editPin -pin $pin_list_bottom -layer 3 -pinDepth 1 -pinWidth 0.1 -side bottom -spreadType CENTER -unit TRACK -spacing 20

