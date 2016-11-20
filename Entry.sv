module Entry (
	input logic Ai, Bi,
	output logic Pi, Gi	
);

	xor (Pi, Ai, Bi);
	and (Gi, Ai, Bi);

endmodule