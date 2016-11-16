module Booth_Algorithm (
	input logic [31:0] Multiplier,
	input logic [31:0] Multiplicand,
	output logic [33:0]  PP0, PP1, PP2, PP3, PP4, PP5, PP6, PP7, 
		PP8, PP9, PP10,PP11, PP12, PP13, PP14, PP15
);

endmodule


assign raw[32:0] = (r4input[1]^r4input[0] === 0)?
    ((r4input[2]^r4input[0] === 0)?0:{mulcand[31:0], 1'b0}):
    ((sign === 0)?{1'b0, mulcand[31:0]}:{mulcand[31], mulcand[31:0]});
//r4input[1]^r4input[0] === 0)? => 000 011 100 111
//r4input[2]^r4input[0] === 0)? => 111 000 

////r4input[1]^r4input[0] === 1)? => 001 010 101 110