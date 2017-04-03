`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:40 03/02/2017 
// Design Name: 
// Module Name:    mux_2_1 
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
module mux_2_1 #(parameter regwidth = 32, width = 32)
(input sel,
 input [regwidth-1:0] a,
 input [width-1:0] b,
 output [width-1:0] m_out);
 
assign m_out = sel ? a : b;
endmodule
