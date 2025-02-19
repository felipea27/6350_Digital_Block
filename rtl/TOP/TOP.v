`timescale 1ns/1ps
module TOP (
    input clk, din, rst, MOSI, sh_en, CS, SCK,
    output pkt_rec, MISO
);

    // Internal signals
    wire pkt_flg, byte_flg;
    wire [7:0] SPI_IN;
    wire [63:0] SHIFT_OUT;
    wire [7:0] SPI_OUT;
   // wire SPI_buf_in;

    reg [2:0] state;
    reg [3:0] counter;
    reg SPI_RDY;
    reg SH_EN;
    reg PKT_EN;
    reg SPI_LD;
    reg [1:0] MODE;
    reg CS_prev;
    reg PKT_LD;
    reg pkt_rec_prev;
    

    // State encoding
    localparam 
    INIT = 3'b000, LOAD = 3'b001, PKT_STORE = 3'b010,
               SPI_SHIFT = 3'b011, SPI_TRANSFER = 3'b100;

    // Shift Buffer
    Shift_Buffer shift_buf_inst (
        .din(din), .clk(clk), .rst(rst), .dout(SHIFT_OUT),
        .pkt_rec(pkt_rec), .en(sh_en)
    );

    // Packet Register
    Pkt_reg pkt_reg_inst (
        .din(SHIFT_OUT), .pkt_rec(PKT_LD), .clk(clk),
        .en(PKT_EN), .rst(rst), .dout(SPI_IN),
	.SPI_en(SPI_LD)
    );

    // SPI Buffer
//    SPI_pkt spi_pkt_inst (
//        .clk(clk), .dout(SPI_IN), .din(SPI_buf_in),
//        .en(SPI_LD), .rst(rst), .byte_flg(byte_flg)
//    );

    SPI_SLAVE SPI_slave_inst (
	    .PRESETn(rst), .MOSI(MOSI), .SCK(SCK),
	    .SS(CS), .MODE(MODE), .DATA(SPI_IN),
	    .MISO(MISO), .OUT(SPI_OUT)
    );

    // State Machine
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= INIT;
            counter <= 0;
            SPI_RDY <= 0;
	    SPI_LD <= 0;
	    SH_EN <= 0;
	    PKT_EN <= 0;
	    CS_prev <= 1;
	    PKT_LD <= 0;
	    pkt_rec_prev <= 0;
        end else begin
	    CS_prev <= CS;
	    pkt_rec_prev <= pkt_rec;
            case (state)
                INIT: begin
                    counter <= 0;
                    SPI_RDY <= 0;
		    SH_EN <= 0;
                    state <= LOAD;
		    PKT_EN <= 0;
		    MODE <= 2'b00;
		    PKT_LD <= 0;
		    SPI_LD <= 0;
                end
        
		LOAD: begin
		    SPI_RDY <= 0;
		    SPI_LD <= 0;
		    PKT_EN <= 0;
                    counter <= 4'd8;
		//    if (sh_en) SH_EN <= 1;
		//    else SH_EN <= 0;
			if (pkt_rec_prev == 0 && pkt_rec == 1) begin //needs to be posedge of of pkt_rec
				state <= PKT_STORE;
				PKT_LD <= 1;
				SPI_LD <= 1;
			end
                end

		PKT_STORE: begin
		    PKT_LD <= 0;
		    SPI_RDY <= 0;
		    PKT_EN <= 0;
		    state <= SPI_SHIFT;
                end
        
		SPI_SHIFT: begin
			if (CS == 0) begin
				state <= SPI_TRANSFER;
                    		SPI_RDY <= 1;
                    	end
                end
        
		SPI_TRANSFER: begin
                    if (counter == 0) state <= LOAD;
		    if (CS == 1) begin
			state <= PKT_STORE;
			PKT_EN <= 1;
                    	counter <= counter - 1;
			end
		end
	endcase
        end
    end
endmodule

