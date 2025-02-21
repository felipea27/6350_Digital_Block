`timescale 1ns/100ps
module fsm_sync_tb;

    //Define testbench signals
    reg clk;
    reg rst; 
    reg rfin;
    wire state;

    fsm_sync uut( 
        .clk(clk),
        .rst(rst),
        .rfin(rfin),
        .state(state)
    );

    always begin
            #50 clk = ~clk; // Toggle clock every 50 ns, 10MHz clock
    end

    initial begin

        clk = 0;
        rst = 0;
        rfin = 0;

        // Reset the circuit
        rst = 1; 
        #100;
        rst = 0; 
        #100;

		
	repeat (3) begin
		#10;
		rfin = 1; 
		#90; //here we wait to emulate rfin
		rfin = 0;
		#999900;


		#10;
		rfin = 1; 
		#90; //here we wait to emulate rfin
		rfin = 0;
		#999900;

		#10;
		rfin = 0; 
		#90; //here we wait to emulate rfin
		rfin = 0;
		#999900;
	end
	$finish;
           
    end


//    initial begin
//        $monitor("At time %t, clk = %b, rst = %b, rfin = %b, state = %b", $time, clk, rst, rfin, state);
//    end


endmodule
