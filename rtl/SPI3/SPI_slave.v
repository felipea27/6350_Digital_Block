`timescale 1ns / 1ps

module SPI_slave(
		input PRESETn,
		input MOSI,
		input SCK, 
		input SS,
		input [7:0] DATA,
                input SPI_RDY,
	
		output reg [7:0] OUT,	
		output wire MISO
    );

    reg [7:0] SHIFT_MISO;
    reg [7:0] SHIFT_MOSI;
    reg [7:0] DATA_REG;
    reg [2:0] count;
    reg MOSI_RDY;

    assign MISO = SS ? 1'bZ : SHIFT_MISO[7];


    always@(posedge SPI_RDY or negedge PRESETn or posedge SCK)
    begin
        if(!PRESETn)
        begin
            SHIFT_MISO <= 8'b0;
        end 
        else if(SPI_RDY)
        begin
            SHIFT_MISO <= DATA;
        end     
	else if(!SS && !SPI_RDY)
        begin
            SHIFT_MISO <= SHIFT_MISO << 1;
        end       
    end

    always@(posedge SCK or negedge PRESETn)
    begin
        if(!PRESETn)
        begin
            SHIFT_MOSI <= 8'b0;
        end
        else
        begin
            SHIFT_MOSI <= SHIFT_MOSI << 1;
            SHIFT_MOSI[0] <= MOSI;
        end
    end

    always @(posedge SCK or negedge PRESETn) begin
        if (!PRESETn) begin
            count <= 3'b000;     
            MOSI_RDY <= 1'b0;   
        end else begin
            count <= count + 1;  

            if (count == 3'b111 && SS == 1)
		begin
                MOSI_RDY <= 1'b1;
		end
            else
		begin
                MOSI_RDY <= 1'b0;
		end
        end
    end

    always@(posedge MOSI_RDY or negedge PRESETn)
    begin
        if(!PRESETn)
        begin
            OUT <= 8'b0;
        end
        else
        begin
            OUT <= SHIFT_MOSI;
        end
    end

endmodule
