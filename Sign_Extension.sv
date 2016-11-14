module Sign_Extension(
	input logic [127:0] x,
	output logic [127:0] sext_x
);

	
	assign sext_x [63:0] = x [63:0];
	genvar i;
	generate
		for (i=64; i<=127; i = i+1) begin:proc_Sign
			assign sext_x[i] = x [63];
		end
	endgenerate

endmodule