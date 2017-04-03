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

wire signed [31:0] PC_in, PC_out;
wire signed [31:0] Instr;		//current instruction
wire RegWrite, RegDst, ALUSrc, Branch, MemWrite, MemtoReg, Jump;
wire PCSrc;
wire signed [31:0] PCPlus1, PCBranch, branchResult;
wire signed [31:0] PCJump;
wire signed [31:0] SignImm;
wire signed [31:0] RD1, RD2;
wire [1:0] ALUOp;
wire [2:0] ALUControl;
wire signed [31:0] SrcA, SrcB;
wire Zero;
wire signed [31:0] ALUResult;
wire signed [31:0] ReadData, Result;
wire signed [4:0] WriteRegResult;
wire signed [31:0] HI, LO;

ProgramCounter pc(.clk(CLK), .rst(RST), .PC_in(PC_in), .PC_out(PC_out));
InstructionMemory instrMem (.addr_in(PC_out), .Instr(Instr));
ControlUnit cu(.Op(Instr[31:26]), .ALUOp(ALUOp), .RegDst(RegDst), .ALUSrc(ALUSrc), .Branch(Branch), .MemWrite(MemWrite), .MemtoReg(MemtoReg), .Jump(Jump), .RegWrite(RegWrite));
ALUDecoder alud(.Funct(Instr[5:0]), .ALUOp(ALUOp), .ALUControl(ALUControl));
RegisterFile rf (.CLK(CLK), .WE3(RegWrite), .A1(Instr[25:21]), .A2(Instr[20:16]), .A3(WriteRegResult), .WD3(Result), .HI(HI), .LO(LO), .RD1(RD1), .RD2(RD2));

PCJump pc_jump (.Jump(Jump), .Instr(Instr[25:0]), .PC_Plus(PCPlus1[31:26]), .PCJump(PCJump));
SignExtend se(.imm(Instr[15:0]), .SignImm(SignImm)); 
PCPlus1 pcp1(.PCP(PC_out), .PCP1(PCPlus1)); 
PCBranch pc_branch(.SignImm(SignImm), .PCPlus1(PCPlus1), .PCBranch(PCBranch));

mux_2_1 mux_srcB (.sel(ALUSrc), .b(RD2), .a(SignImm), .m_out(SrcB));		//if ALUSrc is 1, SrcB is SignImm
ALU alu (.SrcA(RD1), .SrcB(SrcB), .ALUCtrl(ALUControl), .HI(HI), .LO(LO), .Zero(Zero), .ALUResult(ALUResult));
PCSource pcsrc (.Branch(Branch), .Zero(Zero), .PCSrc(PCSrc));
DataMemory dm(.clk(CLK), .WE(MemWrite), .A(ALUResult), .WD(RD2), .RD(ReadData));
mux_2_1 mux_result (.sel(MemtoReg), .b(ALUResult), .a(ReadData), .m_out(Result));		//if MemtoReg is 1, Result is ReadData


mux_2_1 mux_branch (.sel(PCSrc), .b(PCPlus1), .a(PCBranch), .m_out(branchResult));	//if PCSrc is 1, branchResult is PCBranch 
mux_2_1 #(.regwidth(5), .width(5)) mux_write_reg(.sel(RegDst), .b(Instr[20:16]), .a(Instr[15:11]), .m_out(WriteRegResult));	//if RegDst is 1 (from Control unit), WriteRegResult is Instr[15:11]
mux_2_1 mux_jump(.sel(Jump), .b(branchResult), .a(PCJump), .m_out(PC_in));	//if Jump (from the Control unit) equals 1, PC_in is PCJump

Output answer(.x(Result), .y(WD3));
endmodule

