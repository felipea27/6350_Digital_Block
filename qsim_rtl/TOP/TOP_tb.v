`timescale 1ns/1ps

module TOP_tb;

    reg din, clk, rst, sh_en;
    reg CS, MOSI, SCK;
    reg [7:0] master_data_received;
    reg [7:0] MDATA;


    wire pkt_rec, MISO;

    // Instantiate the transceiver wrapper
	TOP uut (
        	.clk(clk),
		.din(din),
		.rst(rst),
		.MOSI(MOSI),
		.sh_en(sh_en),
		.CS(CS),
		.pkt_rec(pkt_rec),
		.MISO(MISO),
		.SCK(SCK)
	    );
    // SPI clock generation (10 MHz)
  	always #50 clk = ~clk;

	initial begin
		sh_en = 0;
		forever begin
			#999900 sh_en = 1; 
			#100 sh_en = 0; 
		end
    	end

	reg SCK_int;
        always @(posedge clk) begin
                if (CS == 0)  // Only toggle SCK when CS is low
                        SCK_int = ~SCK_int;
                else
                        SCK = 0;
        end
        assign SCK = SCK_int;

	initial begin
		MDATA = 0;
		master_data_received = 0;
		CS = 1;
		SCK = 0;

		sh_en = 0;
		din = 0;
		clk = 0; 
		rst = 0;

		#100;
		rst = 1;
		#100;
		rst = 0;


        // The sync bits we are looking for are 11111 at specific positions

        // Send data that will not trigger pkt_rec (no sync bits)
		din = 1; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;

		// Send valid sync pattern (sync bits '11111' at positions 62, 61, 60, 59, 58)
	       repeat (5) begin
		       din = 1;
		       #1000000;
	       end

		// Send random data from 57 to 37 (21 bits)
		din = 0; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
		din = 0; #1000000;

		// Send valid sync pattern at positions 36 to 32
		din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 1; #1000000;

		// Send intermittent bits up until bit 9 (23 bits)
		din = 0; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 0; #1000000; din = 1; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 1; #1000000; din = 0; #1000000;

		// Send valid sync pattern at positions 8 to 0
		din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 1; #1000000;
		din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 1; #1000000;
		din = 1; #1000000;

		repeat (8) send_packet(8'hC3);		

		// Send more random data to simulate continued operation
		din = 0; #1000000; din = 1; #1000000; din = 0; #1000000; din = 0; #1000000;
		din = 1; #1000000; din = 1; #1000000; din = 1; #1000000; din = 0; #1000000;
		
		// Test end, finish simulation
		$stop;
	    end

	task send_packet(input [7:0] mdata);
	    integer i;
	    begin
		CS = 1;
		SCK = 0;
		MDATA = mdata;
		#100;
		CS = 0;  // Reactivate Slave (SS low)
		// Send another byte 
		i = 3'd7;  // Reset counter
		repeat (8) begin
			SCK = 0;
			MOSI = MDATA[i];
			i = i - 1;
			#50;
			SCK = 1;
			master_data_received = {master_data_received[6:0], MISO};
			#50;
		end
		SCK = 0;
		#50
		CS = 1;
		SCK = 0;
		#50;
	    end
	endtask

endmodule

