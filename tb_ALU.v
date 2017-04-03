`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:51:51 03/03/2017
// Design Name:   ALU
// Module Name:   C:/Users/Steven/Documents/SDSU/SDSU 2016-2017/Spring 2017/COMPE475/HW2/HW2/tb_ALU.v
// Project Name:  HW2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ALU;

	// Inputs
	reg [31:0] SrcA;
	reg [31:0] SrcB;
	reg [2:0] ALUControl;

	// Outputs
	wire Zero;
	wire [31:0] ALUResult;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.SrcA(SrcA), 
		.SrcB(SrcB), 
		.ALUControl(ALUControl), 
		.Zero(Zero), 
		.ALUResult(ALUResult)
	);

	initial begin
		// Initialize Inputs
		SrcA = 32'b00000000000000000000000000000101;
		SrcB = 32'b00000000000000000000000000001000;
		ALUControl = 3'b010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

