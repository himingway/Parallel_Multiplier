module Sum (
	input logic Pi, Gki,
	output logic Si	
);

	logic w1;

	xor (Si, Pi, Gki);

endmodule