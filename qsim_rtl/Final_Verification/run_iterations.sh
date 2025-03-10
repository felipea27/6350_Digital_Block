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

# Loop to run the simulation with std from 0 to 100 in increments of 5
for std in $(seq 0 1 100)
do
    echo "Starting simulation with std=$std..."
    mkdir -p "DATA/std$std"

    if $parallel; then
        (
            # Create a unique copy of the Verilog file for each std value
            cp -rf "original" "test$std"

            # Modify the copied Verilog file
            sed -i "s|tx_file = \$fopen(\"../DATA/std[0-9]\+/TX_OUT.txt\", \"w\");|tx_file = \$fopen(\"../DATA/std$std/TX_OUT.txt\", \"w\");|" "test$std/$verilog_file"
            sed -i "s|rx_file = \$fopen(\"../DATA/std[0-9]\+/PRDATA.txt\", \"w\");|rx_file = \$fopen(\"../DATA/std$std/PRDATA.txt\", \"w\");|" "test$std/$verilog_file"
            sed -i "s|rand_file = \$fopen(\"../DATA/std[0-9]\+/rand_factors.txt\", \"w\");|rand_file = \$fopen(\"../DATA/std$std/rand_factors.txt\", \"w\");|" "test$std/$verilog_file"
            sed -i "s|gaus_file = \$fopen(\"../std/gaussian_values[0-9]\{1,3\}\.txt\", \"r\");|gaus_file = \$fopen(\"../std/gaussian_values$std.txt\", \"r\");|" "test$std/$verilog_file"

            # Run the simulation
            cd "test$std"
            ./run.sh > "../logs/log_std$std.txt" 2>&1
            echo "Simulation with std=$std completed."
	    rm -rf "test$std"
        ) &
        
	# Increment the running jobs counter
        running_jobs=$((running_jobs + 1))

        # If we have reached the max number of parallel jobs, wait for one to finish
        if (( running_jobs >= max_jobs )); then
            # Wait for any background job to finish
            wait -n
            # Decrement the counter as one job has finished
            running_jobs=$((running_jobs - 1))
        fi

    else
        # Modify the original Verilog file in-place for sequential execution
        sed -i "s|tx_file = \$fopen(\"../DATA/std[0-9]\+/TX_OUT.txt\", \"w\");|tx_file = \$fopen(\"../DATA/std$std/TX_OUT.txt\", \"w\");|" $verilog_file
        sed -i "s|rx_file = \$fopen(\"../DATA/std[0-9]\+/PRDATA.txt\", \"w\");|rx_file = \$fopen(\"../DATA/std$std/PRDATA.txt\", \"w\");|" $verilog_file
        sed -i "s|rand_file = \$fopen(\"../DATA/std[0-9]\+/rand_factors.txt\", \"w\");|rand_file = \$fopen(\"../DATA/std$std/rand_factors.txt\", \"w\");|" $verilog_file
        sed -i "s|gaus_file = \$fopen(\"../std/gaussian_values[0-9]\{1,3\}\.txt\", \"r\");|gaus_file = \$fopen(\"../std/gaussian_values$std.txt\", \"r\");|" $verilog_file

        ./run.sh > "../logs/log_std$std.txt" 2>&1
        echo "Simulation with std=$std completed."
	rm -rf *wlf
    fi
done

# Ensure all remaining background jobs complete
if $parallel; then
    wait
    echo "All parallel simulations completed!"
    rm -rf test*
else
    echo "All sequential simulations completed!"
fi

