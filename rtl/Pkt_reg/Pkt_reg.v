`timescale 1ns/1ps
module Pkt_reg (din, pkt_rec, en, clk, rst, dout, SPI_en);
	localparam PACKET_SIZE = 64;

	input clk, rst, pkt_rec, en, SPI_en;
	input [PACKET_SIZE-1:0] din;
	output reg [7:0] dout;

	reg [PACKET_SIZE-1:0] pkt_reg;

	always @(posedge clk) begin
		if (rst == 0) begin
			pkt_reg <= 0;
			dout <= 8'b0;
		end
		else if (pkt_rec) begin
			pkt_reg <= din;
		end else if (en) begin
			pkt_reg <= pkt_reg << 8;
		end
		else if (SPI_en)
			dout <= pkt_reg[PACKET_SIZE-1:PACKET_SIZE-8];
		else
			dout <= 8'b0;
	end

endmodule
