`timescale 1ns/1ps

module Sync_SPI_tb;
	// Testbench signals
	reg [63:0] shift_buf;
        reg clk1, clk_SPI;
	reg rst;
	reg pkt_rec;
	wire [63:0] SPI_out;	

	Sync_SPI uut (
		.clk1(clk1),
		.clk_SPI(clk_SPI),
		.rst(rst),
		.pkt_rec(pkt_rec),
		.shift_buf(shift_buf),
		.SPI_out(SPI_out)
	);

	// Clock generation
    initial begin
        clk1 = 0;
        forever #500 clk1 = ~clk1;  // 1 kHz clock (1 ms period)
    end

    initial begin
        clk_SPI = 0;
        forever #50 clk_SPI = ~clk_SPI;  // Example: 50 MHz SPI clock (20 ns period)
    end

    // Test sequence
    initial begin
        rst = 1;
        pkt_rec = 0;
        shift_buf = 64'h0;
        #1000;  // Hold reset for 1 ms

        rst = 0;
        #1000;  // Wait 1 ms after reset

        // Send some packets
        repeat (5) begin
            #900;  // Wait before sending
            shift_buf = $random;  // Random data
            pkt_rec = 1;
            #1000;  // Short pulse
            pkt_rec = 0;
        end

        #5000;  // Wait and observe
        $stop;
    end

endmodule

