module Booth_Algorithm_Norm (
	input logic [31:0] Multiplicand,
	input logic [2:0] Booth_R4_input,
	input logic Sign,
	output logic [33:0] PP
);

	logic [32:0] w;

	assign w[32:0] = (Booth_R4_input[1]^Booth_R4_input[0] === 0)?
	    ((Booth_R4_input[2]^Booth_R4_input[0] === 0)?0:{Multiplicand[31:0], 1'b0}):
	    ((Sign === 0)?{1'b0, Multiplicand[31:0]}:{Multiplicand[31], Multiplicand[31:0]});

	genvar i;
	generate
	  for(i = 0;i <= 32; i = i+1) begin: Proc_inverse
	  	assign PP[i] = w[i] ^ Booth_R4_input[2];
	  end
	endgenerate

	assign PP[33] = (Sign === 0)? Booth_R4_input[2]:PP[32];

endmodule