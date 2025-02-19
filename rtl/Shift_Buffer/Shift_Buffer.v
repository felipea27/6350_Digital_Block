`timescale 1ns/1ps
module Shift_Buffer (din, clk, rst, dout, pkt_rec, en);
	input din, clk, rst, en;
	output [63:0] dout;
	output reg pkt_rec;

	reg [63:0] shift_reg;
	reg [4:0] sync1;
	reg [4:0] sync2;
	reg [4:0] sync3;
	
	always @(posedge clk) begin
		if (rst) begin
			shift_reg <= 64'b0;
			pkt_rec <= 0;
			sync1 <= 5'b0;
			sync2 <= 5'b0;
			sync3 <= 5'b0;	
		end
		else
			// Check for sync bits
			sync1 <= {shift_reg[2], shift_reg[4], shift_reg[5], shift_reg[6], shift_reg[8]};
			sync2 <= {shift_reg[32], shift_reg[33], shift_reg[34], shift_reg[35], shift_reg[36]};
			sync3 <= {shift_reg[58], shift_reg[59], shift_reg[60], shift_reg[61], shift_reg[62]};
							
			if ((sync1 == 5'b11111) && (sync2 == 5'b11111) && (sync3 == 5'b11111)) //Temporary sync value
				pkt_rec <= 1;
			else 
				pkt_rec <= 0;
			if (en) begin
				// Shift bit in
				shift_reg <= {shift_reg[62:0], din};
			end
		
		
	end
	
	assign dout = shift_reg;

endmodule
