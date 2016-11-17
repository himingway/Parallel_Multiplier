module Carry_Save_Adder(
	a, b, Cin, Sum, Cout
);

parameter bits = 4;

input logic [bits-1:0] a;
input logic [bits-1:0] b;
input logic [bits-1:0] Cin;
output logic [bits-1:0] Sum;
output logic [bits-1:0] Cout;

assign Sum = a ^ b ^ Cin;
assign Cout = (a & b) | (a & Cin) | (b & Cin);

endmodule
