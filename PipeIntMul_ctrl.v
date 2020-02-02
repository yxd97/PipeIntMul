`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:48 01/23/2020 
// Design Name: 
// Module Name:    PipeIntMul_ctrl 
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
module PipeIntMul_ctrl(
	input clk,
	input reset,
	
	input val_op,
  output oprand_rdy,
	output commit,
	
	output reg_en_MF,
	output reg_en_C0,
	output reg_en_C1,
	output reg_en_C2,
	output reg_en_C3,
	
	output val_op_C0,
	output val_op_C1,
	output val_op_C2,
	output val_op_C3,
	
	input commit_C0,
	input commit_C1,
	input commit_C2,
	input commit_C3
   );
	
	//------------------------------------------------
	// stage MF
	//------------------------------------------------
	reg val_MF;
	reg stall_MF;
  //reg oprand_rdy_REG;
 
	
	// NV
	reg next_val_C0;
	always @* 
		next_val_C0 = val_MF && !(stall_MF);
	// VI
	always @(posedge clk) 
		if (reset == 1'b1)
			val_MF <= 1'b0;
		else if (stall_MF == 1'b1)
			val_MF <= val_MF;
		else if (val_op == 1'b1)
			val_MF <= 1'b1;
		else
			val_MF <= 1'b0;
	// OS
	localparam ostall_MF = 1'b0;
	// RE
	assign reg_en_MF = !(stall_MF);
  // val-rdy interface
  assign oprand_rdy = val_op && (!stall_MF);
	
	//------------------------------------------------
	// stage C0
	//------------------------------------------------
	reg val_C0;
	reg stall_C0;
	reg ostall_C0;
	// NV
	reg next_val_C1;
	always @* 
		next_val_C1 = val_C0 && !(stall_C0);
	// VI
	always @(posedge clk) 
		if (reset == 1'b1)
			val_C0 <= 1'b0;
		else if (stall_C0 == 1'b1)
			val_C0 <= val_C0;
		else
			val_C0 <= next_val_C0;
	// OS
	always @* ostall_C0 = val_C0 && !(commit_C0);
	// IFC
	assign val_op_C0 = val_C0;
	// RE
	assign reg_en_C0 = !(stall_C0);
	
	//------------------------------------------------
	// stage C1
	//------------------------------------------------
	reg val_C1;
	reg stall_C1;
	reg ostall_C1;
	// NV
	reg next_val_C2;
	always @* 
		next_val_C2 = val_C1 && !(stall_C1);
	// VI
	always @(posedge clk) 
		if (reset == 1'b1)
			val_C1 <= 1'b0;
		else if (stall_C1 == 1'b1)
			val_C1 <= val_C1;
		else
			val_C1 <= next_val_C1;
	// OS
	always @* ostall_C1 = val_C1 && !(commit_C1);
	// IFC
	assign val_op_C1 = val_C1;
	// RE
	assign reg_en_C1 = !(stall_C1);
	
	//------------------------------------------------
	// stage C2
	//------------------------------------------------
	reg val_C2;
	reg stall_C2;
	reg ostall_C2;
	// NV
	reg next_val_C3;
	always @* 
		next_val_C3 = val_C2 && !(stall_C2);
	// VI
	always @(posedge clk) 
		if (reset == 1'b1)
			val_C2 <= 1'b0;
		else if (stall_C2 == 1'b1)
			val_C2 <= val_C2;
		else
			val_C2 <= next_val_C2;
	// OS
	always @* ostall_C2 = val_C2 && !(commit_C2);
	// IFC
	assign val_op_C2 = val_C2;
	// RE
	assign reg_en_C2 = !(stall_C2);
	
	//------------------------------------------------
	// stage C3
	//------------------------------------------------
	reg val_C3;
	reg stall_C3;
	reg ostall_C3;
	// VI
	always @(posedge clk) 
		if (reset == 1'b1)
			val_C3 <= 1'b0;
		else if (stall_C3 == 1'b1)
			val_C3 <= val_C3;
		else
			val_C3 <= next_val_C3;
	// OS
	always @* ostall_C3 = val_C3 && !(commit_C3);
	// IFC
	assign val_op_C3 = val_C3;
	// RE
	assign reg_en_C3 = !(stall_C3);
	
	//------------------------------------------------
	// stage MP
	//------------------------------------------------
	reg commit_REG;
	always @(posedge clk) commit_REG <= val_C3 && commit_C3 && (!reset);
	assign commit = commit_REG;
	
	//------------------------------------------------
	// stall arbiter (scoreboard)
	//------------------------------------------------
	always @* stall_C3 = ostall_C3;
	always @* stall_C2 = ostall_C2 || ostall_C3;
	always @* stall_C1 = ostall_C1 || ostall_C2 || ostall_C3;
	always @* stall_C0 = ostall_C0 || ostall_C1 || ostall_C2 || ostall_C3;
	always @* stall_MF = ostall_MF || ostall_C0 || ostall_C1 || ostall_C2 || ostall_C3;
	


endmodule
