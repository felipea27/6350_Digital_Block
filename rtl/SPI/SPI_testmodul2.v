`timescale 1ns / 1ps

module SPI_testmodul2(
	input PCLK,
	input PRESETn,
	input WR0, //CONFIG_SPI
	input WR1,	//TX_SPI
	input WR2,	//RX_SPI
	input WR3,	//CMD_SPI
	
	input DR0,	//STATE_SPI
	input DR1,	//RX_SPI
	input DR2,	//Optional
	input DR3,	//Optional
	
	output[7:0] PRDATA,
	input [7:0] PWDATA,

	input RX,
        input rfin,
	output pkt_rec,
	output sh_en,
	output TX_OUT
    );
	 

	wire w_MISO;
	wire w_MOSI;
	wire w_SCK;
	wire w_SS0;
	wire w_SS1;
	wire w_SS2;
	wire w_SS3;

	wire o_S0;
	wire o_S1;
	wire o_S2;
	wire o_S3;

spi_master5 SPI_MASTER_2(
	.i_PRESETn(PRESETn),
	.i_PCLK(PCLK),
	.i_WR0(WR0), //CONFIG_SPI
	.i_WR1(WR1),	//TX_SPI
	.i_WR2(WR2),	//RX_SPI
	.i_WR3(WR3),	//CMD_SPI
	
	.i_DR0(DR0),	//STATE_SPI
	.i_DR1(DR1),	//RX_SPI
	.i_DR2(DR2),	//Optional
	.i_DR3(DR3),	//Optional
	
	.i_PWDATA(PWDATA),
	.o_PRDATA(PRDATA),
	
	.MISO(w_MISO),
	.MOSI(w_MOSI),
	.SCK(w_SCK),
	.SS0(w_SS0),
	.SS1(w_SS1),
	.SS2(w_SS2),
	.SS3(w_SS3)

);



TOP top_slave (
	.clk(PCLK),
	.MOSI(w_MOSI),
	.CS(w_SS3),
	.MISO(w_MISO),
	.SCK(w_SCK),
        .rfin(rfin),
	.rst(PRESETn),
	.pkt_rec(pkt_rec),
	.sh_en(sh_en),
	.RX(RX),
	.TX_OUT(TX_OUT)
);



endmodule
