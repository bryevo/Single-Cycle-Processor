`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:36:11 03/03/2017
// Design Name:   Mux
// Module Name:   C:/Users/Steven/Documents/SDSU/SDSU 2016-2017/Spring 2017/COMPE475/HW2/HW2/tb_Mux.v
// Project Name:  HW2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Mux;

	// Inputs
	reg select;
	reg [31:0] input0;
	reg [31:0] input1;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	mux_2_1 uut (
		.select(select), 
		.input0(input0), 
		.input1(input1), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		select = 0;
		input0 = 32'b00000000000000000000000000000101;
		input1 = 5'b00101;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

