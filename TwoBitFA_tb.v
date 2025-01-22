// Verilog Test Fixture Template

`timescale 1 ns / 1 ps

module TwoBitFA_tb;
  
	//input
	reg [1:0] A, B;
	reg cin;
	reg clk;
	//output
	wire [1:0] Sum;
	wire cout;
	
	TwoBitFA uut (.A(A), .B(B), .S(Sum), .Cin(cin), .Cout(cout), .clk(clk));
	initial clk = 1'b0;
   always #50 clk = ~clk;
	
	initial begin
		A = 2'b00; B = 2'b00; cin = 1'b0;
		#100  A = 2'b01; B = 2'b00; cin = 1'b0;
		#100  A = 2'b10; B = 2'b00; cin = 1'b0;
		#100  A = 2'b11; B = 2'b00; cin = 1'b0;
		#100  A = 2'b00; B = 2'b01; cin = 1'b0;
		#100  A = 2'b00; B = 2'b10; cin = 1'b0;
		#100  A = 2'b00; B = 2'b11; cin = 1'b0;
		#100  A = 2'b01; B = 2'b00; cin = 1'b1;
		#100  A = 2'b10; B = 2'b00; cin = 1'b1;
		#100  A = 2'b11; B = 2'b00; cin = 1'b1;
		#100  A = 2'b11; B = 2'b01; cin = 1'b1;
		#100  A = 2'b10; B = 2'b10; cin = 1'b1;
		#100  A = 2'b01; B = 2'b11; cin = 1'b1;
		#100  A = 2'b01; B = 2'b11; cin = 1'b0;
		#100  A = 2'b10; B = 2'b10; cin = 1'b0;
		#100  A = 2'b11; B = 2'b01; cin = 1'b0;
		#100  A = 2'b00; B = 2'b01; cin = 1'b0;
		#100  A = 2'b00; B = 2'b10; cin = 1'b0;
		#100  A = 2'b00; B = 2'b11; cin = 1'b0;
		#100  A = 2'b01; B = 2'b11; cin = 1'b1;
		#100  A = 2'b10; B = 2'b10; cin = 1'b1;
		#100  A = 2'b11; B = 2'b01; cin = 1'b1;
		#100  A = 2'b00; B = 2'b01; cin = 1'b1;
		#100  A = 2'b00; B = 2'b10; cin = 1'b1;
		#100  A = 2'b00; B = 2'b11; cin = 1'b1;
		#200 $finish;
	end
  endmodule