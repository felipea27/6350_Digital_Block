#!/bin/bash


# Starting values
START_PERIOD=990000
END_PERIOD=1010000
STEP=1000

# Define the testbench file path
TESTBENCH_FILE="APB_interface_testbench.v"


# Loop through the different mean_period values
for mean_period in $(seq $START_PERIOD $STEP $END_PERIOD); do
    echo "Updating mean_period to ${mean_period}..."
    mkdir -p "DATA/period_$mean_period"
    
    # Modify the RFIN line (Ensure full line match)
    sed -i -E "s|RFIN\(1, [0-9]+, 50, mean_high\); // Adjust for mean period|RFIN(1, ${mean_period}, 50, mean_high); // Adjust for mean period|" "$TESTBENCH_FILE"
   
    # Modify the rx_file path correctly 
    sed -i -E 's|rx_file = \$fopen\("DATA/period_[0-9]+/PRDATA.txt", "w"\);|rx_file = \$fopen("DATA/period_'"${mean_period}"'/PRDATA.txt", "w");|' "$TESTBENCH_FILE"


    # Create the required directory before running the test
    DATA_DIR="ee6350/6350_Digital_Block/qsim_rtl/Final_Verification/mean_period_test/DATA/period_${mean_period}/"

    echo "Running simulation with mean_period=${mean_period}..."
    
    # Run the simulation
    ./run.sh

    echo "Simulation with mean_period=$mean_period completed."

    DEST_DIR="/simulation/fandrade/mean_period_data/"
    cd ~
    rm -rf "/simulation/fandrade/mean_period_data/period_$mean_period"
    mv "$DATA_DIR" "$DEST_DIR"
    cd ~
    cd ee6350/6350_Digital_Block/qsim_rtl/Final_Verification/mean_period_test
    ./nuke.sh
done

echo "All simulations completed!"

