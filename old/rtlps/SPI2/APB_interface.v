`timescale 1ns / 1ps

module APB_interface_2(
	input i_PRESETn,
	input i_PCLK,
	input i_PSEL0,
	input i_PENABLE,
	input i_PWRITE,
	input [15:0] i_PADDR,
	input [7:0] i_PWDATA,
	input [7:0] i_PRDATA,
	input [9:0] i_BASE_ADDR,
	
	
	output reg o_WR0, //CONFIG_SPI
	output reg o_WR1,	//TX_SPI
	output reg o_WR2,	//RX_SPI
	output reg o_WR3,	//CMD_SPI
	
	output reg o_DR0,	//STATE_SPI
	output reg o_DR1,	//RX_SPI
	output reg o_DR2,	//Optional
	output reg o_DR3,	//Optional
	
	output PREADY,
	
	output [7:0] o_PRDATA,
	output reg [7:0] o_PWDATA,

	input RX,
	input SH_EN1, 
	input SH_EN2, 
	input rfin,
	output pkt_rec,
	output TX_OUT
	);
	
	assign PREADY= (i_PSEL0 & i_PENABLE);
	
	
	reg SELECT;
	reg d_ff;
	wire PULSE;

	


//pulse generation
	always @(posedge i_PCLK)
				
				begin
					if(i_PRESETn==0)
						begin
						d_ff<=1'b0;
						end
					if (i_PENABLE==1)
						begin
						d_ff<=1'b1;
						end
					else
						begin
						d_ff<=1'b0;
						end
				end
		
	
	assign PULSE=~d_ff & i_PENABLE; 
	

	//APB_Interface
	 always @(posedge i_PCLK)
		begin
			if(i_PRESETn==0)
				begin
				o_WR0<=0;
				o_WR1<=0;
				o_WR2<=0;
				o_WR3<=0;
				
				o_DR0<=0;
				o_DR1<=0;
				o_DR2<=0;
				o_DR3<=0;
				end
			
			if(i_PSEL0==1 && i_PADDR[15:6]==i_BASE_ADDR[7:0])
				begin
				SELECT<=1;
				o_PWDATA = i_PWDATA;
				end
			else
				begin
				SELECT<=0;
				o_PWDATA = 8'b00000000;
				end
			if(PULSE==1 && SELECT==1)
						begin
							case(i_PADDR[5:2])
							4'b0000:begin o_WR0<=i_PWRITE; o_DR0<=( ! i_PWRITE );end
							4'b0001:begin o_WR1<=i_PWRITE; o_DR1<=( ! i_PWRITE );end
							4'b0010:begin o_WR2<=i_PWRITE; o_DR2<=( ! i_PWRITE );end
							4'b0011:begin o_WR3<=i_PWRITE; o_DR3<=( ! i_PWRITE );end
							endcase
						end
			else
				begin
				o_WR0<=0;
				o_WR1<=0;
				o_WR2<=0;
				o_WR3<=0;
				
				o_DR0<=0;
				o_DR1<=0;
				o_DR2<=0;
				o_DR3<=0;
				
				end
			
		end//last
		
	
SPI_testmodul2 SPI_modul2(
	.PCLK(i_PCLK),
	.PRESETn(i_PRESETn),
	.WR0(o_WR0), 	//CONFIG_SPI
	.WR1(o_WR1),	//TX_SPI
	.WR2(o_WR2),	//RX_SPI
	.WR3(o_WR3),	//CMD_SPI
	
	.DR0(o_DR0),	//STATE_SPI
	.DR1(o_DR1),	//RX_SPI
	.DR2(o_DR2),	//Optional
	.DR3(o_DR3),	//Optional

	.PRDATA(o_PRDATA),
	.PWDATA(o_PWDATA),

	.rfin(rfin),
	.SH_EN1(SH_EN1),
	.SH_EN2(SH_EN2),
	.pkt_rec(pkt_rec),
	.RX(RX),
	.TX_OUT(TX_OUT)
);

		
		
endmodule 



