`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:41 01/22/2025 
// Design Name: 
// Module Name:    FourToOneMux 
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
module FourToOneMux( input [31:0]IN1, IN2, IN3, IN4, input [3:0]sel, output reg [31:0]Out);
	always @(*) begin
		case(sel)
			4'b0001:	Out = IN1;
			4'b0010:	Out = IN2;
			4'b0100:	Out = IN3;
			4'b1000:	Out = IN4;
			default: Out = 32'b0;
		endcase
	end

endmodule
