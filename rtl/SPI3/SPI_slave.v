`timescale 1ns / 1ps

module SPI_SLAVE(
		input PRESETn, //PRESETn
		input MOSI,
		input SCK,
		input SS,
		input [1:0] MODE,
		input [7:0] DATA,
	
		output reg [7:0] OUT,	
		output wire MISO
    );

	reg SHIFT_IN;
	reg [7:0] SHIFT_REG;
	reg SS_neg_flag;
	reg [3:0] counter;

	assign MISO = SS ? 1'bZ : SHIFT_REG[7];
	//assign OUT = SHIFT_REG;

//	always@ (negedge rst) begin //PRESETn
//		SHIFT_REG <= 0;
//		SHIFT_IN <= 0;
//		SS_neg_flag <= 1;
//		counter <= 4'd0;
//	end
	

//	always@ (negedge SS)
//			begin
//				SHIFT_IN<=MOSI;
//				SHIFT_REG<=DATA;//initial value //SYNTHESIS ISSUE
//			end

	always@ (posedge SS)
			begin	
				OUT<=SHIFT_REG;
			end		
	
	always @(posedge SCK or negedge PRESETn) begin
			if (PRESETn == 0) begin 
				SHIFT_IN <= 0;
			end else
			if(SS==0) begin
				if(MODE==2'b00) begin
					SHIFT_IN<=MOSI;
				end
						
			end
		end

always @(negedge SCK or negedge SS or negedge PRESETn) begin
		if (PRESETn == 0) begin
			SHIFT_REG <= 0;
			SS_neg_flag <= 1;
			counter <= 4'd0;
		end else
		if(SS==0) begin
			if(MODE==2'b00) begin
				if (SS_neg_flag) begin
					SHIFT_REG <= DATA; //initialize Shift reg for tx
					SS_neg_flag <= 0;	
				end 
				else begin
					counter <= counter +1;
					SHIFT_REG <= SHIFT_REG << 1;
					SHIFT_REG[0]<=SHIFT_IN;
				end
				if (counter == 4'd7) begin
					SS_neg_flag <= 1;
					counter <= 0;
				end
			end	
		end
	end
endmodule
