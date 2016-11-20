module Booth_Algorithm (
	input logic [31:0] Multiplicand,
	input logic [31:0] Multiplier,
	input logic Sign,

	output logic [15:0] Error_Correction,
	output logic [33:0] PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, 
		PP8, PP9, PP10, PP11, PP12, PP13, PP14, PP15,
	output logic [31:0] PP16
);

	assign Error_Correction[15:0] = {
		Multiplier[31], Multiplier[29], Multiplier[27], Multiplier[25],
		Multiplier[23], Multiplier[21], Multiplier[19], Multiplier[17],
		Multiplier[15], Multiplier[13], Multiplier[11], Multiplier[9],
		Multiplier[7], Multiplier[5], Multiplier[3], Multiplier[1]
	};

	Booth_Algorithm_Norm PPG0 (.Multiplicand(Multiplicand), .Booth_R4_input({Multiplier[1:0],1'b0}), .Sign(Sign), .PP(PP0));
	Booth_Algorithm_Norm PPG1 (.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[3:1]),        .Sign(Sign), .PP(PP1));
	Booth_Algorithm_Norm PPG2 (.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[5:3]),        .Sign(Sign), .PP(PP2));
	Booth_Algorithm_Norm PPG3 (.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[7:5]),        .Sign(Sign), .PP(PP3));
	Booth_Algorithm_Norm PPG4 (.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[9:7]),        .Sign(Sign), .PP(PP4));
	Booth_Algorithm_Norm PPG5 (.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[11:9]),       .Sign(Sign), .PP(PP5));
	Booth_Algorithm_Norm PPG6 (.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[13:11]),      .Sign(Sign), .PP(PP6));
	Booth_Algorithm_Norm PPG7 (.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[15:13]),      .Sign(Sign), .PP(PP7));
	Booth_Algorithm_Norm PPG8 (.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[17:15]),      .Sign(Sign), .PP(PP8));
	Booth_Algorithm_Norm PPG9 (.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[19:17]),      .Sign(Sign), .PP(PP9));
	Booth_Algorithm_Norm PPG10(.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[21:19]),      .Sign(Sign), .PP(PP10));
	Booth_Algorithm_Norm PPG11(.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[23:21]),      .Sign(Sign), .PP(PP11));
	Booth_Algorithm_Norm PPG12(.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[25:23]),      .Sign(Sign), .PP(PP12));
	Booth_Algorithm_Norm PPG13(.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[27:25]),      .Sign(Sign), .PP(PP13));
	Booth_Algorithm_Norm PPG14(.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[29:27]),      .Sign(Sign), .PP(PP14));
	Booth_Algorithm_Norm PPG15(.Multiplicand(Multiplicand), .Booth_R4_input(Multiplier[31:29]),      .Sign(Sign), .PP(PP15));
	Booth_Algorithm_MSB  PPG16(.Multiplicand(Multiplicand), .MSB(Multiplier[31]),                    .Sign(Sign), .PP(PP16));
    

endmodule