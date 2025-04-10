`timescale 1ns/1ps

module SH_SYNC_tb;
    // Testbench signals
    reg clk;                  
    reg rst;                 
    reg rfin;
    reg RX;
    reg tx_rdy;
    
    wire sh_en;
    wire fsm_rst;
    integer gaussian_values;

        reg [9:0] rfdata3 = 10'b1001011100;
        reg [9:0] rfdata1c;
        reg [26:0] rfdata2 = 27'b101010011101100010001110110;
        reg [26:0] rfdata2c;
        reg [31:0] rfdata1 = 32'b11011101010110010101101101011100;
        reg [31:0] rfdata3c;


	// Instantiate the Shift_Buffer module
	SH_SYNC uut (
		.rfin(rfin),
		.clk(clk),
		.rst(rst),
		.sh_en(sh_en),
		.RX(RX),
		.tx_rdy(tx_rdy),
		.fsm_rst(fsm_rst)

	);

	initial begin
                clk=1'b0;
                forever #50 clk=~clk;
	end

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
            //rand_factor = gaussian_values[rand_index];
            rand_factor = 0;
            //$fwrite(rand_file, "%f\n",  rand_factor);
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
            //rfin_time = $time;

            #adj_high_time;
            rfin = 0;
            #delay_after;
    end
        endtask

        task SEND_SYNC;
                input integer position;
                begin
			RX = 1;
                        rfdata1c = rfdata1;
                        rfdata2c = rfdata2;
                        rfdata3c = rfdata3;
                        //Send Random 2 bits
                        repeat (2) begin
                                RFIN(rfdata1c[9], 1000000, position, 100);
                                rfdata1c = rfdata1c << 1;
                        end


                        //Send preamble
                        repeat (8) begin
                                RFIN(1, 1000000, position, 100);
                        end

                        //Send random  bits from locations 63 to 37 (27 bits)
                        repeat (27) begin
                                RFIN(rfdata2c[26], 1000000, position, 100);
                                rfdata2c = rfdata2c << 1;
			end

                        //Send sync bits '11111' at locations 36, 35, 34, 33, 32
                        repeat (8) begin
                                RFIN(1, 1000000, position, 100);
                        end

                        //Send random bits from locations 31 to 0 (32 bits)
                        repeat (32) begin
                                RFIN(rfdata3c[31], 1000000, position, 100);
                                rfdata3c = rfdata3c << 1;
                        end

                end
        endtask

    initial begin
	    
	    rst = 1;
	    rfin = 0;
	    tx_rdy = 0;
	    rfdata1c = 0;
	    rfdata2c = 0;
	    rfdata3c = 0;
	    RX = 1;
	    #200;
	    rst = 0;
	    #800;
	    rst = 1;
	    SEND_SYNC(1);
	    #800;
	    RX = 0;
	    #500;
	    tx_rdy = 1;
	    #100000000
	    $stop;

    end
endmodule


