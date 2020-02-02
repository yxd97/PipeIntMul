`include "./IterIntMul_datapath.v"
`include "./IterIntMul_ctrl.v"
module IterIntMul(
	input [7:0] A,
	input [31:0] B,
	output [39:0] P,
	input clk,
	input reset,
	input val_op,
  output commit
);
	// datapath
	IterIntMul_datapath IMULDP(
	.opB(B),
	.opA(A),
	.product(P),
	.shiftA(shiftA),
	.shiftB(shiftB),
	.accP(accP),
	.clrP(clrP),
	.loadA(loadA),
	.loadB(loadB),
	.clk(clk),
	.reset(reset)	
	);
	

	// control
	IterIntMul_ctrl IMULCT(
	.val_op(val_op),
  .commit(commit),
	.shiftA(shiftA),
	.shiftB(shiftB),
	.accP(accP),
	.clrP(clrP),
	.loadA(loadA),
	.loadB(loadB),
	.clk(clk),
	.reset(reset)
	);

endmodule
