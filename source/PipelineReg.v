`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:40 01/23/2020 
// Design Name: 
// Module Name:    PipelineReg 
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
module PipelineReg8 (
	input [7:0] d,
	output[7:0] q,
	input clk,
	input clr,
	input ce
    );
	 
	reg [7:0] q_REG;
	always @(posedge clk) 
		if (clr == 1'b1)
			q_REG <= 8'd0;
		else if (ce == 1'b1)
			q_REG <= d;
		else
			q_REG <= q_REG;
	assign q = q_REG;
endmodule

module PipelineReg32 (
	input [31:0] d,
	output[31:0] q,
	input clk,
	input clr,
	input ce
    );
	 
	reg [31:0] q_REG;
	always @(posedge clk) 
		if (clr == 1'b1)
			q_REG <= 31'd0;
		else if (ce == 1'b1)
			q_REG <= d;
		else
			q_REG <= q_REG;
	assign q = q_REG;
endmodule

module PipelineReg40 (
	input [39:0] d,
	output[39:0] q,
	input clk,
	input clr,
	input ce
    );
	 
	reg [39:0] q_REG;
	always @(posedge clk) 
		if (clr == 1'b1)
			q_REG <= 39'd0;
		else if (ce == 1'b1)
			q_REG <= d;
		else
			q_REG <= q_REG;
	assign q = q_REG;
endmodule
