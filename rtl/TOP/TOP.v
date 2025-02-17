`timescale 1ns/1ps
module TOP (clk, din, spi_data, pkt_rec, rst);
	input clk, din, rst;
	output pkt_rec, spi_data;

   
    // Internal signals
    wire pkt_rec, en, sr_q;
    wire [63:0] shift_buf;
    wire [63:0] spi_data;

    // SR Latch: Captures short RF pulses asynchronously
    SR_Latch sr_latch (
        .set(din),
        .rst(rst), // Reset on negedge of enable from clock counter
        .q(sr_q),
	.en(en),
	.clk(clk)
    );

    // Shift Buffer: Loads and shifts in data from RF
    Shift_Buffer shift_buf_inst (
        .din(sr_q),
        .clk(clk),
        .rst(rst),
        .dout(shift_buf),
        .pkt_rec(pkt_rec),
        .en(en)
    );

    // Packet Register: Stores valid packets
    Pkt_reg pkt_reg_inst (
        .shift_buf(shift_buf),
        .pkt_rec(pkt_rec),
        .clk(clk),
        .rst(rst),
        .SPI_in(spi_data)
    );

    // Clock Counter: Generates 1 ms enable signals
    CLK_Counter CLK_counter_inst (
        .clk(clk),
        .rst(rst),
        .en(en)  // Controls when the shift register captures data
    );

    // SPI Module: Handles SPI communication with the master
   // SPI_Slave spi_inst (
   //     .clk(clk),
   //     .cs(cs),
   //     .mosi(mosi),
   //     .miso(miso),
   //     .data_in(spi_data) // Send stored packet to master
   // );

endmodule

