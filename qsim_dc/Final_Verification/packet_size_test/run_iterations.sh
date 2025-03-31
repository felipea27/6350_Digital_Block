#!/bin/bash

# Check if a number argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <ps>"
    exit 1
fi

ps=$1

# Set the original Verilog file name
verilog_file="APB_interface_testbench.v"
shift_buffer_file="../../../rtlps$ps/Shift_Buffer/Shift_Buffer.v"
sh_sync_file="../../../rtlps$ps/SH_SYNC/SH_SYNC.v"
pkt_reg_file="../../../rtlps$ps/Pkt_reg/Pkt_reg.v"
top3_file="../../../rtlps$ps/TOP/TOP.v"

# Precompute values
psp8=$(($ps + 8 - 1))
psm1=$(($ps - 1))
psbytes=$(($ps / 8))  # Compute bytes equivalent of packet size

# Ensure logs directory exists
mkdir -p logs

cd ~
rm -rf /simulation/fandrade/DATAps$ps/*
mkdir /simulation/fandrade/DATAps$ps/
cd /simulation/fandrade/DATAps$ps/
cd ~
cd ee6350/6350_Digital_Block/qsim_rtl/Final_Verification/testps$ps/

# Function to replace PACKET_SIZE in a given file
replace_packet_size() {
    sed -i -E "s/localparam PACKET_SIZE = 64;/localparam PACKET_SIZE = $ps;/g" "$1"
}

sed -i 's|\(\$readmemb("../packets_bs\)\(.*\)\(.txt", packets);\)|\1_'"$ps"'\3|' $verilog_file
sed -i "s/repeat (8) begin \/\/ Adjust for Packet size/repeat ($psbytes) begin \/\/ Adjust for Packet size/" "$verilog_file"
sed -i "s/reg \[63:0\] packets \[0:9999\]; \/\/ Array to store 10,000 values/reg \[$psm1:0\] packets \[0:9999\]; \/\/ Array to store 10,000 values/" "$verilog_file"
sed -i "s/repeat (64) begin \/\/ Adjust for Packet size/repeat ($ps) begin \/\/ Adjust for Packet size/" "$verilog_file"

# Use `sed` with actual numbers substituted
sed -i -E "
	s/reg \[71:0\] MDATA;/reg [($psp8) :0] MDATA;/g;
	s/reg \[63:0\] MDATA_I;/reg [($psm1) :0] MDATA_I;/g;
	s/input reg \[63:0\] mdata;/input reg [($psm1):0] mdata;/g;
	s/repeat \(64\) begin \/\/Adjust for packet size/repeat ($ps) begin \/\/Adjust for packet size/g;
	s/RFIN\(MDATA_I\[63\], mean_period, 50, mean_high\);/RFIN(MDATA_I[$psm1], mean_period, 50, mean_high);/g
" "$verilog_file"

# Copy rtl directory and rename it
cp -rf ../../../rtlps/ "../../../rtlps$ps/"

# Modify `runsim.do` to replace "rtl" with "rtlp$ps"
sed -i "s|../rtl/|../rtlps$ps/|g" runsim.do

sed -i -E "
s/counter <= 4'd8; \/\/ Adjust for packet size/counter <= 4'd$psbytes; \/\/ Adjust for packet size/g;
" "$top3_file"

# Perform replacements in the respective files
replace_packet_size "$shift_buffer_file"
replace_packet_size "$sh_sync_file"
replace_packet_size "$pkt_reg_file"
replace_packet_size "$top3_file"

# Loop to run the simulation with std from 0 to 100 in increments of 5
for std in $(seq 0 1 50)
do
    echo "Starting simulation with std=$std..."
    mkdir -p "DATA/std$std"

    # Modify the original Verilog file in-place for sequential execution
    sed -i "s|tx_file = \$fopen(\"DATA/std[0-9]\+/TX_OUT.txt\", \"w\");|tx_file = \$fopen(\"DATA/std$std/TX_OUT.txt\", \"w\");|" "$verilog_file"
    sed -i "s|rx_file = \$fopen(\"DATA/std[0-9]\+/PRDATA.txt\", \"w\");|rx_file = \$fopen(\"DATA/std$std/PRDATA.txt\", \"w\");|" "$verilog_file"
    sed -i "s|rand_file = \$fopen(\"DATA/std[0-9]\+/rand_factors.txt\", \"w\");|rand_file = \$fopen(\"DATA/std$std/rand_factors.txt\", \"w\");|" "$verilog_file"
    sed -i "s|gaus_file = \$fopen(\"../std/gaussian_values[0-9]\{1,3\}\.txt\", \"r\");|gaus_file = \$fopen(\"../std/gaussian_values$std.txt\", \"r\");|" "$verilog_file"

    # Run the simulation and log output
    ./run.sh > "logs/log_std$std.txt" 2>&1
    echo "Simulation with std=$std completed."

    # Cleanup
    rm -rf nfs* *wlf
    cd ~
    mv ee6350/6350_Digital_Block/qsim_rtl/Final_Verification/testps$ps/DATA/std$std /simulation/fandrade/DATAps$ps/
    mv ee6350/6350_Digital_Block/qsim_rtl/Final_Verification/testps$ps/logs/log_std$std.txt /simulation/fandrade/DATAps$ps/
    cd ee6350/6350_Digital_Block/qsim_rtl/Final_Verification/testps$ps/
done

echo "All sequential simulations completed!"

