// Verilog Test Fixture Template

`timescale 1 ns / 1 ps

//`include "TwoBitFA_NoDFFonCINandCOUT.vf"
///`include "TWOBitFA_NoDFFonCIN.vf"
//`include "TWOBitFA_NoDFFonCout.vf"
//`include "EightBitFA.vf"
module EightBitFA_tb;
	reg clk;
	reg [7:0]A,B;
	wire [7:0]Sum;
	reg Cin;
	wire Cout;
	

	
	EightBitFA uut (.A(A), .B(B), .S(Sum), .clk(clk), .cin(Cin), .cout(Cout));
	
	initial clk = 1'b0;
   always #50 clk = ~clk;
	initial begin
		A = 8'd0; B = 8'd0; Cin = 1'b0;
		#100 A = 8'd0; B = 8'd1; Cin = 1'b0;
		#100 A = 8'd1; B = 8'd2; Cin = 1'b0;
		#100 A = 8'd3; B = 8'd4; Cin = 1'b0;
		#100 A = 8'd5; B = 8'd6; Cin = 1'b0;
		#100 A = 8'd7; B = 8'd8; Cin = 1'b0;
		#100 A = 8'd9; B = 8'd10; Cin = 1'b0;
		#100 A = 8'd255; B = 8'd1; Cin = 1'b0;
		#100 A = 8'd1; B = 8'd255; Cin = 1'b0;
		#100 A = 8'd127; B = 8'd128; Cin = 1'b0;
		#100 A = 8'd128; B = 8'd127; Cin = 1'b0;
		
		#100 A = 8'd0; B = 8'd0; Cin = 1'b1;
		#100 A = 8'd0; B = 8'd1; Cin = 1'b1;
		#100 A = 8'd1; B = 8'd2; Cin = 1'b1;
		#100 A = 8'd3; B = 8'd4; Cin = 1'b1;
		#100 A = 8'd5; B = 8'd6; Cin = 1'b1;
		#100 A = 8'd7; B = 8'd8; Cin = 1'b1;
		#100 A = 8'd9; B = 8'd10; Cin = 1'b1;
		#100 A = 8'd254; B = 8'd1; Cin = 1'b1;
		#100 A = 8'd1; B = 8'd254; Cin = 1'b1;
		#100 A = 8'd126; B = 8'd127; Cin = 1'b1;
		#100 A = 8'd128; B = 8'd126; Cin = 1'b1;
		#100 A = 8'd127; B = 8'd127; Cin = 1'b1;
		
		#500 $finish;
	end
	// initial $monitor($time,"%d %d %d %b %b %b",A,B,Sum,Cin,Cout, clk);
  endmodule