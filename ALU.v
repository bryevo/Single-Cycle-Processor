`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:05:59 03/03/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU #(parameter dataWidth=32)
(input [dataWidth-1:0] SrcA,
 input signed [dataWidth-1:0] SrcB,
 input [2:0] ALUCtrl,
 output reg Zero,
 output reg [31:0] HI, LO,
 output reg signed [dataWidth-1:0] ALUResult);

reg signed [31:0] hi, lo;
always @* begin
	case (ALUCtrl)
		3'b010:	ALUResult = SrcA + SrcB;				//Add
		3'b110:	ALUResult = SrcA - SrcB;				//Sub
		3'b000:	ALUResult = SrcA & SrcB;				//And
		3'b001:	ALUResult = SrcA | SrcB;				//Or
		3'b111:	ALUResult = (SrcA < SrcB) ? 1 : 0;	//Set less than
		3'b011: 	begin
			{hi, lo} = SrcA * SrcB;;			//mult
			HI = hi; LO = lo;
			ALUResult = 32'bx;
		end
		3'b101:	ALUResult = LO;			//mflo
		3'b100: 	ALUResult = HI;			//mfhi
		default: ALUResult = 32'bx;
	endcase
	Zero = (ALUResult == 0) ? 1'b1 : 1'b0;					//zero flag
end
endmodule
