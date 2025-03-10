#!/bin/bash

# List of numbers to create test directories
num_list=(9 11 13 15)  # Modify this list as needed

# Copy testp8 into each corresponding testp<num> directory and run the script in parallel
for num in "${num_list[@]}"; do
    
        echo "Copying testp8 to testp$num..."
        cp -rf preamble_test "testp$num"
    (    
        # Navigate into the new directory and run the script
        cd "testp$num" || exit
        echo "Running iterations in testp$num..."
        ./run_iterations.sh $num &> "../log_testp$num.txt"
        
        echo "Completed testp$num."
	cd ../
	rm -rf testp$num
	rm -rf ../../rtlp$num
    ) &
done

# Wait for all background jobs to finish
wait
echo "All iterations completed!"

