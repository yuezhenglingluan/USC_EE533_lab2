`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:16 01/22/2025 
// Design Name: 
// Module Name:    TwoToOneMux 
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
module TwoToOneMux( input [31:0]IN1, IN2, input sel, output reg [31:0]Output);
	always @(*) begin
		case(sel)
			1'b0:	Output = IN1;
			1'b1:	Output = IN2;
			default: Output = 32'b0;
		endcase
	end

endmodule