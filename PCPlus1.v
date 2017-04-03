`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:12 03/03/2017 
// Design Name: 
// Module Name:    PCPlus1 
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
module PCPlus1 #(parameter width=32)
(input [width-1:0] PCP,
 output [width-1:0] PCP1);

assign PCP1 = PCP + 1;

endmodule
