`timescale 1ns / 1ps

module SPI_testmodul_3;

    // Testbench Signals
    reg MOSI;
    reg rst;    
    wire MISO;    
    reg SS;        
    reg SCK;        
    reg [7:0] MDATA; 
    reg [7:0] DATA;  
    reg [3:0] i;
    reg clk;    
    integer file;
    wire [7:0] OUT;


    // Variables 
    reg [7:0] master_data_received;
    reg [7:0] slave_data_received;

    // Instantiate
    SPI_slave uut (
        .MOSI(MOSI),
        .MISO(MISO),
        .SS(SS),
        .SCK(SCK),
        .DATA(DATA),
	.OUT(OUT),
	.rst(rst),
	.clk(clk)
    );
    
    always #50 clk = ~clk;
	
//    	reg SCK_int;
//	always @(posedge clk) begin
//    		if (SS == 0)  // Only toggle SCK when SS is low
//        		SCK_int = ~SCK_int;	
//		else
//			SCK = 0;
	//assign SCK = SCK_int;
//	end


    task send_packet(input [7:0] mdata, input [7:0] data);
    integer i;
    begin	
	SS = 1;
        SCK = 0;
	MDATA = mdata;
	DATA = data;
	#350;
        SS = 0;  // Reactivate Slave (SS low)
        // Send another byte 
        i = 3'd7;  // Reset counter
        repeat (8) begin
		SCK = 0;
        	MOSI = MDATA[i]; 
        	i = i - 1;
		#200;
		SCK = 1;	
		#200 master_data_received = {master_data_received[6:0], MISO};
        end
	SCK = 0;
	#400;
	SS = 1;
	SCK = 0;	
	#150 slave_data_received = OUT; 	
	$fwrite(file, "Master Sent: %h\n", MDATA);
        $fwrite(file, "Slave Received: %h\n", slave_data_received);
        $fwrite(file, "Slave Sent: %h\n", DATA);
        $fwrite(file, "Master Received: %h\n", master_data_received);
        $fwrite(file, "\n"); 
    end
endtask    

    initial begin
        // Initialize
        clk = 0;
        SCK = 0;
        SS = 1;   
        MOSI = 0;
	MDATA = 0;
	DATA = 0;
	rst = 1;
        i = 4'd7;
        master_data_received = 8'b00000000;
        slave_data_received = 8'b00000000;
	
	#100;
	rst = 0;
	#100;
	rst = 1;
	#100;

	file = $fopen("spi_data.txt", "w");
	if (file == 0) begin
    		$display("Error opening file for writing!");
    		$finish;
	end

	send_packet(8'hA5, 8'hB1);
	#600;
    	send_packet(8'h3C, 8'h1F);
    	#600;
	send_packet(8'hF0, 8'hEA);
	#200
        $finish;
	end

    // Monitor signals
    initial begin
        $monitor("Time=%0t | SS=%b | MOSI=%b | MISO=%b | SCK=%b", $time, SS, MOSI, MISO, SCK);
    end

endmodule
