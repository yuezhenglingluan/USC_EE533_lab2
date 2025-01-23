// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

module Basic_ALU_tb;
	//control Input
	reg AS, sub, Shift, shift_left, bytewiseAND, bytewiseOR;
	//data IO
	reg [31:0] A, B;
	wire [31:0] S;
	wire cout;
	
	Basic_ALU uut(
		.AS(AS),
		.A(A),
		.B(B),
		.Sum(S),
		.cout(cout),
		.sub(sub),
		.Shift(Shift),
		.shift_left(shift_left),
		.bitwiseAND(bytewiseAND),
		.bitwiseOR(bytewiseOR)
		);
		
	initial begin
		AS = 1; Shift = 0; shift_left = 0; bytewiseAND = 0; bytewiseOR = 0; //ALU in ADD/SUB mode
		sub = 0; //add mode
		A = 32'd22; B = 32'd33;
		#100 A = 32'd66; B = 32'd4;
		#100 sub = 1;
		A = 32'd100; B = 32'd50;
		#100 A = 32'd200; B = 32'd20;
		
		#100 AS = 0; Shift = 1; //shift right mode
		A = 32'b1111_0000_1111_1010_1111_0000_1111_1010;
		#100 shift_left = 1; //shift left mode
		A = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
		
		#100 Shift = 0; bytewiseAND = 1; //bytewiseAND mode
		A = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
		B = 32'b1010_1010_1010_1010_1010_1010_1010_1010;
		
		#100 bytewiseAND = 0; bytewiseOR = 1; //bytewiseOR mode
		A = 32'b1010_1010_1010_1010_1010_1010_1010_1010;
		B = 32'b0101_0101_0101_0101_0101_0101_0101_0101;
		#100 $stop;
	end
endmodule
