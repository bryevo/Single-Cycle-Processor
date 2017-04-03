`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:30 03/03/2017 
// Design Name: 
// Module Name:    PCJump 
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
module PCJump (input Jump,
					input [25:0] Instr,
					input [5:0] PC_Plus,
					output [31:0] PCJump);

assign PCJump = {PC_Plus, Instr};

endmodule
