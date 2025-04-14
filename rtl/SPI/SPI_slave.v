`timescale 1ns / 1ps

module SPI_slave(
		input rst,
		input clk,
		input MOSI,
		input SCK,
		input SS,
		input [7:0] DATA,
	
		output reg [7:0] OUT,	
		output wire MISO,
		output reg SPI_OUT_RDY,
		output wire CS_sync
    );

	reg SHIFT_IN;
	reg [7:0] SHIFT_REG;
	reg SS_active;
	reg SCK_prev;
	reg SS_prev;

	// Synchronize external signals:
	reg SS_sync_0;
	reg SS_sync_1;
	reg SCK_sync_0;
	reg SCK_sync_1;

	reg MOSI_sync_0;
	reg MOSI_sync_1;

	always @(posedge clk or negedge rst) begin
		if (rst ==0) begin
			SS_sync_0 <= 0;
			SS_sync_1 <= 0;
			SCK_sync_0 <= 0;
			SCK_sync_1 <= 0;
			MOSI_sync_0 <= 0;
			MOSI_sync_1 <= 0;
		end
		else begin
			SS_sync_0 <= SS;
			SS_sync_1 <= SS_sync_0;
			SCK_sync_0 <= SCK;
			SCK_sync_1 <= SCK_sync_0;
			MOSI_sync_0 <= MOSI;
			MOSI_sync_1 <= MOSI_sync_0;
		end
	end
			
	// Edge detection for SCK:
	wire SCK_rising_edge = (SCK_sync_1 & ~SCK_prev);
	wire SCK_falling_edge = (~SCK_sync_1 & SCK_prev);

	// Edge detection for SS:
	wire SS_rising_edge = (SS_sync_1 & ~SS_prev);
	wire SS_falling_edge = (~SS_sync_1 & SS_prev);	
	
	// other signals
	wire SS_asserted = ~SS_sync_1;
	assign MISO = SS_asserted ? SHIFT_REG[7] : 1'b0;
	assign CS_sync = SS_sync_1;	

	//SPI Logic
	always@ (posedge clk or negedge rst) begin
		if (rst == 0) begin
			SHIFT_REG <= 0;
			SHIFT_IN <= 0;
			SS_active <= 0;
			SS_prev <= 0;
			SCK_prev <= 0;
			OUT <= 8'b0;
			SPI_OUT_RDY <= 0;
		end
		else begin
			SS_prev <= SS_sync_1;
			SCK_prev <= SCK_sync_1;
			if (SS_asserted) begin
				SPI_OUT_RDY <= 0;
				if (SS_falling_edge) begin 
					SHIFT_REG <= DATA;
				end
				else begin
					if (SCK_rising_edge) begin	
						SHIFT_IN <= MOSI_sync_1;
					end
					if (SCK_falling_edge) begin	
						SHIFT_REG <= SHIFT_REG << 1;
						SHIFT_REG[0]<=SHIFT_IN;
					end
				end
			end
			else if (SS_rising_edge) begin
				OUT <= SHIFT_REG;
				SPI_OUT_RDY <= 1;
			end
		end
	end
endmodule
