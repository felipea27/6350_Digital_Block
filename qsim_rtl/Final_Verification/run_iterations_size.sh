#!/bin/bash

# List of numbers to create test directories
num_list=(16 24 32)  # Modify this list as needed

# Copy testp8 into each corresponding testp<num> directory and run the script in parallel
for num in "${num_list[@]}"; do
    
        echo "Copying packet_size_test to testp$num..."
        cp -rf packet_size_test "testps$num"
    (    
        # Navigate into the new directory and run the script
        cd "testps$num" || exit
        echo "Running iterations in testps$num..."
        ./run_iterations.sh $num &> "../logs/log_testps$num.txt"
        
        echo "Completed testps$num."
	cd ../
	rm -rf testps$num
	rm -rf ../../rtlps$num
    ) &
done

# Wait for all background jobs to finish
wait
echo "All iterations completed!"

