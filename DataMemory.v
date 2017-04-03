`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:55 03/03/2017 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(input clk, WE,			//WE = MemWrite
						input [31:0] A,		//ALUResult
						input [31:0] WD,		//WD = RD2 
						output reg [31:0] RD);

reg [31:0] Memory [0:31];
/*
initial 
	begin
	$readmemh("DataMemory.txt", Memory);
	end*/
	
always @(posedge clk) begin
	if (WE)		//write
		Memory[A] <= WD;
end

always @(*) begin
	RD = Memory[A];
end

endmodule


