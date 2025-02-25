`timescale 1ns/1ps
module Pkt_reg (din, pkt_rec, en, clk, rst, dout, SPI_en);
	input clk, rst, pkt_rec, en, SPI_en;
	input [63:0] din;
	output reg [7:0] dout;

	reg [63:0] pkt_reg;

	always @(posedge clk) begin
		if (rst) begin
			pkt_reg <= 64'b0;
			dout <= 1'b0;
		end
		else if (pkt_rec) begin
			pkt_reg <= din;
		end else if (en) begin
			pkt_reg <= pkt_reg << 8;
		end
		else if (SPI_en)
			dout <= pkt_reg[63:56];
		else
			dout <= 8'b0;
	end

endmodule
