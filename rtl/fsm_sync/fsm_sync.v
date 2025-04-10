`timescale 1ns / 1ps

module fsm_sync (
    input wire clk,        // System clock
    input wire rst,        // Asynchronous reset
    input wire rfin,       // Input signal
    input wire sh_en,
    input wire fsm_rst,    // Allow sync-ing
    output reg state       // Output signal
);

    parameter IDLE = 1'b0, ACTIVE = 1'b1;
    reg next_state_pos; 
    reg state_pos;
    reg next_state_neg;
    reg state_neg;
    reg sh_en_prev;


   always @(*) begin
	state = (next_state_neg|next_state_pos);
   end

    // State Transition Logic for positive edge triggered
    always @(posedge clk) begin
        if (rst == 0)
            state_pos <= IDLE;
        else
            state_pos <= next_state_pos;
    end

    // State Transition Logic for negative edge triggered
    always @(negedge clk) begin
        if (rst == 0)
            state_neg <= IDLE;
        else
            state_neg <= next_state_neg;
    end

    always @(posedge clk) begin
	    if (rst == 0) begin
		    sh_en_prev <= 1'b0;
	    end else begin
		    sh_en_prev <= sh_en;
	    end
    end


    // Next State Logic and Timer Control
    always @(*) begin
		next_state_pos = state_pos;
        case (state_pos)
            IDLE: begin
	    	if (rfin)
		begin
			 next_state_pos = ACTIVE;
		end
            end

            ACTIVE: begin
		if (~sh_en && sh_en_prev)
                	next_state_pos = IDLE;
		else if(fsm_rst)
			next_state_pos = IDLE;
            end
        endcase
    end

    always @(*) begin
		next_state_neg = state_neg;
        case (state_neg)
            IDLE: begin
                if (rfin)
		begin
			 next_state_neg = ACTIVE;
		end
            end
            ACTIVE: begin
                if (~sh_en && sh_en_prev)
                	next_state_neg = IDLE;
		else if(fsm_rst)
			next_state_neg = IDLE; 
            end
        endcase
    end



endmodule
