`timescale 1ns/1ps
module TOP_tb;

    reg din, clk, rst;
    wire dout, pkt_rec;
    wire [63:0] spi_data;

    // Instantiate the transceiver wrapper
    TOP uut (
        .din(din),
        .clk(clk),
        .rst(rst),
        //.cs(cs),
        //.mosi(mosi),
        //.miso(miso),
	.pkt_rec(pkt_rec),
	.spi_data(spi_data)
    );

    // SPI clock generation (10 MHz)
    always #50 clk = ~clk;

    initial begin
        // Initialize all signals
        clk = 0;
        rst = 1;
        //cs = 1;
        //mosi = 0;
        din = 0;

        // Reset pulse
        #100 rst = 0;

        // Test: Send data with sync pattern at various locations
        // The sync bits we are looking for are 11111 at specific positions

        // Send data that will not trigger pkt_rec (no sync bits)
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;

        // Send valid sync pattern (sync bits '11111' at positions 62, 61, 60, 59, 58)
        repeat (5) begin
            #1000000;
            din = 1; #100; din = 0; #999900;
        end

        // Send random data from 57 to 37 (21 bits)
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;

        // Send valid sync pattern at positions 36 to 32
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;

        // Send intermittent bits up until bit 9 (23 bits)
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;

        // Send valid sync pattern at positions 8 to 0
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;

        // Send more random data to simulate continued operation
        din = 0; #100; din = 0; #999900;
        din = 0; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;
        din = 1; #100; din = 0; #999900;

        // End simulation
        $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time=%0t , din=%b , sr_latch_q=%b , pkt_rec=%b", $time, din, uut.sr_latch.q, uut.shift_buf_inst.pkt_rec);
    end

endmodule

