`timescale 1ns/1ps
`define HALF_CLK_CYCLE #5

module testbench();

    reg clk;
    reg rstn;
    reg reset;
    reg start;
    wire [7:0] counter_out;
    wire [7:0] sram_dout;

    supply1 VDD;
    supply0 VSS;

    dut dut_inst (
        .VDD(VDD),
        .VSS(VSS),
        .clk(clk),
        .rstn(rstn),
        .reset(reset),
        .start(start),
        .sram_dout(sram_dout),
        .counter_out(counter_out)
    );

    always begin
        `HALF_CLK_CYCLE clk = ~clk;
    end

    initial begin
        
        $dumpfile("./vcd_files/dut.vcd");
        $dumpvars(0, testbench.dut_inst);
        
        //$dumpfile("./vcd_files/down_counter.vcd");
        //$dumpvars(0, testbench.dut_inst.down_counter_inst);
        
        //$dumpfile("./vcd_files/sram_controller.vcd");
        //$dumpvars(0, testbench.dut_inst.sram_controller_inst);

        //$dumpfile("./vcd_files/sram_wrapper.vcd");
        //$dumpvars(0, testbench.dut_inst.sram_wrapper_inst);

        //$dumpfile("./vcd_files/sram00.vcd");
        //$dumpvars(0, testbench.dut_inst.sram_wrapper_inst);

        //$dumpfile("./vcd_files/dut_all.vcd");
        //$dumpvars(0);
        
        clk = 1'b0;
        rstn = 1'b0;
        reset = 1'b0;
        start = 1'b0;
       
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
