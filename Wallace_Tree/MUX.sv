module MUX (
input logic I0,
input logic I1,
input logic S,
output logic F
);

assign F = S? I1 : I0; 

endmodule