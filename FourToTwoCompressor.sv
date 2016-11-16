module FourToTwoCompressor (
	input logic P1, P2, P3, P4, Cin,
	output logic S, C, Cout
);

logic pm0, pm1, pm2, pm3, pm4, pm5;
logic P4bar, P3bar, pm0bar, Cinbar;

not
n1 (P4bar, P4),
n2 (P2bar, P2),
n3 (pm0bar, pm0),
n4 (Cinbar, Cin);

MUX m0 (P4bar, P4, P3, pm0);
MUX m1 (P2bar, P2, P1, pm1);
MUX m2 (pm0bar, pm0, pm1, pm2);
MUX m3 (P3, P1, pm1, pm3);
MUX m4 (Cinbar, Cin, pm2, pm4);
MUX m5 (Cin, P4bar, pm2, pm5);

not
n5 (Cout, pm3),
n6 (S, pm4),
n7 (C, pm5);

endmodule
