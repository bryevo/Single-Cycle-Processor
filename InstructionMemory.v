`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:21:22 03/02/2017 
// Design Name: 
// Module Name:    Instruction_Memory 
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
module InstructionMemory #(parameter width=32)
	(input [width-1:0] addr_in, 
	output reg [width-1:0] Instr);
	 
reg [width-1:0] Memory [width-1:0];
initial begin
	$readmemh("hw3_hex.txt", Memory);
end
//Read instruction from instruction memory
always @* begin
	Instr = Memory[addr_in];
end
endmodule
