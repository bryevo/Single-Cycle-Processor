`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:16:31 03/05/2017 
// Design Name: 
// Module Name:    JumpRegister 
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
module JumpRegister(input JR,
						  input [5:0] Funct,
						  input [31:0] PC, RD1,
						  output [31:0] JR_out);

assign JR_out = (JR && Funct == 6'b001000) ? RD1 : PC;

endmodule
