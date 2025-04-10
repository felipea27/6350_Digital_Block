`timescale 1ns/1ps
module Pkt_reg_tb;

    reg clk, rst, pkt_rec, en, SPI_en;
    localparam PACKET_SIZE = 64;

    reg [PACKET_SIZE-1:0] din;
    // reg [7:0] dout;
    wire [7:0] dout;

    reg [63:0] hold;

    // Instantiate Packet Register
    Pkt_reg uut (
        .din(din),
        .pkt_rec(pkt_rec),
        .clk(clk),
        .rst(rst),
	.en(en),
	.SPI_en(SPI_en),
        .dout(dout)
    );

    // Generate clock
    always #50 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 1;
        rst = 1;
        pkt_rec = 0;
	SPI_en = 0;
	hold = 64'b0;
        din = 64'hABACABADABAEABAF;
	en = 0;

        // Reset release
        #100 rst = 0;
        #100 rst = 1;

        // New packet received
        #100 pkt_rec = 1;
        #100 
	pkt_rec = 0;
        din = 64'h0;
       	SPI_en = 1; 
	repeat(8) begin
		#100;
		en = 1;
		#100;
		en = 0;	
	end	

        // End simulation
        #100 $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t | din=%h | pkt_rec=%b | dout=%h", $time, din, pkt_rec, dout);
    end

endmodule
