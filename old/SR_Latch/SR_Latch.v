`timescale 1ns/1ps
module SR_Latch (set, en, q, rst, clk);
	input set, en, rst, clk;
	output reg q;
	
	reg en_delayed;

	// Edge detection for negedge of en
	always @(posedge clk or posedge rst) begin
        	if (rst)
            		en_delayed <= 1'b0;
        	else
            		en_delayed <= en;
    	end

    	wire en_negedge = en_delayed & ~en; // Detect negedge of en

	always @(*) begin
		if (rst || en_negedge) begin
			q <= 0;
		end
		else if (set)
			q <= 1;
	end
endmodule
