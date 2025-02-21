`timescale 1ns/100ps
module fsm_sync (
    input wire clk,        // System clock
    input wire rst,        // Asynchronous reset
    input wire rfin,         // Input signal
    input wire sh_en,
    output reg state,           // Output signal
    output reg sh_en_sync2	//synchronized sh_en
);


    parameter IDLE = 1'b0, ACTIVE = 1'b1;
    reg next_state;
    reg sh_en_prev;

    //Synchronizing sh_en
    reg sh_en_sync1;

    // State Transition Logic
    always @(posedge clk or negedge clk) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
    end

    always @(posedge clk) begin
	    if (rst) begin
		    sh_en_sync1 <= 1'b0;
		    sh_en_sync2 <= 1'b0;
		    sh_en_prev <= 1'b0;
	    end else begin
		    sh_en_sync1 <= sh_en;
		    sh_en_sync2 <= sh_en_sync1;
		    sh_en_prev <= sh_en_sync2;
	    end
    end


    // Next State Logic and Timer Control
    always @(*) begin
        next_state = state;  // Default to same state
        case (state)
            IDLE: begin
                if (rfin)
                    next_state = ACTIVE;
            end
            ACTIVE: begin
		if (~sh_en && sh_en_prev)
                    next_state = IDLE;
            end
        endcase
    end

endmodule

