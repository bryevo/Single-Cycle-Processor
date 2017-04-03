`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:57:03 03/03/2017
// Design Name:   ControlUnit
// Module Name:   C:/Users/Steven/Documents/SDSU/SDSU 2016-2017/Spring 2017/COMPE475/HW2/HW2/tb_ControlUnit.v
// Project Name:  HW2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ControlUnit;

	// Inputs
	reg [31:0] Instr;

	// Outputs
	wire [1:0] ALUOp;
	wire RegWrite;
	wire RegDst;
	wire AluSrc;
	wire Branch;
	wire MemWrite;
	wire MemtoReg;
	wire Jump;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.Instr(Instr), 
		.ALUOp(ALUOp), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.AluSrc(AluSrc), 
		.Branch(Branch), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.Jump(Jump)
	);

	initial begin
		// Initialize Inputs
		#10;
		Instr = 32'b00000000000000000000000000000000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

