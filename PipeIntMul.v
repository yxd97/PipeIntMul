`timescale 1ns / 1ps
`include "H:/Documents/CREA/FPGA/Pipeline-IntMul/PipeIntMul_sim/source/modelsim/PipeIntMul_datapath.v"
`include "H:/Documents/CREA/FPGA/Pipeline-IntMul/PipeIntMul_sim/source/modelsim/PipeIntMul_ctrl.v"

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:21:58 01/23/2020 
// Design Name: 
// Module Name:    PipeIntMul 
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
module PipeIntMul(
	input [31:0] intA,
	input [31:0] intB,
	output [63:0] longP,
	
	input val_op,
	output commit,
  output oprand_rdy,
	
	input clk,
	input reset
    );
	 
	PipeIntMul_datapath datapath(
	.intA(intA),
	.intB(intB),
	.longP(longP),
	.clk(clk),
	.reset(reset),
	
	.reg_en_MF(reg_en_MF),
	.reg_en_C0(reg_en_C0),
	.reg_en_C1(reg_en_C1),
	.reg_en_C2(reg_en_C2),
	.reg_en_C3(reg_en_C3),
	
	.val_op_C0(val_op_C0),
	.val_op_C1(val_op_C1),
	.val_op_C2(val_op_C2),
	.val_op_C3(val_op_C3),

	.commit_C0(commit_C0),
	.commit_C1(commit_C1),
	.commit_C2(commit_C2),
	.commit_C3(commit_C3)
	);
	
	PipeIntMul_ctrl control(
	.val_op(val_op),
	.commit(commit),
  .oprand_rdy(oprand_rdy),
	.clk(clk),
	.reset(reset),
	
	.reg_en_MF(reg_en_MF),
	.reg_en_C0(reg_en_C0),
	.reg_en_C1(reg_en_C1),
	.reg_en_C2(reg_en_C2),
	.reg_en_C3(reg_en_C3),
	
	.val_op_C0(val_op_C0),
	.val_op_C1(val_op_C1),
	.val_op_C2(val_op_C2),
	.val_op_C3(val_op_C3),

	.commit_C0(commit_C0),
	.commit_C1(commit_C1),
	.commit_C2(commit_C2),
	.commit_C3(commit_C3)
	);
	

endmodule
