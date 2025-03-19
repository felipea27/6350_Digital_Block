`timescale 1ns/1ps
module Dual_Buf (clk, rst, rfin, dout, pkt_rec, sh_en1, sh_en2);
        input rfin, clk, rst, sh_en1, sh_en2;
        output reg [63:0] dout;
        output reg pkt_rec;

	wire [63:0] dout1;
	wire [63:0] dout2;
	wire SH_EN1;
	wire SH_EN2;
	wire din1;
	wire din2;

	wire pkt_rec1;
	wire pkt_rec2;
	reg state; //0 choose sh1, 1 choose sh2

	Shift_Buffer Buf1 (
		.din(din1),
		.clk(clk),
		.rst(rst),
		.dout(dout1),
		.pkt_rec(pkt_rec1),
		.en(SH_EN1)
	);

        fsm_sync fsm_sync1 (
                .clk(clk),
                .rst(rst),
                .rfin(rfin),
                .sh_en(sh_en1),
                .fsm_rst(din1)
        );


	Shift_Buffer Buf2 (
		.din(din2),
		.clk(clk),
		.rst(rst),
		.dout(dout2),
		.pkt_rec(pkt_rec2),
		.en(SH_EN2)
	);

        fsm_sync fsm_sync2 (
                .clk(clk),
                .rst(rst),
                .rfin(rfin),
                .sh_en(sh_en2),
                .fsm_rst(din2)
        );

	
	always @ (posedge clk) begin
		if (rst) begin
			pkt_rec <= 0;
		    	dout <= 64'b0;
			state <= 0;
		end 
		else begin
			if (pkt_rec1 & pkt_rec2) begin
				if (state) begin
					pkt_rec <= pkt_rec1;
					dout <= dout1;
				end else begin
					pkt_rec <= pkt_rec2;
					dout <= dout2;
				end
			end else if (pkt_rec1) begin
				pkt_rec <= pkt_rec1; 
				dout <= dout1;
			  	state <= 1;	
		    	end else if (pkt_rec2) begin
				pkt_rec <= pkt_rec2; 
				dout <= dout2;
				state <= 0;	
		    	end else begin
			    	pkt_rec <= 0;
		    	end
		end
	end


endmodule
