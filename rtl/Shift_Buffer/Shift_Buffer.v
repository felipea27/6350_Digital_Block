`timescale 1ns/1ps
module Shift_Buffer (din, clk, rst, dout, pkt_rec, en, pkt_rst);
	localparam PACKET_SIZE = 24;
	input din, clk, rst, en, pkt_rst;
	output [PACKET_SIZE -1:0] dout;
	output reg pkt_rec;

	reg [PACKET_SIZE-1:0] shift_reg;
	reg [3:0] sync;
	
	assign dout = shift_reg;
	
	always @(posedge clk or negedge rst) begin
		if (rst == 0) begin
			shift_reg <= 0;
			pkt_rec <= 0;
			sync <= 3'b0;	
		end else begin 
			if (pkt_rst) begin
				shift_reg <= 0;
				sync <= 3'b0;
			end
			else begin
				// Check for sync bits
				sync <= {shift_reg[10], shift_reg[11], shift_reg[12], shift_reg[13]};
								
				if (sync == 4'b1111)
					pkt_rec <= 1;
				else 
					pkt_rec <= 0;
				if (en) begin
					// Shift bit in
					shift_reg <= {shift_reg[PACKET_SIZE-2:0], din};
				end
			end
		end
	end

endmodule
