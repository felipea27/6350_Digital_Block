`timescale 1ns / 1ps


module testbench;

	// Inputs
	reg i_PRESETn;
	reg i_PCLK;
	reg i_PSEL0;
	reg i_PENABLE;
	reg i_PWRITE;
	reg [15:0] i_PADDR;
	reg [7:0] i_PWDATA;
	reg [7:0] i_PRDATA;
	reg [9:0] i_BASE_ADDR;

	reg rfin;
	reg SH_EN1;
	reg SH_EN2;
	reg [63:0] MDATA;
	reg [1:0] slave;
	reg [1:0] mode;
	reg RX_MODE;
	reg [9:0] rfdata1 = 10'b0001011100;
	reg [9:0] rfdata1c; 
	reg [20:0] rfdata2 = 21'b011101010011101100010;
	reg [20:0] rfdata2c;
	reg [22:0] rfdata3 = 23'b01010110010101101101010;
	reg [22:0] rfdata3c;

	// Outputs
	wire o_WR0;
	wire o_WR1;
	wire o_WR2;
	wire o_WR3;
	wire o_DR0;
	wire o_DR1;
	wire o_DR2;
	wire o_DR3;
	wire PREADY;
	wire [7:0] o_PWDATA;
	wire [7:0] o_PRDATA;

	wire pkt_rec;
	wire TX_OUT;
	time rfin_time, sh_en_time1, sh_en_time2;
	integer i = 0;
	integer i2 = 0;
	real gaussian_values[0:9999]; // Array to store 10,000 values


	// Files
	integer gaus_file;
	integer tx_file;
	integer rx_file;
	integer timing_file1;
	integer timing_file2;
	integer rand_file;

	// Instantiate the Unit Under Test (UUT)
	APB_interface_2 uut (
		.i_PRESETn(i_PRESETn), 
		.i_PCLK(i_PCLK), 
		.i_PSEL0(i_PSEL0), 
		.i_PENABLE(i_PENABLE), 
		.i_PWRITE(i_PWRITE), 
		.i_PADDR(i_PADDR), 
		.i_PWDATA(i_PWDATA), 
		.i_PRDATA(i_PRDATA), 
		.i_BASE_ADDR(i_BASE_ADDR), 
		.o_WR0(o_WR0), 
		.o_WR1(o_WR1), 
		.o_WR2(o_WR2), 
		.o_WR3(o_WR3), 
		.o_DR0(o_DR0), 
		.o_DR1(o_DR1), 
		.o_DR2(o_DR2), 
		.o_DR3(o_DR3),
		.PREADY(PREADY),
		.o_PWDATA(o_PWDATA), 
		.o_PRDATA(o_PRDATA),

		.rfin(rfin),
		.SH_EN1(SH_EN1),
		.SH_EN2(SH_EN2),
		.pkt_rec(pkt_rec),
		.RX(RX_MODE),
		.TX_OUT(TX_OUT)
	);
	//READ parameters
	localparam STATUS	= 4'b0000;
	localparam RX		= 4'b0001;
	
	//Write parameters
	localparam MODE00	= 2'b00;
	localparam MODE01	= 2'b01;
	localparam MODE10	= 2'b10;
	localparam MODE11	= 2'b11;
	
	localparam SLAVE0	= 2'b00;
	localparam SLAVE1	= 2'b01;
	localparam SLAVE2	= 2'b10;
	localparam SLAVE3	= 2'b11;
	
	localparam SCK8	= 2'b00; //8MHZ Ha PCLK 16MHZ!!!
	localparam SCK4	= 2'b01; //4MHZ
	localparam SCK2	= 2'b10; //2MHZ
	localparam SCK1	= 2'b11; //1MHZ


	
	task APB_READ(input RD);
		begin
			case(RD)
			4'b0000: i_PADDR=16'b0000000001000000;
			4'b0001: i_PADDR=16'b0000000001000100;
			endcase
			i_PWRITE=0;i_PSEL0=1;
			#100
			i_PENABLE=1;
			#100
			i_PSEL0=0; i_PENABLE=0;
			
		end
	endtask
	
	task APB_WRITE(input[1:0] MODE, SLAVE,SCK, input [7:0] DATA);
		begin
	    	$fwrite(tx_file, "Data sent: %b\n", DATA[7:0]);

		///CONFIG write-------------------------------------------------------------------------	

			i_PWDATA=({2'b00, MODE, SLAVE, SCK});
			i_PADDR=16'b0000000001000000; i_PWRITE=1; i_PSEL0=1; // CONFIG_REG write
			#100
			i_PENABLE=1;
			#100
			i_PSEL0=0; i_PENABLE=0;i_PWRITE=0;
		///TX write-----------------------------------------------------------------------------
			#100
			i_PADDR=16'b0000000001000100;i_PWRITE=1;i_PSEL0=1;i_PWDATA=DATA;// TX data
			#100
			i_PENABLE=1;
			#100
			i_PSEL0=0; i_PENABLE=0;i_PWRITE=0;
		///CMD write-----------------------------------------------------------------------------				
			#100
			i_PADDR=16'b0000000001001100;i_PWRITE=1;i_PSEL0=1;i_PWDATA=8'b00000010; //CMD REG
			#100
			i_PENABLE=1;
			#100
			i_PSEL0=0; i_PENABLE=0;i_PWRITE=0;
		end
	endtask
	
	task BYTE_WRITE (SCK, input [63:0] mdata);
		begin
			MDATA = mdata;
			slave = 2'b11;
			mode = 2'b00;
			RX_MODE = 0;
			
			repeat (8) begin
				APB_WRITE(mode, 2'b11, SCK, MDATA[63:56]);
				repeat (8) #999200;
				MDATA = MDATA << 8;
				#8000;
			end
		end
	endtask

	task BYTE_RD ();
		begin
			#100;
			repeat (8) begin
				RX_MODE = 1;
				APB_WRITE(MODE00,SLAVE3,SCK4,8'b00000000);
				#7200;
				//$fwrite(rx_file, "RX_IN: %h\n", uut.SPI_modul2.top_slave.SPI_IN);
				APB_READ(RX);
				#800
	    			$fwrite(rx_file, "%h", o_PRDATA);
				APB_READ(STATUS);
				#800;
			end
			$fwrite(rx_file, "\n");
			#200;
		end
	endtask

	task SEND_SYNC;
		input integer position;
		begin

			rfdata1c = rfdata1;
			rfdata2c = rfdata2;
			rfdata3c = rfdata3;
			RX_MODE = 1;
			//Send Random 10 bits
			repeat (10) begin
				RFIN(rfdata1c[9], 1000000, position, 100);
				rfdata1c = rfdata1c << 1;
			end
	    		$fwrite(rx_file, "Sending: 7dd4ec5f595b51ff\n");
			
			//Send sync bits '11111' at locations 62, 61, 60, 59, 58
			repeat (5) begin
				RFIN(1, 1000000, position, 100);
              		end

			//Send random  bits from locations 57 to 37 (21 bits)
			repeat (21) begin
				RFIN(rfdata2c[20], 1000000, position, 100);
				rfdata2c = rfdata2c << 1;
			end

			//Send sync bits '11111' at locations 36, 35, 34, 33, 32
			repeat (5) begin
				RFIN(1, 1000000, position, 100);
			end

			//Send random bits from locations 31 to 9 (23 bits)
			repeat (23) begin
				RFIN(rfdata3c[20], 1000000, position, 100);
				rfdata3c = rfdata3c << 1;
			end

			//Send sync bits '11111' at locations 2, 4, 5, 6, 8
			repeat (9) begin
				RFIN(1, 1000000, position, 100);
			end
		end
	endtask

     task RFIN;

	    input reg rfin_value;
	    input integer total_period;
	    input integer position;
	    input integer high_time;

	    integer rand_index;
	    integer adj_total_period, adj_position, adj_high_time;
	    integer delay_before, delay_after;
	    integer percent;
	    real rand_factor;

	begin

	    rand_index = $random;
	    rand_index = ((rand_index < 0 ? -rand_index : rand_index) % 10000);
	    rand_factor = gaussian_values[rand_index];
    	    //rand_factor = 0;
	    $fwrite(rand_file, "%f\n",  rand_factor);
	    percent = 100;

            // Adjust values with randomness
            adj_total_period = total_period + (total_period * rand_factor / percent);
            adj_position = position + (position * rand_factor / percent);
            adj_high_time = high_time + (high_time * rand_factor / percent);

            // Calculate delays
            delay_before = (adj_total_period * adj_position) / percent;
            delay_after = adj_total_period - delay_before - adj_high_time;

            // $display("time: %t, delay_before: %d, delay_after: %d, rf_high: %d, rfin: %d, rndm: %d, adj_total_period: %d, 
            //         adj_position: %d", $time, delay_before, delay_after, adj_high_time, rfin_value, rand_factor, adj_total_period, adj_position);

            // Apply the rfin signal timing
            #delay_before;
            
	    rfin = rfin_value;
	    rfin_time = $time;
            
	    #adj_high_time;
            rfin = 0;
	    #delay_after;
    end
        endtask

	task files;



		begin
			tx_file = $fopen("DATA/p7/TX_OUT.txt", "w");
			if (tx_file == 0) begin
				$display("Error opening file for writing!");
				$finish;
			end


			rx_file = $fopen("DATA/p7/PRDATA.txt", "w");
			if (rx_file == 0) begin
				$display("Error opening file for writing!");
				$finish;
			end

			timing_file2 = $fopen("DATA/p7/timing_log2.txt", "w");
			if (!timing_file2) begin
				$display("Error: Could not open file.");
				$finish;
			end
			
			timing_file1 = $fopen("DATA/p7/timing_log1.txt", "w");
			if (!timing_file1) begin
				$display("Error: Could not open file.");
				$finish;
			end

			rand_file = $fopen("DATA/p7/rand_factors.txt", "w");
			if (!rand_file) begin
				$display("Error: Could not open file.");
				$finish;
			end
		end
	endtask


	always @(posedge pkt_rec) begin
		BYTE_RD();
	end

	always @(posedge SH_EN1) begin
		sh_en_time1 = $time;
    	        $fwrite(timing_file1, "%0t\n",  sh_en_time1 - rfin_time);
	   	#400;
	    	$fwrite(tx_file, "Time: %0t, ", $time);
	    	$fwrite(tx_file, "TX_OUT: %b\n", TX_OUT);
	end
	
	always @(posedge SH_EN2) begin
		sh_en_time2 = $time;
    	        $fwrite(timing_file2, "%0t\n",  sh_en_time2 - rfin_time);
	   	#400;
	    	//$fwrite(tx_file, "Time: %0t, ", $time);
	    	//$fwrite(tx_file, "TX_OUT: %b\n", TX_OUT);
	end

	initial begin
		i_PCLK=1'b0;
		forever #50 i_PCLK=~i_PCLK;
	end

        initial begin
                SH_EN2 = 1;
                forever begin
                        SH_EN2 = 1;
                        #100;
                        SH_EN2 = 0;
                        #999900;
                end
        end

	initial begin
                SH_EN1 = 0;
                forever begin
                        #500000 SH_EN1 = 1;
                        #100 SH_EN1 = 0;
                        #499900;
                end
        end


	initial begin
		// Initialize Inputs
		i_PRESETn = 0;
		i_PCLK = 0;
		i_PSEL0 = 0;
		i_PENABLE = 0;
		i_PWRITE = 0;
		i_PADDR = 0;
		i_PWDATA = 0;
		i_PRDATA = 0;
		i_BASE_ADDR = 10'b0000000001;
		MDATA = 64'b0;

		// Wait 100 ns for global reset to finish
	

		
		gaus_file = $fopen("gaussian_values.txt", "r");

		// Read the file and store values in the array
		for (i2 = 0; i2 < 10000; i2 = i2 + 1) begin
		    $fscanf(gaus_file, "%f\n", gaussian_values[i2]);
		end

		$fclose(gaus_file);

		#50
		#100
		i_PRESETn = 1;
		#200

		files();
		
		BYTE_WRITE(SCK4, 64'h8123456789ABCD0F);
		#980453;	//alignment so that position is true	
		//SEND_SYNC(0);
		repeat(100) begin
			i = i + 1; // Increment counter
			$display("Iteration: %0d", i);
			SEND_SYNC(60);
			#800;
		end
		

			
		$stop;
	end
      

endmodule

