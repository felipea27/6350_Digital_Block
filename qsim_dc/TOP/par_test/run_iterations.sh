#!/bin/bash

# Check if a number argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <ps>"
    exit 1
fi

st=$1
end=$(($1+9))

# Set the original Verilog file name
verilog_file="APB_interface_testbench.v"

# Copy rtl directory and rename it
cp -rf ../../../rtl/ "../../../rtl_par$1/"
cp -rf ../../../dc/ "../../../dc_par$1/"

# Modify `runsim.do` to replace "rtl" with "rtl_par$1"
sed -i "s|../rtl/|../rtl_par$1/|g" runsim.do
sed -i "s|../dc/|../dc_par$1/|g" runsim.do

# Loop to run the simulation with std from start to end in increments of 1
for std in $(seq $st 1 $end)
do
    echo "Starting simulation with std=$std..."

    # Modify the original Verilog file in-place for sequential execution
            sed -i "s|tx_file = \$fopen(\"/simulation/fandrade/dc/DATA/std[0-9]\+/TX_OUT.txt\", \"w\");|tx_file = \$fopen(\"/simulation/fandrade/dc/DATA/std$std/TX_OUT.txt\", \"w\");|" "$verilog_file"
            sed -i "s|rx_file = \$fopen(\"/simulation/fandrade/dc/DATA/std[0-9]\+/PRDATA.txt\", \"w\");|rx_file = \$fopen(\"/simulation/fandrade/dc/DATA/std$std/PRDATA.txt\", \"w\");|" "$verilog_file"
        sed -i "s|gaus_file = \$fopen(\"../std/gaussian_values[0-9]\{1,3\}\.txt\", \"r\");|gaus_file = \$fopen(\"../std/gaussian_values$std.txt\", \"r\");|" $verilog_file

        ./run.sh > "/simulation/fandrade/dc/DATA/logs/log_std$std.txt" 2>&1
        echo "Simulation with std=$std completed."
	
	./nuke.sh
	rm -rf *wlf
done

echo "All sequential simulations completed!"

