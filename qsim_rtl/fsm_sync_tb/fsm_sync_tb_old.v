`timescale 1ns/100ps
module fsm_sync_tb;

    //Define testbench signals
    reg clk;
    reg rst; 
    reg rfin;
    reg sh_en;
    reg state;


    fsm_sync uut( 
        .clk(clk),
        .rst(rst),
        .rfin(rfin),
	.sh_en(sh_en),
	.fsm_rst(fsm_rst)
    );

    always begin
            #50 clk = ~clk; // Toggle clock every 50 ns, 10MHz clock
    end

    initial begin

        clk = 0;
        rst = 0;
        rfin = 0;
	fsm_rst = 0;

        // Reset the circuit
        rst = 1; 
        #100;
        rst = 0; 
        #100;

        #5;
        rfin = 1; 
        #90; //here we wait to emulate rfin
        rfin = 0;
	#500; //wait for the next signal

	repeat(3) @(posedge clk);
	$finish;
           
    end


    initial begin
        $monitor("At time %t, clk = %b, rst = %b, rfin = %b, state = %b", $time, clk, rst, rfin, state);
    end


endmodule
