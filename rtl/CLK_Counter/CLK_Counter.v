`timescale 1ns/1ps
module CLK_Counter (clk, rst, en);
	input clk, rst;
	output reg en;

	reg [13:0] count;

	always @(posedge clk) begin
		if (rst)  begin
			count <=0;
			en <= 0;
		end else if (count == 10000 - 1) begin //10000 1 ms w 10 MHZ clk
			count <= 0;
			en <= 1;
		end else begin
			count <= count + 1;
			en <= 0;
		end
	end

endmodule
