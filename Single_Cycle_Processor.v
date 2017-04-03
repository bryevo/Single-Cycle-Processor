`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:10:09 03/02/2017 
// Design Name: 
// Module Name:    Single_Cycle_Processor 
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
module Single_Cycle_Processor(input CLK, RST,
										output signed [31:0] WD3);

wire [31:0] PC_in, PC_out;
wire [31:0] Instr;
wire RegWrite, RegDst, ALUSrc, Branch, MemWrite, MemtoReg, Jump, JAL, JR;
wire PCSrc;
wire [31:0] PCPlus1, PCBranch, branchResult, JumpResult;
wire [31:0] PCJump;
wire signed [31:0] SignImm;
wire [31:0] RD1, RD2;
wire [1:0] ALUOp;
wire [2:0] ALUControl;
wire [31:0] SrcA;
wire signed [31:0] SrcB;
wire Zero;
wire signed [31:0] ALUResult;
wire [31:0] ReadData, Result;
wire [4:0] WriteRegResult;
wire [31:0] HI, LO;

/////////////////////////////Program Counter////////////////////////////////////
ProgramCounter pc(.clk(CLK), .rst(RST), .PC_in(PC_in), .PC_out(PC_out));
////////////////////////////PC Plus 1//////////////////////////////////////////////
PCPlus1 pcp1(.PCP(PC_out), .PCP1(PCPlus1)); 
/////////////////////////////Instruction Memory/////////////////////////////////
InstructionMemory instrMem (.addr_in(PC_out), .Instr(Instr));
///////////////////////////////Control Unit///////////////////////////////////////////
ControlUnit cu(.Op(Instr[31:26]), .ALUOp(ALUOp), .RegDst(RegDst), .ALUSrc(ALUSrc), .Branch(Branch), .MemWrite(MemWrite), .MemtoReg(MemtoReg), .Jump(Jump), .JAL(JAL), .JR(JR), .RegWrite(RegWrite));
////////////////////////////////ALU Decoder/////////////////////////////////////////////
ALUDecoder alud(.Funct(Instr[5:0]), .ALUOp(ALUOp), .ALUControl(ALUControl));
//////////////////////////////////Write Reg Mux for Register file//////////////////////////////////////
mux_2_1 #(.regwidth(5), .width(5)) mux_write_reg(.sel(RegDst), .b(Instr[20:16]), .a(Instr[15:11]), .m_out(WriteRegResult));	//if RegDst is 1 (from Control unit), WriteRegResult is Instr[15:11]
/////////////////////////////////Register file/////////////////////////////////////
RegisterFile rf (.CLK(CLK), .WE3(RegWrite), .A1(Instr[25:21]), .A2(Instr[20:16]), .A3(WriteRegResult), .PCPlus1(PCPlus1), .JAL(JAL), .WD3(Result), .HI(HI), .LO(LO), .RD1(RD1), .RD2(RD2));
/////////////////////////////PC Jump/////////////////////////////////////////
PCJump pc_jump (.Jump(Jump), .Instr(Instr[25:0]), .PC_Plus(PCPlus1[31:26]), .PCJump(PCJump));
///////////////////////////////Sign Extend//////////////////////////
SignExtend se(.imm(Instr[15:0]), .SignImm(SignImm)); 
///////////////////////////////PC Branch adder///////////////////////////////////////
PCBranch pc_branch(.SignImm(SignImm), .PCPlus1(PCPlus1), .PCBranch(PCBranch));
///////////////////////////////////////SrcB mux for ALU/////////////////////////
mux_2_1 mux_srcB (.sel(ALUSrc), .b(RD2), .a(SignImm), .m_out(SrcB));
/////////////////////////////////ALU//////////////////////////////////////////
ALU alu (.SrcA(RD1), .SrcB(SrcB), .ALUCtrl(ALUControl), .HI(HI), .LO(LO), .Zero(Zero), .ALUResult(ALUResult));
/////////////////////////////PCSrc AND Gate//////////////////////////////////
PCSource pcsrc (.Branch(Branch), .Zero(Zero), .PCSrc(PCSrc));
////////////////////////////////Data Memory///////////////////////////////////
DataMemory dm(.clk(CLK), .WE(MemWrite), .A(ALUResult), .WD(RD2), .RD(ReadData));
//////////////////////////////Result Mux////////////////////////////////////////
mux_2_1 mux_result (.sel(MemtoReg), .b(ALUResult), .a(ReadData), .m_out(Result));		//if MemtoReg is 1, Result is ReadData
////////////////////////////Branch Mux for PC/////////////////////////////////////////
mux_2_1 mux_branch (.sel(PCSrc), .b(PCPlus1), .a(PCBranch), .m_out(branchResult));	//if PCSrc is 1, branchResult is PCBranch 
////////////////////////////Jump Mux for PC/////////
mux_2_1 mux_jump(.sel(Jump), .b(branchResult), .a(PCJump), .m_out(JumpResult));	//if Jump (from the Control unit) equals 1, PC_in is PCJump
/////////////////////////////Jump Register Mux for PC///////////////////////////
JumpRegister mux_jr (.JR(JR), .Funct(Instr[5:0]), .RD1(RD1), .PC(JumpResult), .JR_out(PC_in));
//////////////////////Output/////////////////////////////////////////
Output answer(.x(Result), .y(WD3));
endmodule

