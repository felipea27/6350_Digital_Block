`timescale 1ns/1ps
module TOP (
    input clk, rfin, rst, MOSI, CS, SCK, TX_BY, RX, //RX = 1, TX = 0
    output pkt_rec, MISO, TX_OUT, sh_en
);

    // Internal signals
    wire pkt_flg, byte_flg;
    wire [7:0] SPI_IN;
    wire [23:0] SHIFT_OUT; // [packet size - 1 : 0]
    wire [7:0] SPI_OUT;
    wire DIN;
    wire SH_EN;
    wire FSM_RST;
    wire TX_OUT_I;
    wire CS_sync;
    wire SH_EN_DONE;
    wire SPI_OUT_RDY;

    assign sh_en = SH_EN; //delete
    assign TX_OUT = (TX_BY | TX_OUT_I);

    //RX registers
    reg [2:0] rx_state;
    reg [3:0] counter;
    reg SPI_RDY;
    reg PKT_EN;
    reg SPI_LD;
    reg PKT_LD;
    reg PKT_RST;
    reg pkt_rec_prev;
   
    //TX registers 
    reg [1:0] tx_state;
    reg [3:0] counter3;
    reg TX_EN;
    reg TX_LD;
    reg TX_SH;

    // RX State encoding
    localparam 
    INIT = 3'b000, LOAD = 3'b001, PKT_STORE = 3'b010,
               SPI_SHIFT = 3'b011, SPI_TRANSFER = 3'b100;
 
    // TX State encoding
    localparam
    TX_INIT = 2'b00, TX_IDLE = 2'b01, TX_RDY = 2'b10;

    // Sync rfin & sh_en
    fsm_sync fsm_sync_inst (
	.clk(clk), .rst(rst), .rfin(rfin), .fsm_rst(FSM_RST),
	.sh_en(SH_EN), .state(DIN)
    );

    SH_SYNC sh_sync_inst (
	    .clk(clk), .rst(rst), .rfin(DIN),
	    .sh_en(SH_EN), .RX(RX), .tx_rdy(TX_SH),
	    .fsm_rst(FSM_RST), .sh_en_done(SH_EN_DONE)
    );

    // Shift Buffer
    Shift_Buffer shift_buf_inst (
        .din(DIN), .clk(clk), .rst(rst), .dout(SHIFT_OUT),
        .pkt_rec(pkt_rec), .en(SH_EN), .pkt_rst(PKT_RST)
    );

    // Packet Register
    Pkt_reg pkt_reg_inst (
        .din(SHIFT_OUT), .pkt_rec(PKT_LD), .clk(clk),
        .en(PKT_EN), .rst(rst), .dout(SPI_IN),
	.SPI_en(SPI_LD)
    );

    // SPI Slave module
    SPI_slave SPI_slave_inst (
	    .rst(rst), .MOSI(MOSI), .SCK(SCK),
	    .SS(CS), .CS_sync(CS_sync), .DATA(SPI_IN),
	    .MISO(MISO), .OUT(SPI_OUT), .clk(clk),
	    .SPI_OUT_RDY(SPI_OUT_RDY)
    );

    // TX Buffer
    TX_Buffer tx_buf_inst (
	    .clk(clk), .rst(rst), .din(SPI_OUT),
	    .dout(TX_OUT_I), .en(TX_EN), .load(TX_LD)
    ); 

    // State Machine
    always @(posedge clk or negedge rst) begin
        if (rst == 0) begin
            
	    //RX Stuff	
	    rx_state <= INIT;
            counter <= 0;
            SPI_RDY <= 0;
	    SPI_LD <= 0;
	    PKT_EN <= 0;
	    PKT_LD <= 0;
	    PKT_RST <= 0;
	    pkt_rec_prev <= 0;

	    //TX Stuff
	    tx_state <= TX_INIT;
	    TX_EN <= 0;
	    TX_LD <= 0;
	    TX_SH <= 0;
	    counter3 <= 0;

        end else if (RX) begin
	    pkt_rec_prev <= pkt_rec;
	    tx_state <= TX_INIT;
            case (rx_state)
                INIT: begin
                    counter <= 0;
                    SPI_RDY <= 0;
                    rx_state <= LOAD;
		    PKT_EN <= 0;
		    PKT_LD <= 0;
		    SPI_LD <= 0;
                end
        
		LOAD: begin
		    SPI_RDY <= 0;
		    SPI_LD <= 0;
		    PKT_EN <= 0;
		    PKT_RST <= 0;
                    counter <= 4'd3; // number of bytes in packet
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
		    PKT_RST <= 1;
		    rx_state <= SPI_SHIFT;
                end
        
		SPI_SHIFT: begin
			PKT_RST <= 0;
			if (CS_sync == 0) begin
				rx_state <= SPI_TRANSFER;
                    		SPI_RDY <= 1;
                    	end
                        if (counter == 0) 
			  	rx_state <= LOAD;
                end
        
		SPI_TRANSFER: begin
		    if (CS_sync == 1) begin
			rx_state <= PKT_STORE;
			PKT_EN <= 1;
                    	counter <= counter - 1;
		    end
		end
	endcase
        end else begin
	    rx_state <= INIT;
            case (tx_state)
                TX_INIT: begin
			counter3 <= 4'b0; // Track when transmit one byte
		        TX_EN <= 0;
			TX_LD <= 0;
			TX_SH <= 0;
			if (CS_sync == 0) begin
				tx_state <= TX_IDLE;
		
			end
		end

		TX_IDLE: begin
			TX_EN <= 0;
			TX_LD <= 0;
			TX_SH <= 0;
			if (SPI_OUT_RDY == 1) begin
				TX_LD <= 1;
				tx_state <= TX_RDY;
			end
		end

		TX_RDY: begin
			TX_LD <= 0;
			TX_SH <= 1;
			if (counter3 == 4'b1000 || SH_EN_DONE) begin
				counter3 <= 4'b0;
				tx_state <= TX_INIT;
				TX_EN <= 0;
			end
			
			else if (SH_EN) begin
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

