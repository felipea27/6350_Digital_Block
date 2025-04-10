`timescale 1ns/1ps

module TX_Buffer_tb;
    
    reg clk, rst, en, load;
    reg [7:0] din;
    wire dout;
    
    // Instantiate the TX_Buffer module
    TX_Buffer uut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .dout(dout),
        .en(en),
        .load(load)
    );
    
    // Clock Generation
    always #50 clk = ~clk; // 100ns period (10 MHz)
    
    initial begin
        // Initialize signals
        clk = 0;
        rst = 0;
        en = 0;
        load = 0;
        din = 8'b00000000;
        
        // Apply reset
        #100 rst = 1;
        
        // Load a value into the buffer
        #100 din = 8'b10101010; load = 1;
        #100 load = 0;
        
        // Enable shifting
        #100 en = 1;
        
        // Shift out data bit by bit
        #800 en = 0; // Stop shifting after 8 cycles
        
        // Load a new value
        #100 din = 8'b11001100; load = 1;
        #100 load = 0;
        
        // Shift out new data
        #100 en = 1;
        #800 en = 0;
        
        // End simulation
        #200 $stop;
    end
    
    // Monitor output
    initial begin
        $monitor("Time=%0t | rst=%b | load=%b | en=%b | din=%b | dout=%b", $time, rst, load, en, din, dout);
    end
    
endmodule

