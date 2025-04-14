#!/bin/bash

# Check if -p (parallel) flag is provided
parallel=false
if [[ "$1" == "-p" ]]; then
    parallel=true
    echo "Running simulations in PARALLEL mode."
else
    echo "Running simulations in SEQUENTIAL mode."
fi

# Set the original Verilog file name
verilog_file="APB_interface_testbench.v"

# Ensure logs and data directories exist
mkdir -p logs

if $parallel; then
    cd .    
else
    cd "original"
fi

# Maximum number of parallel jobs
max_jobs=10
# Initialize a counter for running jobs
running_jobs=0

find /simulation/fandrade/dc/DATA/ -name "*txt" -delete

# Loop to run the simulation with std from 0 to 100 in increments of 5
for std in $(seq 0 1 50)
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

# Ensure all remaining background jobs complete
if $parallel; then
    wait
    echo "All parallel simulations completed!"
    rm -rf test*
else
    echo "All sequential simulations completed!"
fi

