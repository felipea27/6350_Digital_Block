`timescale 1ns/1ps
module SR_Latch_tb;

    reg set, rst, clk, en;
    wire q;

    // Instantiate SR Latch
    SR_Latch uut (
        .set(set),
        .rst(rst),
        .clk(clk),
        .en(en),
        .q(q)
    );

    // Generate system clock
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        en = 0;
        set = 0;

        // Reset sequence
        #10 rst = 0;

        // Test set functionality
        #10 set = 1; // q should become 1
        #10 set = 0;

        // Enable goes high
        #10 en = 1;

        // Set again
        #10 set = 1;
        #10 set = 0;

        // Negege of en (should reset q)
        #10 en = 0;

        // End test
        #20 $finish;
    end

    // Monitor values
    initial begin
        $monitor("Time=%0t | set=%b | rst=%b | en=%b | q=%b", $time, set, rst, en, q);
    end

endmodule
