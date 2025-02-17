`timescale 1ns/1ps

module SPI_pkt_tb;

    reg clk, rst, din, en;
    wire [7:0] SPI_in;
    wire byte_flg;

    // Instantiate the SPI_pkt module
    SPI_pkt uut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .SPI_in(SPI_in),
        .en(en),
	.byte_flg(byte_flg)
    );

    // Generate a clock signal (50 MHz = 20 ns period)
    always #50 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 1;
        rst = 1;
        en = 0;
        din = 0;

        #50; // Hold reset for some time
        
        rst = 0; // Release reset
        #50;

        // Start shifting in data (example: 8'b10101011)
        en = 1;
        din = 1; #100;
        din = 0; #100;
        din = 1; #100;
        din = 0; #100;
        din = 1; #100;
        din = 0; #100;
        din = 1; #100;
        din = 1; #100; // 8th bit

        // Second byte transfer (example: 8'b11001100)
        din = 1; #100;
        din = 1; #100;
        din = 0; #100;
        din = 0; #100;
        din = 1; #100;
        din = 1; #100;
        din = 0; #100;
        din = 0; #100;

        #200;
        $finish;
    end

    // Monitor values
    initial begin
        $monitor("Time: %0t | din: %b | SPI_in: %b | byte_flg: %b", 
                 $time, din, SPI_in, byte_flg);
    end

endmodule

