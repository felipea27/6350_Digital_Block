`timescale 1ns/1ps
`define HALF_CLK_CYCLE #5

module testbench();

    reg clk;
    reg rstn;
    reg start;
    reg reset;
    wire [7:0] counter_out;

    supply1 VDD;
    supply0 VSS;

    down_counter down_counter_inst (
        .clk(clk),
        .rstn(rstn),
        .start(start),
        .reset(reset),
        .counter_out(counter_out),
        .VDD(VDD),
        .VSS(VSS)
    );

    //initial $sdf_annotate("../../innovus/down_counter/down_counter.verilog.sdf", down_counter_inst, , , "maximum"); 

    always begin
        `HALF_CLK_CYCLE clk = ~clk;
    end

    initial begin
        
        $dumpfile("./down_counter.vcd");
        $dumpvars(0, testbench.down_counter_inst);
        
        clk = 1'b0;
        rstn = 1'b0;
        start = 1'b0;
        reset = 1'b0;
       
        // global reset
        @(negedge clk);
        rstn = 1'b1;
        @(negedge clk);
        rstn = 1'b0;
        @(negedge clk);
        rstn = 1'b1;
        @(posedge clk);
        @(posedge clk);
    
        // start counting
        @(negedge clk);
        start = 1'b1;
        repeat(500) @(posedge clk);

        // reset
        @(negedge clk);
        start = 1'b0; 
        @(negedge clk);
        reset = 1'b1;
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        reset = 1'b0;
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        start = 1'b1; 
        repeat(500) @(posedge clk);
        
        $dumpall;
        $dumpflush;

        $finish;
    end

endmodule
