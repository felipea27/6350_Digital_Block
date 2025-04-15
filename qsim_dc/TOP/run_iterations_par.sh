#!/bin/bash

# List of numbers to create test directories
num_list=(0 10 20 30 40)  # Modify this list as needed

find /simulation/fandrade/dc/DATA/ -name "*.txt" -delete

# Copy testp8 into each corresponding testp<num> directory and run the script in parallel
for num in "${num_list[@]}"; do
    
        echo "Copying packet_size_test to testp$num..."
        cp -rf par_test "test_par$num"
    (    
        # Navigate into the new directory and run the script
        cd "test_par$num" || exit
        echo "Running iterations in test_par$num..."
        ./run_iterations.sh $num &> "/simulation/fandrade/dc/DATA/logs/log_test_par$num.txt"
        
        echo "Completed test_par$num."
	cd ../
	rm -rf test_par$num
	rm -rf ../../rtl_par$num
	rm -rf ../../dc_par$num
    ) &
done

# Wait for all background jobs to finish
wait
echo "All iterations completed!"

