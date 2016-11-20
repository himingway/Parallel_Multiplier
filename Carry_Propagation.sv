module Carry_Propagation (
	input logic Pi, Pki,
	output logic P
);

	and (P, Pi, Pki);

endmodule