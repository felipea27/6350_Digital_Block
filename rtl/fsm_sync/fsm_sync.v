`timescale 1ns/100ps
module fsm_sync (
    input wire clk,        // System clock
    input wire rst,        // Asynchronous reset
    input wire rfin,         // Input signal
    output reg state           // Output signal
);

    parameter IDLE = 1'b0, ACTIVE = 1'b1;
    reg next_state;

    // Timer for 1 ms delay
    reg [20:0] timer;  

    // State Transition Logic
    always @(posedge clk or negedge clk) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
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
                if (timer == 20'd9999)  // 1us timer completion (for 1ns clock period)
                    next_state = IDLE;
            end
        endcase
    end

    // Timer Logic
    always @(posedge clk) begin
        if (rst)
            timer <= 0;
        else if (state == ACTIVE)
            timer <= (timer == 20'd9999) ? 0 : timer + 1;  // Increment timer
        else
            timer <= 0;
    end

endmodule

