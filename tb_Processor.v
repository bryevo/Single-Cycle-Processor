`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:38:51 03/03/2017
// Design Name:   Singe_Cycle_Processor
// Module Name:   C:/Users/Brye/Desktop/COMPE475/Single_Cycle_Processor/tb_processor.v
// Project Name:  Single_Cycle_Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_level_processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Processor;

	// Inputs
	reg CLK;
	reg RST;

	// Outputs
	wire signed [31:0] WD3;

	// Instantiate the Unit Under Test (UUT)
	Single_Cycle_Processor uut (
		.CLK(CLK), 
		.RST(RST), 
		.WD3(WD3)
	);

	initial begin CLK = 0; RST = 1; end
	
	always begin
		#10; CLK = ~CLK;
	end
		
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, uut);
    end		
	 
	initial begin
		@(posedge CLK)
		RST = 0;
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK)		
		@(posedge CLK) 	//18
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK)		
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK) 
		@(posedge CLK)
		@(posedge CLK) 
		@(posedge CLK)
			$finish;
       end 
endmodule

