`timescale 1ns/1ps
module CLK_Counter_tb;

    reg clk, rst;
    wire en;

    // Instantiate Clock Counter
    CLK_Counter uut (
        .clk(clk),
        .rst(rst),
        .en(en)
    );

    // Generate clock
    always #50 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;

        // Reset release
        #100 rst = 0;

        // Let it run and observe enable signal
        #2500000;

        // End simulation
        $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t | en=%b", $time, en);
    end

endmodule
