#!/bin/bash

# Set the Verilog file name
verilog_file="APB_interface_testbench.v"

# Loop to run the simulation 3 times (you can change the range to {1..10} for 10 times)
for i in {1..10}
do
    echo "Running simulation #$i"

    # Calculate tx_value and sync_value
    tx_value=$((i-1))      # tx_value takes values 0, 1, 2, etc.
    sync_value=$(( (i-1) * 10 ))  # sync_value takes values 0, 10, 20, ..., 90

    # Debugging: Print calculated values to verify
    echo "tx_value: $tx_value"
    echo "sync_value: $sync_value"

    # Modify the Verilog file with updated values using sed
    sed -i "s/tx_file = \$fopen(\"DATA\/p[0-9]\/TX_OUT.txt\", \"w\");/tx_file = \$fopen(\"DATA\/p$tx_value\/TX_OUT.txt\", \"w\");/" $verilog_file
    sed -i "s/rx_file = \$fopen(\"DATA\/p[0-9]\/PRDATA.txt\", \"w\");/rx_file = \$fopen(\"DATA\/p$tx_value\/PRDATA.txt\", \"w\");/" $verilog_file
    sed -i "s/timing_file = \$fopen(\"DATA\/p[0-9]\/timing_log.txt\", \"w\");/timing_file = \$fopen(\"DATA\/p$tx_value\/timing_log.txt\", \"w\");/" $verilog_file
    sed -i "s/rand_file = \$fopen(\"DATA\/p[0-9]\/rand_factors.txt\", \"w\");/rand_file = \$fopen(\"DATA\/p$tx_value\/rand_factors.txt\", \"w\");/" $verilog_file
    
    # Modify SEND_SYNC to dynamic sync_value
    sed -i "s/SEND_SYNC([0-9]\{1,2\});/SEND_SYNC($sync_value);/" $verilog_file

    # Run the simulation with optimization and without the waveform GUI
    ./run.sh
    # Optional: Add a small delay between iterations
    sleep 1
done

