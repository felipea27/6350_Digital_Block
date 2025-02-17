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

    always #50 SCK = ~SCK;

    initial begin
        // Initialize
        SCK = 0;
        SS = 1;   
        MOSI = 0;  
        MDATA = 8'b10111010; 
        DATA = 8'b11101111;  
        MODE = 2'b00; 
        i = 4'd7;
        master_data_received = 8'b00000000;
        slave_data_received = 8'b00000000;
	
	file = $fopen("spi_data.txt", "w");
	if (file == 0) begin
    		$display("Error opening file for writing!");
    		$finish;
	end

        #100;
        SS = 0;    // Activate

        // Send byte
        repeat (8) begin
            MOSI = MDATA[i];
            i = i - 1;
            #100;    
	    master_data_received = {master_data_received[6:0], MISO};

        end
 	#100;	
	slave_data_received = OUT; 
	
	$fwrite(file, "Master Sent: %h\n", MDATA);
        $fwrite(file, "Slave Received: %h\n", slave_data_received);
        $fwrite(file, "Slave Sent: %h\n", DATA);
        $fwrite(file, "Master Received: %h\n", master_data_received);
        $fwrite(file, "\n"); 

        // byte was sent get ready for nxt 
	SS = 1;
        DATA = 8'b00110011;
        MDATA = 8'b00001010;  
        #100;
        
        SS = 0;  // Reactivate Slave (SS low)

        // Send another byte 
        i = 3'd7;  // Reset counter
        repeat (8) begin
            MOSI = MDATA[i]; 
            i = i - 1;
            #100;           
	    master_data_received = {master_data_received[6:0], MISO};
        end

        #100;

	slave_data_received = OUT; 
	
	#100	
	$fwrite(file, "Master Sent: %h\n", MDATA);
        $fwrite(file, "Slave Received: %h\n", slave_data_received);
        $fwrite(file, "Slave Sent: %h\n", DATA);
        $fwrite(file, "Master Received: %h\n", master_data_received);
        $fwrite(file, "\n"); 

        // byte was sent get ready for nxt 
	SS = 1;
        DATA = 8'b11110011;
        MDATA = 8'b11011010;  
        #100;
        
        SS = 0;  // Reactivate Slave (SS low)

        // Send another byte 
        i = 3'd7;  // Reset counter
        repeat (8) begin
            MOSI = MDATA[i]; 
            i = i - 1;
            #100;           
	    master_data_received = {master_data_received[6:0], MISO};
        end

        #100;

	slave_data_received = OUT; 
	
	#100	
	$fwrite(file, "Master Sent: %h\n", MDATA);
        $fwrite(file, "Slave Received: %h\n", slave_data_received);
        $fwrite(file, "Slave Sent: %h\n", DATA);
        $fwrite(file, "Master Received: %h\n", master_data_received);
        $fwrite(file, "\n"); 

	SS = 1;
        DATA = 8'b10010111;
        MDATA = 8'b00011110;  
        #1000;


        SS = 0;  // Reactivate Slave (SS low)

        // Send another byte 
        i = 3'd7;  // Reset counter
        repeat (8) begin
            MOSI = MDATA[i]; 
            i = i - 1;
            #100;           
	    master_data_received = {master_data_received[6:0], MISO};
        end

        #100;

	slave_data_received = OUT; 
	
	#100	
	$fwrite(file, "Master Sent: %h\n", MDATA);
        $fwrite(file, "Slave Received: %h\n", slave_data_received);
        $fwrite(file, "Slave Sent: %h\n", DATA);
        $fwrite(file, "Master Received: %h\n", master_data_received);
        $fwrite(file, "\n"); 
        $finish;
	end

    // Monitor signals
    initial begin
        $monitor("Time=%0t | SS=%b | MOSI=%b | MISO=%b | SCK=%b", $time, SS, MOSI, MISO, SCK);
    end

endmodule

