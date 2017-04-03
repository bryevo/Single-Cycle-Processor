`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:01 03/02/2017 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile #(parameter width = 5)
(input CLK, WE3, JAL,
 input [width-1:0] A1, A2, A3, 
 input [31:0] WD3, PCPlus1,
 input [31:0] HI, LO,
 output reg [31:0] RD1, RD2);

reg [31:0] RegisterFile [33:0];

always @* begin
	RegisterFile[0] = 0;
	RegisterFile[32] = HI;
	RegisterFile[33] = LO;
	RD1 = RegisterFile[A1];
	RD2 = RegisterFile[A2];
end

//write the value of WD3 into the RegisterFile at the specific address
always @(posedge CLK) begin
	if (WE3)
		RegisterFile[A3] = WD3;	
end

always @* begin
	if (JAL)
		RegisterFile[31] = PCPlus1;
end
endmodule
