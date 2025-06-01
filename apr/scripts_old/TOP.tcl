##################################################
# Innovus Script
##################################################


##################################################
# Setup design
##################################################

set design_name TOP
source ./config.globals
set_message -no_limit
set_message -id {TECHLIB-1467} -limit 10
setMultiCpuUsage -localCpu max -acquireLicense 8

# Initialize a design using the Tcl globals listed in the Related Global section
# Notes: At this script, all the settings are included in the file 'config.globals'
init_design

##################################################
# Set parameters for the floorplan
##################################################

# Need modification
set std_cell_height 1.8
# core_height should be a multiple of the std_cell_height
set core_width 20
set core_height [expr 10*$std_cell_height]
set ring_left_width 1
set ring_right_width 1
set ring_top_width 1
set ring_bottom_width 1
set ring_left_space 0.5
set ring_right_space 0.5
set ring_top_space 0.5
set ring_bottom_space 0.5


##################################################
# Create the floorplan
##################################################

# Specify the floorplan dimensions by size; or by die, I/O, or core coordinates (Need modification)
floorPlan -s $core_width $core_height [expr 2*$ring_left_width + $ring_left_space + 2] \
[expr 2*$ring_bottom_width + $ring_bottom_space +2] [expr 2*$ring_right_width + $ring_right_space +2] \
[expr 2*$ring_top_width + $ring_top_space + 2]

# GUI only
redraw
fit

