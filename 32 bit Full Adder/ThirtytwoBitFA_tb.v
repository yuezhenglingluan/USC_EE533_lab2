// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

module ThirtytwoBitFA_tb;
	//input
	reg [31:0] A, B;
	reg clk, cin;
	//output
	wire cout;
	wire [31:0] Sum;
	ThirtytwoBitFA uut (.A(A), .B(B), .clk(clk), .cin(cin), .cout(cout), .Sum(Sum));
	
	initial clk = 1'b0;
   always #50 clk = ~clk;
	
	initial begin
	A = 0; B = 0; cin = 0;
	#100 A = 32'd16; B = 32'd11; cin = 1'b1;
	#100 A = 32'd33; B = 32'd22; cin = 1'b1;
	#100 A = 32'h1234; B = 32'h4321; cin = 1'b1;
	#100 A = 32'h1234; B = 32'h4321; cin = 1'b0;
	#100 B = 32'h1234; A = 32'h4321; cin = 1'b1;
	#100 B = 32'h1234; A = 32'h4321; cin = 1'b0;
	#100 A = 32'hFFFF; B = 32'h0000; cin = 1'b1;
	#100 B = 32'hFFFF; A = 32'h0000; cin = 1'b1;
	#100 $finish;
	end
endmodule