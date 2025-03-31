`timescale 1ns/1ps
module TOP (
    input clk, rfin, rst, MOSI, SH_EN1, SH_EN2, CS, SCK, RX, //RX = 1, TX = 0
    output pkt_rec, MISO, TX_OUT
);

    // Internal signals
    wire [7:0] SPI_IN;
    wire [63:0] SHIFT_OUT;
    wire [7:0] SPI_OUT;
    wire DIN;


    //RX registers
    reg [2:0] rx_state;
    reg [3:0] counter;
    reg SPI_RDY;
    reg PKT_EN;
    reg SPI_LD;
    reg [1:0] SPI_MODE;
    reg PKT_LD;
    reg pkt_rec_prev;
   
    //TX registers 
    reg [1:0] tx_state;
    reg [3:0] counter2;
    reg [3:0] counter3;
    reg TX_EN;
    reg TX_LD;

    // RX State encoding
    localparam 
    INIT = 3'b000, LOAD = 3'b001, PKT_STORE = 3'b010,
               SPI_SHIFT = 3'b011, SPI_TRANSFER = 3'b100;
 
    // TX State encoding
    localparam
    TX_INIT = 2'b00, TX_IDLE = 2'b01, TX_RDY = 2'b10;

    // Dual Buffer & Sync
    Dual_Buf dual_buf_inst (
        .sh_en1(SH_EN1), .sh_en2(SH_EN2), .rfin(rfin),
	.clk(clk), .rst(rst), .dout(SHIFT_OUT), .pkt_rec(pkt_rec)
    );



    // Packet Register
    Pkt_reg pkt_reg_inst (
        .din(SHIFT_OUT), .pkt_rec(PKT_LD), .clk(clk),
        .en(PKT_EN), .rst(rst), .dout(SPI_IN),
	.SPI_en(SPI_LD)
    );

    // SPI Slave module
    SPI_SLAVE SPI_slave_inst (
	    .PRESETn(rst), .MOSI(MOSI), .SCK(SCK),
	    .SS(CS), .MODE(SPI_MODE), .DATA(SPI_IN),
	    .MISO(MISO), .OUT(SPI_OUT)
    );

    // TX Buffer
    TX_Buffer tx_buf_inst (
	    .clk(clk), .rst(rst), .din(SPI_OUT),
	    .dout(TX_OUT), .en(TX_EN), .load(TX_LD)
    ); 

    // State Machine
    always @(posedge clk) begin
        if (rst) begin
            
	    //RX Stuff	
	    rx_state <= INIT;
            counter <= 0;
            SPI_RDY <= 0;
	    SPI_LD <= 0;
	    PKT_EN <= 0;
	    PKT_LD <= 0;
	    pkt_rec_prev <= 0;
	    SPI_MODE <= 2'b00;

	    //TX Stuff
	    tx_state <= TX_INIT;
	    counter2 <= 0;
	    TX_EN <= 0;
	    TX_LD <= 0;

        end else if (RX) begin
	    pkt_rec_prev <= pkt_rec;
            case (rx_state)
                INIT: begin
                    counter <= 0;
                    SPI_RDY <= 0;
                    rx_state <= LOAD;
		    PKT_EN <= 0;
		    SPI_MODE <= 2'b00;
		    PKT_LD <= 0;
		    SPI_LD <= 0;
                end
        
		LOAD: begin
		    SPI_RDY <= 0;
		    SPI_LD <= 0;
		    PKT_EN <= 0;
                    counter <= 4'd8;
			if (pkt_rec_prev == 0 && pkt_rec == 1) begin //needs to be posedge of of pkt_rec
				rx_state <= PKT_STORE;
				PKT_LD <= 1;
				SPI_LD <= 1;
			end
                end

		PKT_STORE: begin
		    PKT_LD <= 0;
		    SPI_RDY <= 0;
		    PKT_EN <= 0;
		    rx_state <= SPI_SHIFT;
                end
        
		SPI_SHIFT: begin
			if (CS == 0) begin
				rx_state <= SPI_TRANSFER;
                    		SPI_RDY <= 1;
                    	end
                        if (counter == 0) 
			  	rx_state <= LOAD;
                end
        
		SPI_TRANSFER: begin
		    if (CS == 1) begin
			rx_state <= PKT_STORE;
			PKT_EN <= 1;
                    	counter <= counter - 1;
		    end
		end
	endcase
        end else begin
            case (tx_state)
                TX_INIT: begin
			counter3 <= 4'b0; // Track when transmit one byte
		        TX_EN <= 0;
			TX_LD <= 0;
			if (CS == 0) begin
				tx_state <= TX_IDLE;
		
			end
		end

		TX_IDLE: begin
			TX_EN <= 0;
			TX_LD <= 0;
			if (CS == 1) begin
				counter2 <= 0;
				TX_LD <= 1;
				tx_state <= TX_RDY;
			end
		end

		TX_RDY: begin
			TX_LD <= 0;
			if (counter3 == 4'b1000) begin
				counter3 <= 4'b0;
				tx_state <= TX_INIT;
				TX_EN <= 0;
			end
			
			else if (SH_EN1) begin
				counter3 <= counter3 + 1;
				TX_EN <= 1;
			end
			else
				TX_EN <= 0;
		end
	    endcase
	end
    end
endmodule

