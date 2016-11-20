module Carry_Genetate (
	input logic Pi, Gi, Gki,
	output logic G
);

	logic w1;

	and (w1, Pi, Gki);

	or (G, w1, Gi);

endmodule