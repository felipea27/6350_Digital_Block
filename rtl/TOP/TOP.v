`timescale 1ns/1ps
module TOP (clk, din, pkt_rec, rst, CS, MISO, MOSI);
	input clk, din, rst, MOSI;
	output pkt_rec, MISO;

   
    // Internal signals
   	wire pkt_rec, clk_en, pkt_flg, SPI_buf_in, SPI_EN, byte_flg;
   	wire [7:0] SPI_IN
 	wire [63:0] SHIFT_OUT;
	wire CS, MISO, MOSI

    // Shift Buffer: Loads and shifts in data from RF
 	Shift_Buffer shift_buf_inst (
        	.din(din),
        	.clk(clk),
        	.rst(rst),
        	.dout(SHIFT_OUT),
        	.pkt_rec(pkt_rec),
        	.en(clk_en)
    	);

    // Packet Register: Stores valid packets
	Pkt_reg pkt_reg_inst (
        	.din(SHIFT_OUT),
        	.pkt_rec(pkt_rec),
        	.clk(clk),
		.pkt_flg(pkt_flg),
        	.rst(rst),
        	.dout(SPI_buf_in)
    	);
	
	// SPI BUF IN: buffers a byte for SPI
	SPI_Pkt spi_pkt_inst (
        	.dout(SPI_IN),
        	.din(SPI_buf_in),
        	.clk(clk),
		.en(SPI_EN),
        	.rst(rst),
		.byte_flg(byte_flg)



    // Clock Counter: Generates 1 ms enable signals
    //CLK_Counter CLK_counter_inst (
    //    .clk(clk),
    //    .rst(rst),
    //    .en(en)  // Controls when the shift register captures data
    //);

    // SPI Module: Handles SPI communication with the master
   // SPI_Slave spi_inst (
   //     .clk(clk),
   //     .cs(cs),
   //     .mosi(mosi),
   //     .miso(miso),
   //     .data_in(spi_data) // Send stored packet to master
   // );

endmodule

