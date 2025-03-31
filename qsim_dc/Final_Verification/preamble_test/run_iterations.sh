#!/bin/bash

# Check if a number argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <num>"
    exit 1
fi

num=$1

# Set the original Verilog file name
verilog_file="APB_interface_testbench.v"

# Ensure logs directory exists
mkdir -p logs

cd ~
cd /simulation/fandrade/DATAp$num/
find . -name "*.txt" -delete
cd ~
cd ee6350/6350_Digital_Block/qsim_rtl/Final_Verification/testp$num/
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

    # Copy rtl directory and rename it
    cp -rf ../../../rtl/ "../../../rtlp$num/"

    # Modify `runsim.do` to replace "rtl" with "rtlp$num"
    sed -i "s|../rtl/|../rtlp$num/|g" runsim.do

    # Modify `SH_SYNC.vim` to update PREAMBLE_SIZE
    sed -i "s/localparam PREAMBLE_SIZE = 8;/localparam PREAMBLE_SIZE = $num;/" "../../../rtlp$num/SH_SYNC/SH_SYNC.v"

    # Update MDATA size and APB_WRITE only if num > 8
    if [ "$num" -gt 8 ]; then
        sed -i "s/reg \[71:0\] MDATA;/reg [79:0] MDATA;/" "$verilog_file"
        sed -i "s/APB_WRITE(mode, 2'b11, SCK, MDATA\[71:64\]);/APB_WRITE(mode, 2'b11, SCK, MDATA[79:72]);/" "$verilog_file"
    else
        sed -i "s/reg \[79:0\] MDATA;/reg [71:0] MDATA;/" "$verilog_file"
        sed -i "s/APB_WRITE(mode, 2'b11, SCK, MDATA\[79:72\]);/APB_WRITE(mode, 2'b11, SCK, MDATA[71:64]);/" "$verilog_file"
    fi

    # Update "repeat (9) begin" only if num > 8
    if [ "$num" -gt 8 ]; then
        sed -i "s/repeat (9) begin/repeat (10) begin/" "$verilog_file"
    else
        sed -i "s/repeat (10) begin/repeat (9) begin/" "$verilog_file"
    fi

    # Update specific "repeat (8) begin //Adjust for preamble"
    sed -i "s/repeat (8) begin \/\/Adjust for preamble/repeat ($num) begin \/\/Adjust for preamble/" "$verilog_file"

    # Convert $num to binary with $num ones
    ones=$(printf "%0${num}d"  | tr '0' '1')

    # Replace "localparam PREAMBLE = 8'hFF;" with "$num'b{ones}"
    sed -i "s/localparam PREAMBLE = 8'h11111111;/localparam PREAMBLE = ${num}'b$ones;/" "$verilog_file"
   
    # Run the simulation and log output
    ./run.sh > "logs/log_std$std.txt" 2>&1
    echo "Simulation with std=$std completed."

    # Cleanup
    rm -rf nfs* *wlf
    cd ~
    mv ee6350/6350_Digital_Block/qsim_rtl/Final_Verification/testp$num/DATA/std$std /simulation/fandrade/DATAp$num/
    mv ee6350/6350_Digital_Block/qsim_rtl/Final_Verification/testp$num/logs/log_std$std.txt /simulation/fandrade/DATAp$num/
    cd ee6350/6350_Digital_Block/qsim_rtl/Final_Verification/testp$num/
done

echo "All sequential simulations completed!"

