`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:45 03/03/2017 
// Design Name: 
// Module Name:    PCBranchAdder 
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
module PCBranch #(parameter width=32)
(input signed [width-1:0] SignImm, 
 input [width-1:0] PCPlus1,
 output signed [width-1:0] PCBranch);
	 
assign PCBranch = SignImm + PCPlus1;

endmodule
