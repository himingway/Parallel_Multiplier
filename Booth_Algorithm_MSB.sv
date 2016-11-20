module Booth_Algorithm_MSB (
	input logic [31:0] Multiplicand,
	input logic MSB,
	input logic Sign,
	output logic [31:0] PP
);

	assign pp = ((Sign == 0) && (MSB == 1))? Multiplicand : 32'b0;

endmodule