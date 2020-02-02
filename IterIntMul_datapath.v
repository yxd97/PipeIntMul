module IterIntMul_datapath(
	input [31:0] opB,
	input [7:0] opA,
	output [39:0] product,
	input clk,
	input reset,
	input shiftA,
	input loadA,
	input accP,
	input clrP,
	input shiftB,
	input loadB
);
	// shift reg A (>>)
	reg [7:0] regA;
	always @(posedge clk) begin
		if (reset == 1'b1)
			regA <= 8'd0;
		else if (loadA == 1'b1)
			regA <= opA;
		else if (shiftA == 1'b1)
			regA <= regA >> 1;
		else
			regA <= regA;
	end
	
	// shift reg B (<<)
	reg [39:0] regB;
	always @(posedge clk) begin
		if (reset == 1'b1)
			regB <= 40'd0;
		else if (loadB == 1'b1)
			regB <= opB;
		else if (shiftB == 1'b1)
			regB <= regB << 1;
		else
			regB <= regB;
	end
	
	// accumulative reg P
	reg [39:0] regP;
	always @(posedge clk) begin
		if (reset == 1'b1 || clrP == 1'b1)
			regP <= 40'd0;
		else if (accP == 1'b1)
				if (regA[0] == 1'b1)
					regP <= regP + regB;
				else
					regP <= regP;
		else
			regP <= regP;
	end
	assign product = regP;
endmodule
