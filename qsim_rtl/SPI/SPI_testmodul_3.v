`timescale 1ns/1ps

module SPI_testmodul_3;

    // Testbench Signals
    reg MOSI;         // Master Out, Slave In
    wire MISO;        // Slave Out, Master In
    reg SS;           // Chip Select (Active Low)
    reg SCK;          // SPI Clock
    reg [7:0] MDATA;  // Test Data
    reg [7:0] DATA;  // Test Data
    reg [1:0] MODE;   // Operating mode
    reg [3:0] i;

    // Instantiate the SPI Slave Module
    SPI_SLAVE uut (
        .MOSI(MOSI),
        .MISO(MISO),
        .SS(SS),
        .SCK(SCK),
        .DATA(DATA),
        .MODE(MODE)
    );

    // Generate Clock
    always #50 SCK = ~SCK;  // 10ns period -> 100 MHz Clock

    initial begin
        // Initialize signals
        SCK = 0;
        SS = 1;    // Start with chip select HIGH (inactive)
        MOSI = 0;  
        MDATA = 8'b10111010;  // Example test pattern
        DATA = 8'b11101111;  // Example test pattern
        MODE = 2'b00; // Example Mode
	i = 3'd7;

        // Apply Reset-like Condition
        #100;
        SS = 0;    // Activate Slave (SS low)
	

        // Send 8-bit data from MOSI (Master → Slave)
	repeat (8) begin
		MOSI = MDATA[i];  // Send bit-by-bit
		i = i - 1;
         	#100; // Wait one clock cycle
   	 end
        // Wait for the slave to respond
        #200;

        // Deactivate Slave
        SS = 1;
        
        // End Simulation
        #500;
        $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time=%0t | SS=%b | MOSI=%b | MISO=%b | SCK=%b", $time, SS, MOSI, MISO, SCK);
    end

endmodule

