`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:20 03/03/2017 
// Design Name: 
// Module Name:    ALU_Decoder 
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
module ALUDecoder#(parameter width = 6)
(input [width-1:0] Funct,
 input [1:0] ALUOp,
 output reg [2:0] ALUControl);

always @* begin	
	if (ALUOp == 2'b10 && Funct == 6'b100000) //R-type Add
		ALUControl = 3'b010;
		
	else if (ALUOp == 2'b10 && Funct == 6'b100010) 	//R-type sub
		ALUControl = 3'b110;
	
	else if (ALUOp == 2'b10 && Funct == 6'b100100) 	//R-type and
		ALUControl = 3'b000;
	
	else if (ALUOp == 2'b10 && Funct == 6'b100101)	//R-type or
		ALUControl = 3'b001;
		
	else if (ALUOp == 2'b10 && Funct == 6'b101010) //R-type slt
		ALUControl = 3'b111; 
	
	else if (ALUOp == 2'b00)		//lw; sw
		ALUControl = 3'b010;			//add
		
	else if (ALUOp == 2'b01)		//beq
		ALUControl = 3'b110;			//sub
	
	else if (ALUOp == 2'b10 && Funct == 6'b011000)	//R-type mult
		ALUControl = 3'b011;
	
	else if (ALUOp == 2'b10 && Funct == 6'b010010) //R-type mflo
		ALUControl = 3'b101;
		
	else if (ALUOp == 2'b10 && Funct == 6'b010000) //R-type mfhi
		ALUControl = 3'b100;
	
	else if (ALUOp == 2'b10 && Funct == 6'b001000)	//R-type jump register
		ALUControl = 3'bxxx;
	else
		ALUControl = 3'bxxx;		//else dont care
end
endmodule
