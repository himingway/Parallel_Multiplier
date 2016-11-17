module Full_Adder (
	input logic a,
	input logic b,
	input logic Cin,
	output logic Sum,
	output logic Cout
);

assign Sum = a ^ b ^ Cin;
assign Cout = (a & b) | (a & Cin) | (b & Cin);

endmodule