#!/bin/bash

# Check if -p (parallel) flag is provided
parallel=false
if [[ "$1" == "-p" ]]; then
    parallel=true
    echo "Running simulations in PARALLEL mode."
else
    echo "Running simulations in SEQUENTIAL mode."
fi

# Set the Verilog file name
verilog_file="APB_interface_testbench.v"

# Create a lock file for file modification
lock_file="verilog_file_lock.lock"

# Loop to run the simulation with std from 0 to 100 in increments of 1
for std in $(seq 0 1 3)
do
    echo "Starting simulation with std=$std..."

    # Create the required directories if they don't exist
    mkdir -p "DATA/std$std"

    # Ensure only one process modifies the Verilog file at a time
    if $parallel; then
        # Use flock to get a lock and modify the file, block until lock is available
        (
            flock -x 200  # Block until lock is available
            # Modify the Verilog file with updated values using sed
            sed -i "s|tx_file = \$fopen(\"DATA/std[0-9]\+/TX_OUT.txt\", \"w\");|tx_file = \$fopen(\"DATA/std$std/TX_OUT.txt\", \"w\");|" $verilog_file
            sed -i "s|rx_file = \$fopen(\"DATA/std[0-9]\+/PRDATA.txt\", \"w\");|rx_file = \$fopen(\"DATA/std$std/PRDATA.txt\", \"w\");|" $verilog_file
            sed -i "s|timing_file = \$fopen(\"DATA/std[0-9]\+/timing_log.txt\", \"w\");|timing_file = \$fopen(\"DATA/std$std/timing_log.txt\", \"w\");|" $verilog_file
            sed -i "s|rand_file = \$fopen(\"DATA/std[0-9]\+/rand_factors.txt\", \"w\");|rand_file = \$fopen(\"DATA/std$std/rand_factors.txt\", \"w\");|" $verilog_file
            sed -i "s|gaus_file = \$fopen(\"std/gaussian_values[0-9]\{1,3\}\.txt\", \"r\");|gaus_file = \$fopen(\"std/gaussian_values$std.txt\", \"r\");|" $verilog_file
        ) 200>$lock_file &
    else
        # Modify the Verilog file sequentially
        sed -i "s|tx_file = \$fopen(\"DATA/std[0-9]\+/TX_OUT.txt\", \"w\");|tx_file = \$fopen(\"DATA/std$std/TX_OUT.txt\", \"w\");|" $verilog_file
        sed -i "s|rx_file = \$fopen(\"DATA/std[0-9]\+/PRDATA.txt\", \"w\");|rx_file = \$fopen(\"DATA/std$std/PRDATA.txt\", \"w\");|" $verilog_file
        sed -i "s|timing_file = \$fopen(\"DATA/std[0-9]\+/timing_log.txt\", \"w\");|timing_file = \$fopen(\"DATA/std$std/timing_log.txt\", \"w\");|" $verilog_file
        sed -i "s|rand_file = \$fopen(\"DATA/std[0-9]\+/rand_factors.txt\", \"w\");|rand_file = \$fopen(\"DATA/std$std/rand_factors.txt\", \"w\");|" $verilog_file
        sed -i "s|gaus_file = \$fopen(\"std/gaussian_values[0-9]\{1,3\}\.txt\", \"r\");|gaus_file = \$fopen(\"std/gaussian_values$std.txt\", \"r\");|" $verilog_file
    fi
    
    # Run the simulation
    if $parallel; then
        # Run the simulation in parallel and print message when done
        (
            ./run.sh > "logs/log_std$std.txt" 2>&1
            echo "Simulation with std=$std completed."
        ) &
    else
        ./run.sh > "logs/log_std$std.txt" 2>&1
        echo "Simulation with std=$std completed."
    fi
done

# If running in parallel, wait for all processes to finish
if $parallel; then
    wait
    echo "All parallel simulations completed!"
    rm -rf *wlf
else
    echo "All sequential simulations completed!"
    rm -rf *wlf
fi

