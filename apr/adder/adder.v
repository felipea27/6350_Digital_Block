module adder (
	input 		 clk, 
    input  [8:0] a,      
    input  [8:0] b,     
    output [8:0] sum,    
    output        carry   
);

    wire [8:0] sum_internal;
    wire        carry_internal;

    reg  [8:0] sum_negated;
    reg         carry_negated;

    assign {carry_internal, sum_internal} = a + b;
    assign sum  = sum_internal;
    assign carry = carry_internal;

    always @(posedge clk) begin
        sum_negated   <= ~sum_internal;
        carry_negated <= ~carry_internal;
    end

endmodule
