`include "H:/Documents/CREA/FPGA/Pipeline-IntMul/PipeIntMul_sim/source/modelsim/PipelineReg.v"
`include "H:/Documents/CREA/FPGA/Pipeline-IntMul/PipeIntMul_sim/source/modelsim/IterIntMul.v"

module PipeIntMul_datapath(
	input [31:0] intA,
	input [31:0] intB,
	output [63:0] longP,
	input clk,
	input reset,
	
	input reg_en_MF,
	input reg_en_C0,
	input reg_en_C1,
	input reg_en_C2,
	input reg_en_C3,
	
	input val_op_C0,
	input val_op_C1,
	input val_op_C2,
	input val_op_C3,

	output commit_C0,
	output commit_C1,
	output commit_C2,
	output commit_C3
);
	
	wire [31:0] B_MF;
	wire [7:0] A3_MF;
	wire [7:0] A2_MF;
	wire [7:0] A1_MF;
	wire [7:0] A0_MF;
	assign {A3_MF,A2_MF,A1_MF,A0_MF} = intA;
	assign B_MF = intB;
	
	wire [31:0] B_C0;
	wire [7:0] A3_C0;
	wire [7:0] A2_C0;
	wire [7:0] A1_C0;
	wire [7:0] A0_C0;
	wire [39:0] P0_C0;
	
	wire [31:0] B_C1;
	wire [7:0] A3_C1;
	wire [7:0] A2_C1;
	wire [7:0] A1_C1;
	wire [39:0] P1_C1;
	wire [39:0] P0_C1;
	
	wire [31:0] B_C2;
	wire [7:0] A3_C2;
	wire [7:0] A2_C2;
	wire [39:0] P2_C2;
	wire [39:0] P1_C2;
	wire [39:0] P0_C2;
	
	wire [31:0] B_C3;
	wire [7:0] A3_C3;
	wire [39:0] P3_C3;
	wire [39:0] P2_C3;
	wire [39:0] P1_C3;
	wire [39:0] P0_C3;
	
	wire [39:0] P3_MP;
	wire [39:0] P2_MP;
	wire [39:0] P1_MP;
	wire [39:0] P0_MP;
	
	//-------------------------------------
	//  stage MF
	//-------------------------------------
	
	PipelineReg8 A3_MF_REG (
	.d(A3_MF),
	.q(A3_C0),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_MF)
	);
	PipelineReg8 A2_MF_REG (
	.d(A2_MF),
	.q(A2_C0),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_MF)
	);
	PipelineReg8 A1_MF_REG (
	.d(A1_MF),
	.q(A1_C0),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_MF)
	);
	PipelineReg8 A0_MF_REG (
	.d(A0_MF),
	.q(A0_C0),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_MF)
	);
	PipelineReg32 B_MF_REG (
	.d(B_MF),
	.q(B_C0),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_MF)
	);
	
	//-------------------------------------
	//  stage C0
	//-------------------------------------

	
	IterIntMul C0_MUL (
	.A(A0_C0), 
	.B(B_C0), 
	.P(P0_C0), 
	.clk(clk), 
	.reset(reset), 
	.val_op(val_op_C0), 
	.commit(commit_C0)
	);
		
	PipelineReg8 A3_C0_REG (
	.d(A3_C0),
	.q(A3_C1),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C0)
	);
	PipelineReg8 A2_C0_REG (
	.d(A2_C0),
	.q(A2_C1),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C0)
	);
	PipelineReg8 A1_C0_REG (
	.d(A1_C0),
	.q(A1_C1),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C0)
	);
	PipelineReg40 P0_C0_REG (
	.d(P0_C0),
	.q(P0_C1),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C0)
	);
	PipelineReg32 B_C0_REG (
	.d(B_C0),
	.q(B_C1),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C0)
	);
	
	//-------------------------------------
	//  stage C1
	//-------------------------------------
	
	
	IterIntMul C1_MUL (
	.A(A1_C1), 
	.B(B_C1), 
	.P(P1_C1), 
	.clk(clk), 
	.reset(reset), 
	.val_op(val_op_C1), 
	.commit(commit_C1)
	);
		
	PipelineReg8 A3_C1_REG (
	.d(A3_C1),
	.q(A3_C2),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C1)
	);
	PipelineReg8 A2_C1_REG (
	.d(A2_C1),
	.q(A2_C2),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C1)
	);
	PipelineReg40 P1_C1_REG (
	.d(P1_C1),
	.q(P1_C2),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C1)
	);
	PipelineReg40 P0_C1_REG (
	.d(P0_C1),
	.q(P0_C2),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C1)
	);
	PipelineReg32 B_C1_REG (
	.d(B_C1),
	.q(B_C2),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C1)
	);
	
	//-------------------------------------
	//  stage C2
	//-------------------------------------
	
	
	IterIntMul C2_MUL (
	.A(A2_C2), 
	.B(B_C2), 
	.P(P2_C2), 
	.clk(clk), 
	.reset(reset), 
	.val_op(val_op_C2), 
	.commit(commit_C2)
	);
		
	PipelineReg8 A3_C2_REG (
	.d(A3_C2),
	.q(A3_C3),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C2)
	);
	PipelineReg40 P2_C2_REG (
	.d(P2_C2),
	.q(P2_C3),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C2)
	);
	PipelineReg40 P1_C2_REG (
	.d(P1_C2),
	.q(P1_C3),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C2)
	);
	PipelineReg40 P0_C2_REG (
	.d(P0_C2),
	.q(P0_C3),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C2)
	);
	PipelineReg32 B_C2_REG (
	.d(B_C2),
	.q(B_C3),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C2)
	);
	
	//-------------------------------------
	//  stage C3
	//-------------------------------------
	
	
	IterIntMul C3_MUL (
	.A(A3_C3), 
	.B(B_C3), 
	.P(P3_C3), 
	.clk(clk), 
	.reset(reset), 
	.val_op(val_op_C3), 
	.commit(commit_C3)
	);
		
	PipelineReg40 P3_C3_REG (
	.d(P3_C3),
	.q(P3_MP),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C3)
	);
	PipelineReg40 P2_C3_REG (
	.d(P2_C3),
	.q(P2_MP),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C3)
	);
	PipelineReg40 P1_C3_REG (
	.d(P1_C3),
	.q(P1_MP),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C3)
	);
	PipelineReg40 P0_C3_REG (
	.d(P0_C3),
	.q(P0_MP),
	.clk(clk),
	.clr(reset),
	.ce(reg_en_C3)
	);
		
	//-------------------------------------
	//  stage MP
	//-------------------------------------
	
	
	reg [63:0] product;
	always @* begin
		product = {24'd0,P0_MP} + {16'd0,P1_MP,8'd0} + {8'd0,P2_MP,16'd0} + {P3_MP,24'd0};
	end
	assign longP = product;
	
endmodule
