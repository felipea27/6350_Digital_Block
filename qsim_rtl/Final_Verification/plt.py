import sys
import os
import matplotlib.pyplot as plt

def package_hit_rate(prdata_file):
    with open(prdata_file, 'r') as file:
        lines = file.readlines()
    
    total_sending_lines = 0
    mismatches = 0
    hit_miss = []  # List to store hit/miss results for plotting
    
    for i in range(len(lines)):
        line = lines[i].strip()
        
        if line.startswith("Sending: "):
            total_sending_lines += 1
            sending_value = line.split(": ")[1]
            
            # Check the next line (if exists) to see if it matches the sending value
            if i + 1 < len(lines):
                next_line = lines[i + 1].strip()
                if next_line != sending_value:
                    mismatches += 1
                    hit_miss.append(0)  # Append 0 for miss
                else:
                    hit_miss.append(1)  # Append 1 for hit
            else:
                # If there's no next line to compare, it's a miss
                mismatches += 1
                hit_miss.append(0)  # Append 0 for miss

    if total_sending_lines == 0:
        print("No Packets found.")
        return hit_miss
    
    miss_percentage = (mismatches / total_sending_lines) * 100 
    hit_percentage = ((total_sending_lines - mismatches) / total_sending_lines) * 100
    print(f"Total Packets: {total_sending_lines}")
    print(f"Mismatch Percentage: {miss_percentage:.2f}%")
    print(f"Hit Rate: {hit_percentage:.2f}%")
    
    return hit_percentage

def find_folders_in_directory(directory_path):
    subfolders = []
    
    # Iterate over all subfolders in the provided directory
    for foldername in os.listdir(directory_path):
        folder_path = os.path.join(directory_path, foldername)
        
        # Check if it's a directory and matches the 'data_stdX' pattern
        if os.path.isdir(folder_path) and foldername.startswith("std"):
            subfolders.append(folder_path)
    
    if not subfolders:
        print("Error: Could not find any 'stdX' subfolders.")
        sys.exit(1)
    
    return subfolders

def plot_hit_rate_vs_std(std_values, hit_rates):
    plt.plot(std_values, hit_rates, marker='o', linestyle='-', color='b')
    plt.xlabel("Standard Deviation (std)")
    plt.ylabel("Hit Rate (%)")
    plt.title("Package Hit Rate vs Standard Deviation")
    plt.grid(True)
    plt.show()

# Ensure that the folder path is provided as a command-line argument
if len(sys.argv) != 2:
    print("Usage: python package_hit_rate.py <folder_path>")
    sys.exit(1)

# Get the folder path from the command-line argument
folder_path = sys.argv[1]

# Find all 'data_stdX' subfolders in the provided directory
subfolders = find_folders_in_directory(folder_path)

# Initialize lists to store the hit rates and corresponding std values
hit_rates = []
std_values = []

# Process each subfolder
for subfolder in subfolders:
    # Extract the std value from the folder name (e.g., 'data_std10' -> 10)
    std_value = int(subfolder.split('std')[-1])
    std_values.append(std_value)
    
    # Find the PRDATA.txt file inside the subfolder
    prdata_file = os.path.join(subfolder, "PRDATA.txt")
    
    # Calculate the hit rate for the PRDATA file
    if os.path.exists(prdata_file):
        print(f"Processing file: {prdata_file}")
        hit_rate = package_hit_rate(prdata_file)
        hit_rates.append(hit_rate)
    else:
        print(f"Error: {prdata_file} not found.")
        hit_rates.append(0)  # If the file doesn't exist, assign 0% hit rate

sorted_pairs = sorted(zip(std_values, hit_rates))
std_values, hit_rates = zip(*sorted_pairs)

# Plot the hit rate vs std
plot_hit_rate_vs_std(std_values, hit_rates)

