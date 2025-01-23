`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:54:28 01/23/2025 
// Design Name: 
// Module Name:    Basic_ALU_Ver 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Basic_ALU_Ver(
	input [31:0] A, B,
	output wire [31:0] Output,
	output wire cout,
	input AS, sub, Shift, shift_left, bitwiseAND, bitwiseOR
    );
	
	wire [31:0]Adder_out, shift_out, bitwiseAND_out, bitwiseOR_out;

	assign {cout, Adder_out} = sub ? (A - B) : (A + B);
	assign shift_out = shift_left ? A << 1 : A >> 1;
	assign bitwiseAND_out = A & B;
	assign bitwiseOR_out = A | B;
	
	assign Output = (AS ? Adder_out : (Shift ? shift_out : (bitwiseAND ? bitwiseAND_out :(bitwiseOR ? bitwiseOR_out : 32'b0))));
	
	

endmodule
