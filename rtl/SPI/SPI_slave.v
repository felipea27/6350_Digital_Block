`timescale 1ns / 1ps

module SPI_SLAVE(
		input PRESETn,
		input MOSI,
		input SCK,
		input SS,
		input [1:0] MODE,
		input [7:0] DATA,
		
		output wire MISO
    );

	reg SHIFT_IN;
	reg [7:0] SHIFT_REG;

	assign MISO = SS ? 1'bZ : SHIFT_REG[7];
	
	
	always@ (negedge SS)
			begin
				SHIFT_IN<=MOSI;
				SHIFT_REG<=DATA;//initial value
			end  
			
	
			
	always @(posedge SCK)
		begin
			if(SS==0)
				begin
					if(MODE==2'b00)
						begin
							SHIFT_IN<=MOSI;
						end
						
					if(MODE==2'b01)
						begin
							SHIFT_REG <= SHIFT_REG << 1;
							SHIFT_REG[0]<=SHIFT_IN;
						end
						
					if(MODE==2'b10)
						begin
							SHIFT_REG <= SHIFT_REG << 1;
							SHIFT_REG[0]<=SHIFT_IN;
						end
						
					if(MODE==2'b11)
						begin
							SHIFT_IN<=MOSI;	
						end
				end
		end

always @(negedge SCK)
		begin
			if(SS==0)
				begin
					if(MODE==2'b00)
						begin
							SHIFT_REG <= SHIFT_REG << 1;
							SHIFT_REG[0]<=SHIFT_IN;
						end
					if(MODE==2'b01)
						begin
							SHIFT_IN<=MOSI;
						end
					if(MODE==2'b10)
						begin
							SHIFT_IN<=MOSI;
						end
					if(MODE==2'b11)
						begin
							SHIFT_REG <= SHIFT_REG << 1;
							SHIFT_REG[0]<=SHIFT_IN;
						end
				end	
		end

endmodule
