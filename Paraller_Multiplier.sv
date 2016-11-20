module Paraller_Multiplier (
	input logic [31:0] Multiplier,
	input logic [31:0] Multiplicand,
	input logic Sign,
	output logic [63:0] Product,
	output logic [63:0] Product_DSP
);

	logic [33:0] PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, 
		PP8, PP9, PP10, PP11, PP12, PP13, PP14, PP15;
	logic [31:0] PP16;
	logic [15:0] Error_Correction;
	logic [63:0] C;
	logic [63:0] S;

	Booth_Algorithm booth (.Multiplier(Multiplier), .Multiplicand(Multiplicand), 
		.Sign(Sign), .Error_Correction(Error_Correction), .PP0(PP0), .PP1(PP1),
		.PP2(PP2), .PP3(PP3), .PP4(PP4), .PP5(PP5), .PP6(PP6), .PP7(PP7), .PP8(PP8),
		.PP9(PP9), .PP10(PP10), .PP11(PP11), .PP12(PP12), .PP13(PP13), .PP14(PP14),
		.PP15(PP15), .PP16(PP16));

	CompressTree compressor (.Error_Correction(Error_Correction), .PP0(PP0), .PP1(PP1),
		.PP2(PP2), .PP3(PP3), .PP4(PP4), .PP5(PP5), .PP6(PP6), .PP7(PP7), .PP8(PP8),
		.PP9(PP9), .PP10(PP10), .PP11(PP11), .PP12(PP12), .PP13(PP13), .PP14(PP14),
		.PP15(PP15), .PP16(PP16), .C(C), .S(S));


	Kogge_Stone_Adder adder (.A({C[62:0],1'b0}), .B(S[63:0]), .Ci(1'b0), .S(Product));	

	assign Product_DSP = Multiplier * Multiplicand;
endmodule