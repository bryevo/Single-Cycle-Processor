`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:34 03/02/2017 
// Design Name: 
// Module Name:    Control_Unit 
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
module ControlUnit #(parameter width=6)
(input [width-1:0] Op,
 output reg RegWrite, RegDst, ALUSrc, Branch, MemWrite, MemtoReg, Jump, JAL, JR,
 output reg [1:0] ALUOp);

always @* begin
	case (Op)
		6'b000000:	begin			//R-type
					RegWrite = 1;
					RegDst = 1;
					ALUSrc = 0;
					Branch = 0;
					MemWrite = 0;
					MemtoReg = 0;
					ALUOp = 2'b10;
					Jump = 0;
					JAL = 0;
					JR = 1;
		end
		6'b100011:	begin			//load word	
					RegWrite = 1;
					RegDst = 0;
					ALUSrc = 1;
					Branch = 0;
					MemWrite = 0;
					MemtoReg = 1;
					ALUOp = 2'b00;
					Jump = 0;
					JAL = 0;
					JR = 0;
					
		end	
		6'b101011:	begin				//store word
					RegWrite = 0;
					RegDst = 1'bx;	//x 0
					ALUSrc = 1;
					Branch = 0;
					MemWrite = 1;
					MemtoReg = 1'bx; //x 1
					ALUOp = 2'b00;
					Jump = 0;
					JAL = 0;
					JR = 0;
		end	
		6'b000100:	begin				//beq	
					RegWrite = 0;
					RegDst = 1'bx; //x 0
					ALUSrc = 0;
					Branch = 1;
					MemWrite = 0;
					MemtoReg = 1'bx;//x 0
					ALUOp = 2'b01;
					Jump = 0;
					JAL = 0;
					JR = 0;
		end		
		6'b001000:	begin				//addi
					RegWrite = 1;
					RegDst = 0;
					ALUSrc = 1;
					Branch = 0;
					MemWrite = 0;
					MemtoReg = 0;
					ALUOp = 2'b00;
					Jump = 0;
					JAL = 0;
					JR = 0;
		end	
		6'b000010:	begin				//jump	
					RegWrite = 0;
					RegDst = 1'bx;
					ALUSrc = 1'bx;
					Branch = 1'bx;
					MemWrite = 0;
					MemtoReg = 1'bx;
					ALUOp = 2'bxx;
					Jump = 1;
					JAL = 0;
					JR = 0;
		end
		6'b000011: begin		//jump and link
					RegWrite = 0;
					RegDst = 1'bx;
					ALUSrc = 1'bx;
					Branch = 1'bx;
					MemWrite = 0;
					MemtoReg = 1'bx;
					ALUOp = 2'bxx;
					Jump = 1;
					JAL = 1;
					JR = 0;
		end
		default:	begin
					RegWrite = 1'bx;
					RegDst = 1'bx;
					ALUSrc = 1'bx;
					Branch = 1'bx;
					MemWrite = 1'bx;
					MemtoReg = 1'bx;
					ALUOp = 2'bxx;
					Jump = 1'bx;
					JAL = 1'bx;
					JR = 0;
		end
	endcase
end
endmodule
