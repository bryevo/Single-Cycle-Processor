`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:13 03/02/2017 
// Design Name: 
// Module Name:    ProgramCounter 
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
module ProgramCounter #(parameter width=32)
(input clk, rst,
 input  [width-1:0] PC_in, 
 output reg [width-1:0] PC_out);

always @(posedge clk) begin
	if(rst) PC_out <= 0;
	else PC_out <= PC_in;
end
endmodule
