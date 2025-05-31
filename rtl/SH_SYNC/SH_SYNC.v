module SH_SYNC (
    input wire clk,
    input wire rst,
    input wire rfin,
    input wire RX,
    input wire tx_rdy,

    input wire ext_counter_flag_RX,
    input wire [13:0] ext_counter_RX, 
    input wire ext_counter_flag_TX,
    input wire [13:0] ext_counter_TX, 

    output reg sh_en,
    output reg fsm_rst,
    output reg sh_en_done
);

    // State encoding
    localparam IDLE       = 3'b000;
    localparam COLLECTING = 3'b001;
    localparam COMPUTE    = 3'b010;
    localparam GENERATE   = 3'b011;
    localparam WAIT_TXRDY = 3'b100;
    localparam SEND_TX_PULSES = 3'b101;

    localparam TIMEOUT_THRESHOLD = 14000; // 1.4 ms timeout
    localparam PULSE_INTERVAL_1MS = 9999; // 1 ms - 100ns for 1 clk cycle 
    localparam PACKET_SIZE = 24; 
    localparam PREAMBLE_SIZE = 8; 

    reg [2:0] state, next_state;

    // Internal registers
    reg [13:0] counter;
    reg [17:0] interval_sum;
    reg [3:0] pulse_count;
    reg [13:0] avg_interval;
    reg [6:0] pulse_gen_count;
    reg [13:0] timeout_counter;
    reg first_pulse_flag;
    reg [6:0] pulse_pack_count; 
    
    // Synching
    reg tx_rdy_prev;
    reg tx_rdy_p;
    reg rfin_prev, rfin_sync1, rfin_sync2, rfin_edge;

    // State transition logic
    always @(posedge clk or negedge rst) begin
        if (rst == 0) 
            state <= IDLE;
        else 
            state <= next_state;
    end

    // Next-state logic
    always @(*) begin
        case (state)
            IDLE: begin
                if (RX) 
                    next_state = (rfin_sync2 && !rfin_prev) ? COLLECTING : IDLE; // If rfinput arrives, state = collecting
                else 
                    next_state = WAIT_TXRDY;
            end

            COLLECTING: begin
                if (pulse_count == PREAMBLE_SIZE) // if PREAMBLE_SIZE # of inputs, no more preamble receiving real data
                    next_state = COMPUTE;
                else if (timeout_counter >= TIMEOUT_THRESHOLD) // TIMEOUT to go back to IDLE
                    next_state = IDLE;
                else if (!RX)			// If move to TX suddenly go to TX
		    next_state = WAIT_TXRDY;
	    	else
                    next_state = COLLECTING;	
            end

            COMPUTE: next_state = GENERATE;

            GENERATE: begin
                if (pulse_gen_count == PACKET_SIZE + 1) 
                    next_state = IDLE;
                else if (!RX)
		    next_state = WAIT_TXRDY;
    		else	    
                    next_state = GENERATE;
            end

            WAIT_TXRDY: begin
                if (tx_rdy_p) 
                    next_state = SEND_TX_PULSES;
                else if (RX)
		    next_state = IDLE;
	    	else
                    next_state = WAIT_TXRDY;
            end

            SEND_TX_PULSES: begin
                if (pulse_pack_count == PACKET_SIZE + PREAMBLE_SIZE) 
                    next_state = IDLE;
                else if (RX)
		    next_state = IDLE;
	    	else
                    next_state = SEND_TX_PULSES;
            end

            default: next_state = IDLE;
        endcase
    end
    
    always @(posedge clk or negedge rst) begin
        if (rst == 0) begin
            pulse_count <= 4'b0000;
            counter <= 14'd0;
            interval_sum <= 18'd0;
            avg_interval <= 14'd0;
            pulse_gen_count <= 7'd0;
            pulse_pack_count <= 7'd0;
            sh_en <= 0;
            timeout_counter <= 14'd0;
            first_pulse_flag <= 1;
	    fsm_rst <= 0;
	    sh_en_done <= 1;
            
 	    // Sync rst
	    rfin_sync1 <= 0;
            rfin_sync2 <= 0;
            rfin_prev <= 0;
            rfin_edge <= 0;
	    tx_rdy_prev <= 0;
	    tx_rdy_p <= 0;

        end else begin
            rfin_sync1 <= rfin;
            rfin_sync2 <= rfin_sync1;
            rfin_prev <= rfin_sync2;
	    rfin_edge <= rfin_sync2 && !rfin_prev;

	    tx_rdy_prev <= tx_rdy;
	    tx_rdy_p <= tx_rdy && !tx_rdy_prev;
            case (state)
                IDLE: begin
                    pulse_count <= 4'b0000;
                    counter <= 0;
                    interval_sum <= 0;
                    pulse_gen_count <= 0;
                    pulse_pack_count <= 0;
                    sh_en <= 0;
                    first_pulse_flag <= 1;
		    fsm_rst <= 0;
		    sh_en_done <= 1;
                end

                COLLECTING: begin
                    timeout_counter <= timeout_counter + 1;
                    counter <= counter + 1;
                    if (rfin_edge) begin
			fsm_rst <= 1;
			rfin_sync1 <= 0;
                        if (pulse_count > 0) 
                            interval_sum <= interval_sum + counter;
                        timeout_counter <= 0;
                        pulse_count <= pulse_count + 1;
                        counter <= 0;
	 	    end else begin
			fsm_rst <= 0;
		    end

		    if (timeout_counter >= TIMEOUT_THRESHOLD) begin
			fsm_rst <= 1; 
                        timeout_counter <= 0;
		    end
		end

                COMPUTE: begin
		    fsm_rst <= 0;
		    if (ext_counter_flag_RX)
			avg_interval <= ext_counter_RX;
	 	    else 
                    	avg_interval <= interval_sum / (PREAMBLE_SIZE-1);
                end

                GENERATE: begin
                    if (pulse_gen_count < PACKET_SIZE + 2) begin
                        if ((first_pulse_flag && counter == avg_interval / 2) || 
                            (!first_pulse_flag && counter == avg_interval)) begin
                            
			    sh_en <= 1;
                            counter <= 0;
                            pulse_gen_count <= pulse_gen_count + 1;
                            first_pulse_flag <= 0;

                        end else begin
                            sh_en <= 0;
                            counter <= counter + 1;
                        end
                    end else begin
                        pulse_gen_count <= 0;
                    end
                end

                WAIT_TXRDY: begin
                    sh_en <= 0; // Wait without sending pulses
		    counter <= PULSE_INTERVAL_1MS/2;
		    sh_en_done <= 0;
                end

                SEND_TX_PULSES: begin
                    if (!ext_counter_flag_TX && counter == PULSE_INTERVAL_1MS) begin
                        sh_en <= 1;
                        counter <= 0;
                        pulse_pack_count <= pulse_pack_count + 1;
                    end else if (ext_counter_flag_TX && counter == ext_counter_TX) begin
                        sh_en <= 1;
                        counter <= 0;
                        pulse_pack_count <= pulse_pack_count + 1;
                    end else begin
                        sh_en <= 0;
                        counter <= counter + 1;
                    end
                end

                default: begin
                    sh_en <= 0;
                end
            endcase
        end
    end

endmodule

