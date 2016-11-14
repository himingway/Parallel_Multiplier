module Booth_Algorithm (
	input logic [31:0] Multiplier,
	input logic [31:0] Multiplicand,
	output logic [63:0]  PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, 
		PP8, PP9, PP10,PP11, PP12, PP13, PP14, PP15
);

	logic [127:0] Signed_Multiplicand;
	
	Sign_Extension s1 (Multiplicand,Signed_Multiplicand);

	always_comb begin 
		case (Multiplier[1:0]) 
				2'b00 : PP0 = 64'b0;
				2'b01 : PP0 = Signed_Multiplicand;
				2'b10 : PP0 = ~(Signed_Multiplicand << 1) + 1;
				2'b11 : PP0 = (~Signed_Multiplicand)+1;
			endcase
	end
	always_comb begin 
		case (Multiplier[3:1])
				3'b000 : PP1 = 64'b0;
				3'b001 : PP1 = Signed_Multiplicand;
				3'b010 : PP1 = Signed_Multiplicand;
				3'b011 : PP1 = Signed_Multiplicand << 1;
				3'b100 : PP1 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP1 = (~Signed_Multiplicand)+1;
				3'b110 : PP1 = (~Signed_Multiplicand)+1;
				3'b111 : PP1 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[5:3])
				3'b000 : PP2 = 64'b0;
				3'b001 : PP2 = Signed_Multiplicand;
				3'b010 : PP2 = Signed_Multiplicand;
				3'b011 : PP2 = Signed_Multiplicand << 1;
				3'b100 : PP2 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP2 = (~Signed_Multiplicand)+1;
				3'b110 : PP2 = (~Signed_Multiplicand)+1;
				3'b111 : PP2 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[7:5])
				3'b000 : PP3 = 64'b0;
				3'b001 : PP3 = Signed_Multiplicand;
				3'b010 : PP3 = Signed_Multiplicand;
				3'b011 : PP3 = Signed_Multiplicand << 1;
				3'b100 : PP3 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP3 = (~Signed_Multiplicand)+1;
				3'b110 : PP3 = (~Signed_Multiplicand)+1;
				3'b111 : PP3 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[9:7])
				3'b000 : PP4 = 64'b0;
				3'b001 : PP4 = Signed_Multiplicand;
				3'b010 : PP4 = Signed_Multiplicand;
				3'b011 : PP4 = Signed_Multiplicand << 1;
				3'b100 : PP4 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP4 = (~Signed_Multiplicand)+1;
				3'b110 : PP4 = (~Signed_Multiplicand)+1;
				3'b111 : PP4 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[11:9])
				3'b000 : PP5 = 64'b0;
				3'b001 : PP5 = Signed_Multiplicand;
				3'b010 : PP5 = Signed_Multiplicand;
				3'b011 : PP5 = Signed_Multiplicand << 1;
				3'b100 : PP5 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP5 = (~Signed_Multiplicand)+1;
				3'b110 : PP5 = (~Signed_Multiplicand)+1;
				3'b111 : PP5 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[13:11])
				3'b000 : PP6 = 64'b0;
				3'b001 : PP6 = Signed_Multiplicand;
				3'b010 : PP6 = Signed_Multiplicand;
				3'b011 : PP6 = Signed_Multiplicand << 1;
				3'b100 : PP6 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP6 = (~Signed_Multiplicand)+1;
				3'b110 : PP6 = (~Signed_Multiplicand)+1;
				3'b111 : PP6 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[15:13])
				3'b000 : PP7 = 64'b0;
				3'b001 : PP7 = Signed_Multiplicand;
				3'b010 : PP7 = Signed_Multiplicand;
				3'b011 : PP7 = Signed_Multiplicand << 1;
				3'b100 : PP7 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP7 = (~Signed_Multiplicand)+1;
				3'b110 : PP7 = (~Signed_Multiplicand)+1;
				3'b111 : PP7 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[17:15])
				3'b000 : PP8 = 64'b0;
				3'b001 : PP8 = Signed_Multiplicand;
				3'b010 : PP8 = Signed_Multiplicand;
				3'b011 : PP8 = Signed_Multiplicand << 1;
				3'b100 : PP8 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP8 = (~Signed_Multiplicand)+1;
				3'b110 : PP8 = (~Signed_Multiplicand)+1;
				3'b111 : PP8 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[19:17])
				3'b000 : PP9 = 64'b0;
				3'b001 : PP9 = Signed_Multiplicand;
				3'b010 : PP9 = Signed_Multiplicand;
				3'b011 : PP9 = Signed_Multiplicand << 1;
				3'b100 : PP9 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP9 = (~Signed_Multiplicand)+1;
				3'b110 : PP9 = (~Signed_Multiplicand)+1;
				3'b111 : PP9 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[21:19])
				3'b000 : PP10 = 64'b0;
				3'b001 : PP10 = Signed_Multiplicand;
				3'b010 : PP10 = Signed_Multiplicand;
				3'b011 : PP10 = Signed_Multiplicand << 1;
				3'b100 : PP10 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP10 = (~Signed_Multiplicand)+1;
				3'b110 : PP10 = (~Signed_Multiplicand)+1;
				3'b111 : PP10 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[23:21])
				3'b000 : PP11 = 64'b0;
				3'b001 : PP11 = Signed_Multiplicand;
				3'b010 : PP11 = Signed_Multiplicand;
				3'b011 : PP11 = Signed_Multiplicand << 1;
				3'b100 : PP11 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP11 = (~Signed_Multiplicand)+1;
				3'b110 : PP11 = (~Signed_Multiplicand)+1;
				3'b111 : PP11 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[25:23])
				3'b000 : PP12 = 64'b0;
				3'b001 : PP12 = Signed_Multiplicand;
				3'b010 : PP12 = Signed_Multiplicand;
				3'b011 : PP12 = Signed_Multiplicand << 1;
				3'b100 : PP12 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP12 = (~Signed_Multiplicand)+1;
				3'b110 : PP12 = (~Signed_Multiplicand)+1;
				3'b111 : PP12 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[27:25])
				3'b000 : PP13 = 64'b0;
				3'b001 : PP13 = Signed_Multiplicand;
				3'b010 : PP13 = Signed_Multiplicand;
				3'b011 : PP13 = Signed_Multiplicand << 1;
				3'b100 : PP13 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP13 = (~Signed_Multiplicand)+1;
				3'b110 : PP13 = (~Signed_Multiplicand)+1;
				3'b111 : PP13 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[29:27])
				3'b000 : PP14 = 64'b0;
				3'b001 : PP14 = Signed_Multiplicand;
				3'b010 : PP14 = Signed_Multiplicand;
				3'b011 : PP14 = Signed_Multiplicand << 1;
				3'b100 : PP14 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP14 = (~Signed_Multiplicand)+1;
				3'b110 : PP14 = (~Signed_Multiplicand)+1;
				3'b111 : PP14 = 64'b0;
		endcase	
	end
	always_comb begin 
		case (Multiplier[31:29])
				3'b000 : PP15 = 64'b0;
				3'b001 : PP15 = Signed_Multiplicand;
				3'b010 : PP15 = Signed_Multiplicand;
				3'b011 : PP15 = Signed_Multiplicand << 1;
				3'b100 : PP15 = ~(Signed_Multiplicand << 1) + 1;
				3'b101 : PP15 = (~Signed_Multiplicand)+1;
				3'b110 : PP15 = (~Signed_Multiplicand)+1;
				3'b111 : PP15 = 64'b0;
		endcase	
	end

endmodule
