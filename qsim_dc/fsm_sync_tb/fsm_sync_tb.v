`timescale 1ns/100ps
module fsm_sync_tb;

    //Define testbench signals
    reg clk;
    reg rst; 
    reg rfin;
    wire state;
    reg sh_en;
    wire SH_EN;


    fsm_sync uut( 
        .clk(clk),
        .rst(rst),
        .rfin(rfin),
		.sh_en(sh_en),
		.state(state)
    );

    always begin
            #50 clk = ~clk; // Toggle clock every 50 ns, 10MHz clock
    end


    initial begin
            sh_en = 0;
            forever begin
            	#500000 sh_en = 1;
                #100 sh_en = 0;
                #499900;
            end
     end


	
    task RFIN;
	   
	    input reg rfin_value;  
	    input integer total_period;
	    input integer position; 
	    input integer high_time;
	    
	    integer temp_rand;
	    integer rand_factor;
	    integer adj_total_period, adj_position, adj_high_time;
	    integer delay_before, delay_after;
	    integer rand_delay;

	begin
	    // Randomness factor between -2% and +2%
	    temp_rand = $random;  
	    rand_factor = ((temp_rand < 0 ? -temp_rand : temp_rand) % 5 - 2)/5;
	    rand_factor = 0;

	    // Adjust values with randomness
	    adj_total_period = total_period + (total_period * rand_factor / 100);
	    adj_position = position + (position * rand_factor / 100);
	    adj_high_time = high_time + (high_time * rand_factor / 100);

	    // Calculate delays
	    delay_before = (adj_total_period * adj_position) / 100;
	    delay_after = adj_total_period - delay_before - adj_high_time;

	    $display("time: %t, delay_before: %d, delay_after: %d, rf_high: %d, rndm: %d, adj_total_period: %d, 
		    adj_position: %d", $time, delay_before, delay_after, adj_high_time, rand_factor, adj_total_period, adj_position); 
	    
	    // Apply the rfin signal timing
	    #delay_before;
	    rfin = rfin_value;
	    #adj_high_time;
	    rfin = 0;
	    #delay_after;
		
        end
	endtask


    initial begin

        clk = 0;
        rst = 0;
        rfin = 0;
	sh_en = 0;

        // Reset the circuit
        rst = 1; 
        #100;
        rst = 0; 
        #51;
	
	repeat (64) begin

		RFIN(1, 1000000, 30, 100);  
		RFIN(1, 1000000, 30, 100);  
		RFIN(1, 1000000, 30, 100);  
		RFIN(1, 1000000, 30, 100);  
	end	
	$finish;
           
    end


//    initial begin
//        $monitor("At time %t, clk = %b, rst = %b, rfin = %b, state = %b", $time, clk, rst, rfin, state);
//    end


endmodule
