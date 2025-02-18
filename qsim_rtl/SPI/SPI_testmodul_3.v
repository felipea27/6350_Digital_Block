`timescale 1ns / 1ps

module SPI_testmodul_3;

    // Testbench Signals
    reg MOSI;    
    wire MISO;    
    reg SS;        
    reg SCK;        
    reg [7:0] MDATA; 
    reg [7:0] DATA;  
    reg [1:0] MODE;   
    reg [3:0] i;
    reg clk;    
    integer file;
    wire [7:0] OUT;


    // Variables 
    reg [7:0] master_data_received;
    reg [7:0] slave_data_received;

    // Instantiate
    SPI_SLAVE uut (
        .MOSI(MOSI),
        .MISO(MISO),
        .SS(SS),
        .SCK(SCK),
        .DATA(DATA),
        .MODE(MODE),
	.OUT(OUT)
    );
    
    always #50 clk = ~clk;
	
    	reg SCK_int;
	always @(posedge clk) begin
    		if (SS == 0)  // Only toggle SCK when SS is low
        		SCK_int = ~SCK_int;	
		else
			SCK = 0;
	end
	assign SCK = SCK_int;


    task send_packet(input [7:0] mdata, input [7:0] data);
    integer i;
    begin	
	SS = 1;
        SCK = 0;
	MDATA = mdata;
	DATA = data;
	#50;
        SS = 0;  // Reactivate Slave (SS low)
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
	#50;
	slave_data_received = OUT; 
	SS = 1;
	SCK = 0;	
	
	$fwrite(file, "Master Sent: %h\n", MDATA);
        $fwrite(file, "Slave Received: %h\n", slave_data_received);
        $fwrite(file, "Slave Sent: %h\n", DATA);
        $fwrite(file, "Master Received: %h\n", master_data_received);
        $fwrite(file, "\n"); 
    end
endtask    

    initial begin
        // Initialize
        SCK = 0;
        SS = 1;   
        MOSI = 0;

        MODE = 2'b00; 
        i = 4'd7;
        master_data_received = 8'b00000000;
        slave_data_received = 8'b00000000;
	
	file = $fopen("spi_data.txt", "w");
	if (file == 0) begin
    		$display("Error opening file for writing!");
    		$finish;
	end

	send_packet(8'hA5, 8'hB1);
	#50;
    	send_packet(8'h3C, 8'h1F);
    	#50;
	send_packet(8'hF0, 8'hEA);

        $finish;
	end

    // Monitor signals
    initial begin
        $monitor("Time=%0t | SS=%b | MOSI=%b | MISO=%b | SCK=%b", $time, SS, MOSI, MISO, SCK);
    end

endmodule
