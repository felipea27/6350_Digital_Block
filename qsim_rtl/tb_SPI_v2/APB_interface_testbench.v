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
	reg sh_en;
	reg [63:0] MDATA;
	reg [1:0] slave;
	reg [1:0] mode;
	reg RX_MODE;
	reg [9:0] rfdata1 = 10'b0001011100;
	reg [20:0] rfdata2 = 21'b011101010011101100010;
	reg [22:0] rfdata3 = 23'b01010110010101101101010;

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
	integer tx_file;
	integer rx_file;

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
		.sh_en(sh_en),
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
			$fwrite(rx_file, "PACKET: %h\n", uut.SPI_modul2.top_slave.pkt_reg_inst.pkt_reg);
			repeat (8) begin
				RX_MODE = 1;
				APB_WRITE(MODE00,SLAVE3,SCK4,8'b00000000);
				#7200;
				$fwrite(rx_file, "RX_IN: %h\n", uut.SPI_modul2.top_slave.SPI_IN);
				APB_READ(RX);
				#800
	    			$fwrite(rx_file, "PR_DATA: %h\n", o_PRDATA);
				APB_READ(STATUS);
				#800;
			end
		end
	endtask

	task SEND_SYNC ();
		begin
			RX_MODE = 1;
			//Send Random 10 bits
			repeat (10) begin
				#100;
			       	rfin = rfdata1[9];
				#100;
				rfin = 0;
				rfdata1 = rfdata1 << 1;
				#999800;
			end
			
			//Send sync bits '11111' at locations 62, 61, 60, 59, 58
			repeat (5) begin
				#100;
                       		rfin = 1;
				#100;
				rfin = 0;
				#999800;
              		end

			//Send random  bits from locations 57 to 37 (21 bits)
			repeat (21) begin
				#100;
			       	rfin = rfdata2[20];
				#100;
				rfin = 0;
				rfdata2 = rfdata2 << 1;
				#999800;
			end

			//Send sync bits '11111' at locations 36, 35, 34, 33, 32
			repeat (5) begin
				#100;
                       		rfin = 1;
				#100;
				rfin = 0;
				#999800;
			end

			//Send random bits from locations 31 to 9 (23 bits)
			repeat (23) begin
				#100;
			       	rfin = rfdata3[22];
				#100;
				rfin = 0;
				rfdata3 = rfdata3 << 1;
				#999800;
			end

			//Send sync bits '11111' at locations 2, 4, 5, 6, 8
			repeat (9) begin
				#100;
                       		rfin = 1;
				#100;
				rfin = 0;
				#999800;
			end
			
		//	if (pkt_rec) begin        
		//		return;
		//	end
		//
		//	//Send random bits
		//	repeat (10) begin
		//		#100;
		//	     	rfin = $random % 2;
		//		#100;
		//		rfin = 0;
		//		#999800;
		//	end

		end
	endtask

	always @(posedge sh_en) begin
	    #400;
	    //repeat (1) @(posedge i_PCLK); // Wait for one clock cycles
	    $fwrite(tx_file, "Time: %0t, ", $time);
	    $fwrite(tx_file, "TX_OUT: %b\n", TX_OUT);
	end

	initial begin
		i_PCLK=1'b0;
		forever #50 i_PCLK=~i_PCLK;
	end

        initial begin
		sh_en = 0;
		forever begin
			#500000 sh_en = 1;
			#100 sh_en = 0;
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
	
		tx_file = $fopen("TX_OUT.txt", "w");
		if (tx_file == 0) begin
			$display("Error opening file for writing!");
			$finish;
		end

		rx_file = $fopen("PRDATA.txt", "w");
		if (rx_file == 0) begin
			$display("Error opening file for writing!");
			$finish;
		end



		#50
		#100
		i_PRESETn = 1;
		#200
		APB_WRITE(MODE00,SLAVE0,SCK4,8'b01010101);
		#7200
		APB_READ(RX);
		#800
		APB_READ(STATUS);
		#800
		APB_WRITE(MODE01,SLAVE1,SCK8,8'b01010101);
		#4000
		APB_READ(RX);
		#800
		APB_WRITE(MODE10,SLAVE2,SCK8,8'b01010101);
		#4000
		APB_READ(RX);
		#800
		//APB_WRITE(MODE00,SLAVE3,SCK8,8'b01010101);
		//#4000
		//APB_READ(RX);
		//#800
		BYTE_WRITE(SCK4, 64'h8123456789ABCD0F);
		SEND_SYNC();
		#800
		BYTE_RD();

		$fclose(tx_file);
		$fclose(rx_file);
			
		$stop;
	end
      

endmodule

