// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

module OneBitFullAdder_tb;
	// Inputs
	reg A, B, C;
	// Outputs 
	wire S, CO;
	
	OneBitFullAdder uut (.A(A), .B(B), .C(C), .S(S), .CO(CO));
	
	initial begin
		A = 0; B = 0; C = 0;
		#10 A = 1; B = 0; C = 0;
		#10 A = 0; B = 1; C = 0;
		#10 A = 1; B = 1; C = 0;
		#10 A = 0; B = 0; C = 1;
		#10 A = 1; B = 0; C = 1;
		#10 A = 0; B = 1; C = 1;
		#10 A = 1; B = 1; C = 1;
		#10 $finish;
	end
endmodule