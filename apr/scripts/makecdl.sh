#!/bin/bash

FN=~/65GXCVR/6350_Digital_Block/apr/FINAL_DESIGN/TOP_netlist_no_phys_inst

v2lvs -i -v $FN.v -o $FN.cdl 

mv ${FN}.cdl ${FN}.sp

rm -rf *.log
