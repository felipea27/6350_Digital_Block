`timescale 1ns / 10ps


module testbench;

	localparam PACKET_SIZE = 24;
	localparam BYTES_P_PS = (PACKET_SIZE + 8)/8;
	localparam BYTES_PS = PACKET_SIZE/8;
	
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
	reg [PACKET_SIZE + 7 :0] MDATA;
	reg [PACKET_SIZE - 1 :0] MDATA_I;
	reg [PACKET_SIZE - 1 :0] data_sent;
	reg [1:0] slave;
	reg [1:0] mode;
	reg RX_MODE;
	reg TX_BY;
	reg CONFIG;
	wire [3:0] arthur;
	wire [1:0] osc_freq;

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

	wire MOSI;
	wire MISO;
	wire SCK;
	wire SS3;

	wire [13:0] test_ext_count_val_RX;
	wire [13:0] test_ext_count_val_TX;
	wire [15:0] test_ext_count_RX;
	wire [15:0] test_ext_count_TX;
	wire test_SPI_OUT_RDY;
	wire [7:0] test_SPI_OUT;
	wire test_spi_rdy_edge;	

	wire pkt_rec;
	wire TX_OUT;
	integer tx_file;
	integer rx_file;
	integer rand_file;
	integer gaus_file;
	integer packet_file;
	time rfin_time, sh_en_time;
	integer i = 0;
	integer i2 = 0;
	real gaussian_values[0:9999]; // Array to store 10,000 values
	reg [PACKET_SIZE - 1 :0] packets [0:9999]; // Array to store 10,000 values


//	assign sh_en = .uut.SPI_modul2.top_slave.SH_EN;

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

		.MOSI(MOSI),
		.SS3(SS3),
		.SCK(SCK),
		.MISO(MISO)

//		.rfin(rfin),
//		.pkt_rec(pkt_rec),
//		.RX(RX_MODE),
//		.sh_en(sh_en),
//		.TX_OUT(TX_OUT),
//		.TX_BY(TX_BY)
	);

	TOP top_slave (
		.clk(i_PCLK),

		.MOSI(MOSI),
		.CS(SS3),
		.MISO(MISO),
		.SCK(SCK),

		.rfin(rfin),
		.rst(i_PRESETn),
		.pkt_rec(pkt_rec),
		.sh_en(sh_en),
		.RX(RX_MODE),
		.TX_BY(TX_BY),
		.TX_OUT(TX_OUT),

		.ext_count_val_RX(test_ext_count_val_RX),
		.ext_count_val_TX(test_ext_count_val_TX),
		.ext_count_RX(test_ext_count_RX),
		.ext_count_TX(test_ext_count_TX),
		.test_SPI_OUT_RDY(test_SPI_OUT_RDY),
		.test_SPI_OUT(test_SPI_OUT),
		.test_spi_rdy_edge(test_spi_rdy_edge),

		.i_CONFIG(CONFIG),
		.arthur(arthur),
		.osc_freq(osc_freq)
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
	localparam PREAMBLE = 8'hff;


	
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
	
	task BYTE_WRITE (SCK, input [PACKET_SIZE - 1 :0] mdata);
		begin
			MDATA = {PREAMBLE, mdata};
			slave = 2'b11;
			mode = 2'b00;
			RX_MODE = 0;
	    		$fwrite(tx_file, "Data sent: %b\n", MDATA);
			#1000000;
			repeat (BYTES_P_PS) begin // ADJUST FOR PREAMBLE/PS
				APB_WRITE(mode, 2'b11, SCK, MDATA[PACKET_SIZE + 7 : PACKET_SIZE]); // ADJUST FOR PREAMBLE/PS
				repeat (8) #999900; //#1000000; //947100
				//$display($time);
				MDATA = MDATA << 8;
			end
		end
	endtask

	task BYTE_RD ();
		begin
			#800;
			repeat (BYTES_PS) begin
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
		end
	endtask

	task SEND_SYNC;
		input reg [PACKET_SIZE - 1 :0] mdata;
		input integer mean_high;
		input integer mean_period; 
		begin
			MDATA_I = mdata;
			RX_MODE = 1;
			//Send Preamble bits
			repeat (8) begin
				RFIN(1, mean_period, 50, mean_high); // Adjust for mean period
              		end

			$fwrite(rx_file, "Sending: %h\n", MDATA_I);
			
			repeat (PACKET_SIZE) begin
				RFIN(MDATA_I[PACKET_SIZE - 1], mean_period, 50, mean_high);
				MDATA_I = MDATA_I << 1;	
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

	task configuration;
		input reg [7:0] osc_freq;
		input reg [7:0] arthur;
		input reg [15:0] ext_count_val_RX;
		input reg [15:0] ext_count_val_TX;
	
		begin
			CONFIG = 1;
			//SET EXTERNAL COUNTER
			APB_WRITE(MODE00, SLAVE3, SCK4, 8'hF8);
			#7200;
			APB_WRITE(MODE00, SLAVE3, SCK4, ext_count_val_RX[15:8]);
			#7200;
			APB_WRITE(MODE00, SLAVE3, SCK4, ext_count_val_RX[7:0]);
			#7200;
			APB_WRITE(MODE00, SLAVE3, SCK4, 8'hF9);
			#7200;
			APB_WRITE(MODE00, SLAVE3, SCK4, ext_count_val_TX[15:8]);
			#7200;
			APB_WRITE(MODE00, SLAVE3, SCK4, ext_count_val_TX[7:0]);
			#7200;
			//SET OSCILLATOR FREQUENCY
			APB_WRITE(MODE00, SLAVE3, SCK4, 8'hFA);
			#7200;
			APB_WRITE(MODE00, SLAVE3, SCK4, osc_freq);
			#7200;
			//SET ARTHUR BITS
			APB_WRITE(MODE00, SLAVE3, SCK4, 8'hFB);
			#7200;
			APB_WRITE(MODE00, SLAVE3, SCK4, arthur);
			#7200;
			#300;
			CONFIG = 0;
		end
	endtask
	
	always @(posedge pkt_rec) begin
		BYTE_RD();
	end

        initial begin
                i_PCLK=1'b0;
                forever #50 i_PCLK=~i_PCLK;
        end

        always @(posedge sh_en) begin
		fork begin
			#250;
			if(RX_MODE == 0) begin
				$fwrite(tx_file, "Time: %0t, ", $time);
				$fwrite(tx_file, "TX_OUT: %b\n", TX_OUT);
			end
		end join
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
		MDATA = 0;
		rfin = 0;
		TX_BY = 0;
		RX_MODE = 0;
		CONFIG = 0;

		// Wait 100 ns for global reset to finish
	
		tx_file = $fopen("/simulation/fandrade/rtl/original/DATA/std0/TX_OUT.txt", "w");
		if (tx_file == 0) begin
			$display("Error opening file for writing!");
			$finish;
		end

		rx_file = $fopen("/simulation/fandrade/rtl/original/DATA/std0/PRDATA.txt", "w");
		if (rx_file == 0) begin
			$display("Error opening file for writing!");
			$finish;
		end

//		rand_file = $fopen("DATA/std0/rand_factors.txt", "w");
  // 		if (!rand_file) begin
//			$display("Error: Could not open file.");
//			$finish;
//		end

		
		gaus_file = $fopen("../std/gaussian_values0.txt", "r");

		// Read the file and store values in the array
		for (i2 = 0; i2 < 10000; i2 = i2 + 1) begin
		    $fscanf(gaus_file, "%f\n", gaussian_values[i2]);
		end

		$fclose(gaus_file);

		$readmemb("../packets_bs_24.txt", packets); // read in array of packets

		#50
		#100
		i_PRESETn = 1;
		#200
		
		//BYTE_WRITE(SCK4, 64'h8123456789ABCD0F);
		configuration(8'b00000011, 8'b00001101, 16'h2710, 16'h2500); //~9500

		/*CONFIG = 1;
		#300;	
		APB_WRITE(MODE00, SLAVE3, SCK4, 8'hF8);
		#7200;
		APB_WRITE(MODE00, SLAVE3, SCK4, 8'h27);
		#7200;
		APB_WRITE(MODE00, SLAVE3, SCK4, 8'h10);
		#7200;
		#300;
		CONFIG = 0;
		*/

		#700;
		CONFIG = 0;
		repeat(1) begin	
			repeat(50) begin
				i = i + 1; // Increment counter
				//$display("RX Iteration: %0d", i);
				MDATA = packets[i];
				//$display("%b", MDATA);
				SEND_SYNC(MDATA, 100, 1000000);
				#800;
			end
			i = i-50;
			#1000000;
			
			repeat(50) begin
				i = i + 1; // Increment counter
				$display("TX Iteration: %0d", i);
				MDATA = packets[i];
				BYTE_WRITE(SCK4, MDATA);
			end
		
		end
	
		CONFIG = 1;
		#300;	
		APB_WRITE(MODE00, SLAVE3, SCK4, 8'hFC);
		#700;
		#7200;
		#300;
		CONFIG = 0;

		repeat(1) begin	
			repeat(50) begin
				i = i + 1; // Increment counter
				//$display("RX Iteration: %0d", i);
				MDATA = packets[i];
				//$display("%b", MDATA);
				SEND_SYNC(MDATA, 100, 1000000);
				#800;
			end
			i = i-50;
			#1000000;
			
			repeat(10) begin
				i = i + 1; // Increment counter
				$display("TX Iteration: %0d", i);
				MDATA = packets[i];
				BYTE_WRITE(SCK4, MDATA);
			end
		
		end

		CONFIG = 1;
		#300;	
		APB_WRITE(MODE00, SLAVE3, SCK4, 8'hFD);
		#700;
		#7200;
		#300;
		CONFIG = 0;

		repeat(1) begin	
			repeat(10) begin
				i = i + 1; // Increment counter
				//$display("RX Iteration: %0d", i);
				MDATA = packets[i];
				//$display("%b", MDATA);
				SEND_SYNC(MDATA, 100, 1000000);
				#800;
			end
			i = i-10;
			#1000000;
			
			repeat(50) begin
				i = i + 1; // Increment counter
				$display("TX Iteration: %0d", i);
				MDATA = packets[i];
				BYTE_WRITE(SCK4, MDATA);
			end
		
		end
		#8000;
		
		configuration(8'b00000001, 8'b00000001, 16'h2510, 16'h2900); //~9500
		
		repeat(1) begin	
			repeat(20) begin
				i = i + 1; // Increment counter
				//$display("RX Iteration: %0d", i);
				MDATA = packets[i];
				//$display("%b", MDATA);
				SEND_SYNC(MDATA, 100, 1000000);
				#800;
			end
			#1000000;
			
			repeat(20) begin
				i = i + 1; // Increment counter
				$display("TX Iteration: %0d", i);
				MDATA = packets[i];
				BYTE_WRITE(SCK4, MDATA);
			end
		
		end
		#8000;

		configuration(8'b00000011, 8'b00000101, 16'h2710, 16'h2710); //~9500
		
		repeat(1) begin	
			repeat(20) begin
				i = i + 1; // Increment counter
				//$display("RX Iteration: %0d", i);
				MDATA = packets[i];
				//$display("%b", MDATA);
				SEND_SYNC(MDATA, 100, 1000000);
				#800;
			end
			#1000000;
			
			repeat(20) begin
				i = i + 1; // Increment counter
				$display("TX Iteration: %0d", i);
				MDATA = packets[i];
				BYTE_WRITE(SCK4, MDATA);
			end
		
		end
		#8000;
		
		CONFIG = 1;
		#300;	
		APB_WRITE(MODE00, SLAVE3, SCK4, 8'hFC);
		#700;
		#7200;
		#300;
		APB_WRITE(MODE00, SLAVE3, SCK4, 8'hFD);
		#700;
		#7200;
		CONFIG = 0;
		#300;	
		
		repeat(1) begin	
			repeat(50) begin
				i = i + 1; // Increment counter
				//$display("RX Iteration: %0d", i);
				MDATA = packets[i];
				//$display("%b", MDATA);
				SEND_SYNC(MDATA, 100, 1000000);
				#800;
			end
			#1000000;
			
			repeat(50) begin
				i = i + 1; // Increment counter
				$display("TX Iteration: %0d", i);
				MDATA = packets[i];
				BYTE_WRITE(SCK4, MDATA);
			end
		
		end

		#80000;
		$fclose(tx_file);
		$fclose(rx_file);
		
		#100000000		
		$stop;
	end
      

endmodule

