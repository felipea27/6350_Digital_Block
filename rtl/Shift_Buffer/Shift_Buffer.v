`timescale 1ns/1ps
module Shift_Buffer (din, clk, rst, dout, pkt_rec, en, pkt_rst);
	input din, clk, rst, en, pkt_rst;
	output [63:0] dout;
	output reg pkt_rec;

	reg [63:0] shift_reg;
	reg [7:0] sync;
	
	assign dout = shift_reg;
	always @(posedge clk) begin
		if (rst == 0) begin
			shift_reg <= 64'b0;
			pkt_rec <= 0;
			sync <= 8'b0;
		end else begin 
			if (pkt_rst) begin
				shift_reg <= 64'b0;
				sync <= 8'b0;
			end
			else begin
				// Check for sync bits
				sync <= {shift_reg[38], shift_reg[39], shift_reg[40], shift_reg[41], shift_reg[42], shift_reg[43], shift_reg[44], shift_reg[45]};
								
				if (sync == 8'b11111111)
					pkt_rec <= 1;
				else 
					pkt_rec <= 0;
				if (en) begin
					// Shift bit in
					shift_reg <= {shift_reg[62:0], din};
				end
			end
		end	
	end	

endmodule
