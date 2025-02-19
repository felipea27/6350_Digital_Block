`timescale 1ns/1ps
module Pkt_reg (din, pkt_rec, en, clk, rst, dout);
	input clk, rst, pkt_rec, en;
	input [63:0] din;
	output reg dout;

	reg [63:0] pkt_reg;

	always @(posedge clk) begin
		if (rst) begin
			pkt_reg <= 64'b0;
			dout <= 1'b0;
		end
		else if (pkt_rec) begin
			pkt_reg <= din;
		end else if (en) begin
			dout <= pkt_reg[63];
			pkt_reg <= pkt_reg << 1;
		end
	end

endmodule
