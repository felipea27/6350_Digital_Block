`timescale 1ns/1ps
module CONFIG #(
    parameter RESET_EXT_COUNTER = 16'd0
) (
    input  wire       clk,
    input  wire       rst,

    // Byte input stream from SPI slave
    input  wire       i_CONFIG,
    input  wire [7:0] spi_rx_data,
    input  wire       spi_rx_valid,

    // Decoded outputs
    output reg [15:0] ext_counter_value_RX,
    output reg        ext_counter_flag_RX,
    output reg [15:0] ext_counter_value_TX,
    output reg        ext_counter_flag_TX,
    output reg [1:0]  osc_freq,
    output reg [7:0]  arthur
);


// -------------------------------------------------------------------
// Opcode definitions
// ---------------------------------------------------------------------
localparam OP_EXT_COUNTER_RX   = 8'hF8; // 2 byte payload
localparam OP_EXT_COUNTER_TX   = 8'hF9; // 2 byte payload
localparam OP_OSC_FREQ      = 8'hFA; // 1 byte payload
localparam OP_ARTHUR        = 8'hFB; // 1 byte payload
localparam OP_CLR_EXT_FLAG_RX  = 8'hFC; // 0 byte payload - clear RX flag
localparam OP_CLR_EXT_FLAG_TX  = 8'hFD; // 0 byte payload - clear TX flag

// -------------------------------------------------------------------
// FSM states
// ---------------------------------------------------------------------
localparam IDLE = 2'd0,
           PAY1 = 2'd1,
           PAY2 = 2'd2;

reg [1:0] state, next_state;
reg [7:0] opcode_q;
reg [7:0] pay0;                // first payload byte for 0xFF
reg 	  i_CONFIG_sync1;
reg 	  i_CONFIG_sync2;
reg 	  spi_rx_valid_prev;

assign test_spi_rdy_edge = spi_rx_valid && !spi_rx_valid_prev;
// ---------------------------------------------------------------------
// Next state logic
// ---------------------------------------------------------------------
always @* begin
    next_state = state;
    if (i_CONFIG_sync2) begin
	    case (state)
		IDLE : if (spi_rx_valid && !spi_rx_valid_prev) begin
			    case (spi_rx_data)
				OP_EXT_COUNTER_RX: next_state = PAY2; // need 2 bytes
				OP_EXT_COUNTER_TX: next_state = PAY2; // need 2 bytes
				OP_OSC_FREQ,
				OP_ARTHUR    : next_state = PAY1;  // need 1 byte
				default      : next_state = IDLE;  // includes 0xFC & OxFD
			    endcase
			end
		PAY2 : if (spi_rx_valid && !spi_rx_valid_prev) next_state = PAY1;
		PAY1 : if (spi_rx_valid && !spi_rx_valid_prev) next_state = IDLE;
		default: next_state = IDLE;
	    endcase
    end
end

// -------------------------------------------------------------------
// Sequential part
// ---------------------------------------------------------------------
always @(posedge clk or negedge rst) begin
    if (!rst) begin
        state             <= IDLE;
        opcode_q          <= 8'd0;
        pay0              <= 8'd0;
        ext_counter_value_RX <= RESET_EXT_COUNTER;
        ext_counter_value_TX <= RESET_EXT_COUNTER;
        ext_counter_flag_RX  <= 1'b0;
        ext_counter_flag_TX  <= 1'b0;
        osc_freq          <= 2'b00;
        arthur            <= 4'b0000;
	i_CONFIG_sync1 	  <= 1'b0;
	i_CONFIG_sync2 	  <= 1'b0;
	spi_rx_valid_prev <= 1'b0;

    end else begin
        state <= next_state;
	spi_rx_valid_prev <= spi_rx_valid;
	i_CONFIG_sync1 <= i_CONFIG;
	i_CONFIG_sync2 <= i_CONFIG_sync1;
	
	if (i_CONFIG_sync2) begin
		if (spi_rx_valid && !spi_rx_valid_prev) begin
		    case (state)
			// ---------------------------------------------------
			// IDLE: opcode phase
			// -----------------------------------------------------
			IDLE: begin
			    opcode_q <= spi_rx_data;

			    case (spi_rx_data)
				OP_EXT_COUNTER_RX: ; // handled in PAY2/PAY1
				OP_EXT_COUNTER_TX: ; // handled in PAY2/PAY1
				OP_OSC_FREQ, OP_ARTHUR: ; // handled after payload
				OP_CLR_EXT_FLAG_RX: begin
				    // no payload
				    ext_counter_flag_RX <= 1'b0;
				end
				OP_CLR_EXT_FLAG_TX: begin
				    // no payload
				    ext_counter_flag_TX <= 1'b0;
				end
				default: ; // ignore
			    endcase
			end

			// -----------------------------------------------------
			// PAY2: first payload byte for 0xFF
			// -----------------------------------------------------
			PAY2: begin
			    pay0 <= spi_rx_data; // store MSB
			end

			// -----------------------------------------------------
			// PAY1: final payload byte for 1 or 2 byte commands
			// -----------------------------------------------------
			PAY1: begin
			    case (opcode_q)
				OP_EXT_COUNTER_RX: begin
				    ext_counter_value_RX <= {pay0, spi_rx_data};
				    ext_counter_flag_RX  <= 1'b1; // latch high
				end
				OP_EXT_COUNTER_TX: begin
				    ext_counter_value_TX <= {pay0, spi_rx_data};
				    ext_counter_flag_TX  <= 1'b1; // latch high
				end
				OP_OSC_FREQ: begin
				    osc_freq <= spi_rx_data[1:0];
				end
				OP_ARTHUR: begin
				    arthur <= spi_rx_data[7:0];
				end
				default: ;
			    endcase
			end
		    endcase
		end
	    end else begin
		state <= IDLE;
	    end
	end 
end

endmodule

//`default_nettype wire

