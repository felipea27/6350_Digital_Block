`timescale 1ns/1ps

module TX_Buffer (clk, rst, din, dout, en, load);

        input clk, rst, en, load;
        output reg dout;
	input [7:0] din;

	reg [7:0] buffer;

        always @(posedge clk) begin
                if (rst) begin
                        dout <= 1'b0;
			buffer <= 8'b0;
                end else begin
                        if (en) begin
				dout <= buffer[7];
                                buffer  <= {buffer[6:0], 1'b0};
                        end else 
				dout <= 1'b0;

			if (load) begin
				buffer <= din;
			end
			

                end
	end
endmodule

