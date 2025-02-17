`timescale 1ns/1ps
module Pkt_reg_tb;

    reg clk, rst, pkt_rec, pkt_flg;
    reg [63:0] din;
    wire dout;

    reg [63:0] hold;

    // Instantiate Packet Register
    Pkt_reg uut (
        .din(din),
        .pkt_rec(pkt_rec),
	.pkt_flg(pkt_flg),
        .clk(clk),
        .rst(rst),
        .dout(dout)
    );

    // Generate clock
    always #50 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 1;
        rst = 1;
        pkt_rec = 0;
	pkt_flg = 0;
	hold = 64'b0;
        din = 64'hAAAAAAAAAAAAAAAA;

        // Reset release
        #100 rst = 0;

        // New packet received
        #100 pkt_rec = 1;
        #100 
	pkt_rec = 0;
        din = 64'h0;
       	pkt_flg = 1; 
	repeat (64) begin
		#100
		din = din << 1;
		hold = {hold[62:0], dout};	
	end

        // End simulation
        #100 $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t | din=%h | pkt_rec=%b | dout=%h", $time, din, pkt_rec, dout);
    end

endmodule
