module Dot_Operators (
	input logic Pi, Gi, Pki, Gki,
	output logic P, G
);

	Carry_Genetate CG (.Pi(Pi), .Gi(Gi), .Gki(Gki), .G(G));
	Carry_Propagation CP (.Pi(Pi), .Pki(Pki), .P(P));

endmodule