`timescale 1ns/1ps

module SPI_pkt (clk, rst, din, dout, en, byte_flg);

	input clk, rst, din, en;
	output reg [7:0] dout;
	output reg byte_flg; //maybe optional
	
	reg [2:0] counter; //maybe optional

	always @(posedge clk) begin
		if (rst) begin
			dout <= 8'b0;
			byte_flg <= 0;
			counter <= 3'b0;
		end
		else if (en) begin
			dout <= {dout[6:0], din};
			counter <= counter + 1;
			if (counter  == 3'b111) begin
				counter <= 0;
				byte_flg <= 1;
			end
		else
			byte_flg <= 0;
		end
	end
endmodule 
			
