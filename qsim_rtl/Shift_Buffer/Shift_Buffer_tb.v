`timescale 1ns/1ps

module Shift_Buffer_tb;
    // Testbench signals
    reg din;                  // Data input (1 bit)
    reg clk;                  // Clock signal
    reg rst;                  // Reset signal
    wire [63:0] dout;         // 64-bit output (shifted data)
    wire pkt_rec;             // Packet received flag
    reg en;
    integer i;
    integer ex_file;
    reg [255:0] filename;

    // Instantiate the Shift_Buffer module
    Shift_Buffer uut (
        .en(en),
	.din(din),
        .clk(clk),
        .rst(rst),
        .dout(dout),
        .pkt_rec(pkt_rec)
    );

    // Clock generation: 1ms period, 10 kHz clock
    initial begin
        clk = 0;
        forever #500000 clk = ~clk; // Period is 1 ms (500ns high, 500ns low)
    end

    // Stimulus: Apply reset and then send data
    initial begin
        // Initialize signals
        din = 0;
        clk = 0;
        rst = 0;
	en = 1;
	i = 5;  // Example value for i
        // Concatenate the string parts to create the filename
        filename = {"ex", i, ".txt"};
        ex_file = $fopen(filename, "r");
	$display( "%s", filename);
        $fwrite(ex_file, "hi");

        // Apply reset
        rst = 1;
        #1400000;
        rst = 0;

        // Test: Send data with sync pattern at various locations
        // The sync bits we are looking for are 11111 at specific positions

        // Send data that will not trigger pkt_rec (no sync bits)
        din = 1; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;

        // Send valid sync pattern (sync bits '11111' at positions 62, 61, 60, 59, 58)
        din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 1; #1000000;  // sync1
       
       	// Send random data from 57 to 37 (21 bits)
        din = 0; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
        din = 0; #1000000;
	
	// Send valid sync pattern at positions 36 to 32
        din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 1; #1000000;
	
	// Send intermittent bits up until bit 9 (23 bits)
        din = 0; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 1; #1000000; din = 0; #1000000;

	// Send valid sync pattern at positions 8 to 0
        din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; 
        din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; 
	din = 1; #1000000; 
        
        // Send more random data to simulate continued operation
        din = 0; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;
        din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 0; #1000000;

        // Test end, finish simulation
        $stop;
    end

    // Monitor the outputs
    initial begin
    $monitor("Time=%0t | din=%b | dout=%b | pkt_rec=%b", $time, din, dout, pkt_rec);
    end

endmodule


