`timescale 1ns/100ps

module fsm_sync (
    input wire clk,        // System clock
    input wire rst,        // Asynchronous reset
    input wire rfin,       // Input signal
    input wire sh_en,
    input wire fsm_rst,    // Allow sync-ing
    output reg rfin_sync,  // DELETE
    output reg state       // Output signal
);

parameter IDLE = 1'b0, ACTIVE = 1'b1;
reg next_state;
reg sh_en_prev;

// assign clkb = ~clk;
// State Transition Logic
always @(posedge clk or negedge clk) begin
    if (rst)
        state <= IDLE;
    else
        state <= next_state;
end

always @(posedge clk) begin
    if (rst) begin
        sh_en_prev <= 1'b0;
        rfin_sync <= 1'b0;
    end else begin
        sh_en_prev <= sh_en;
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
            else if (fsm_rst)
                next_state = IDLE;
        end
    endcase
end

endmodule

