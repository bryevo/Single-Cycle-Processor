`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:06 03/03/2017 
// Design Name: 
// Module Name:    PCSource 
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
module PCSource(
    input Branch, Zero,
    output PCSrc
    );

assign PCSrc = Branch & Zero;

endmodule
