module Half_Adder (
	input logic a,
	input logic b,
	output logic Sum,
	output logic Cout
);

	assign Sum = a ^ b;
	assign Cout = a & b;

endmodule